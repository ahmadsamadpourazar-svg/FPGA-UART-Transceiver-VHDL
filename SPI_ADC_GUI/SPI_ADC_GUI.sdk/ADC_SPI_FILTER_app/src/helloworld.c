
#include <stdio.h>
#include <stdint.h>
#include <math.h>

#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xuartlite.h"
#include "xspi.h"
#include "sleep.h"

/* ===================== User Config ===================== */

#define MA_WINDOW_SIZE     10

/*
 * Sample rate فرضی.
 * اگر ADC واقعی نداری یا فقط برای شبیه‌سازی/ارائه است،
 * این مقدار را 10MHz در نظر گرفتیم.
 */
#define SAMPLE_RATE_HZ     10000000.0f

/*
 * LPF cutoff frequency = 1 MHz
 */
#define LPF_CUTOFF_HZ      1000000.0f

/*
 * تعداد نمونه‌هایی که در BRAM ذخیره می‌کنیم.
 * اگر BRAM کوچک است این را کمتر کن.
 */
#define MAX_SAMPLES        1024

/*
 * ADC Resolution
 * فرض: ADC دوازده‌بیتی.
 */
#define ADC_BITS           12
#define ADC_MAX_VALUE      ((1 << ADC_BITS) - 1)

/*
 * ولتاژ مرجع ADC
 */
#define VREF               3.3f

/* ===================== Device IDs ===================== */

#define UART_DEVICE_ID     XPAR_AXI_UARTLITE_0_DEVICE_ID
#define SPI_DEVICE_ID      XPAR_AXI_QUAD_SPI_0_DEVICE_ID

#define BRAM_BASEADDR      XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR

/* ===================== Global Objects ===================== */

XUartLite UartLite;
XSpi Spi;

/* ===================== Moving Average Variables ===================== */

float ma_buffer[MA_WINDOW_SIZE];
int ma_index = 0;
int ma_count = 0;
float ma_sum = 0.0f;

/* ===================== LPF Variable ===================== */

float lpf_prev = 0.0f;

/* ===================== Function Prototypes ===================== */

int init_uart(void);
int init_spi(void);
uint16_t read_adc_spi(void);
float adc_to_voltage(uint16_t adc_raw);
float moving_average(float x);
float low_pass_filter(float x);
void uart_send_string(const char *str);
void store_to_bram(uint32_t index, float raw, float ma, float lpf);
uint32_t float_to_u32_scaled(float value);

/* ===================== Main ===================== */

int main(void)
{
    int status;
    uint32_t sample_index = 0;

    xil_printf("\r\n====================================\r\n");
    xil_printf(" MicroBlaze ADC Filter System Start\r\n");
    xil_printf(" Output format: raw,ma,lpf\r\n");
    xil_printf("====================================\r\n");

    status = init_uart();
    if (status != XST_SUCCESS) {
        xil_printf("UART init failed\r\n");
        return XST_FAILURE;
    }

    status = init_spi();
    if (status != XST_SUCCESS) {
        xil_printf("SPI init failed\r\n");
        return XST_FAILURE;
    }

    /*
     * CSV Header
     */
    uart_send_string("raw,ma,lpf\r\n");

    while (1)
    {
        uint16_t adc_raw;
        float raw_voltage;
        float ma_value;
        float lpf_value;

        char tx_buffer[128];

        /*
         * Read ADC sample via SPI
         */
        adc_raw = read_adc_spi();

        /*
         * Convert raw ADC code to voltage
         */
        raw_voltage = adc_to_voltage(adc_raw);

        /*
         * Apply filters
         */
        ma_value = moving_average(raw_voltage);
        lpf_value = low_pass_filter(raw_voltage);

        /*
         * Store in BRAM
         */
        if (sample_index < MAX_SAMPLES) {
            store_to_bram(sample_index, raw_voltage, ma_value, lpf_value);
        }

        /*
         * Send CSV over UART
         */
        snprintf(tx_buffer, sizeof(tx_buffer), "%.4f,%.4f,%.4f\r\n",
                 raw_voltage, ma_value, lpf_value);

        uart_send_string(tx_buffer);

        sample_index++;

        if (sample_index >= MAX_SAMPLES) {
            sample_index = 0;
        }

        /*
         * Sampling delay.
         * برای تست با UART سرعت را کم می‌کنیم.
         * اگر مقدار خیلی کم باشد، MATLAB نمی‌تواند راحت بخواند.
         */
        usleep(1000);   // 1 ms delay = حدود 1000 sample/sec
    }

    return 0;
}

/* ===================== UART Init ===================== */

int init_uart(void)
{
    int status;

    status = XUartLite_Initialize(&UartLite, UART_DEVICE_ID);
    if (status != XST_SUCCESS) {
        return XST_FAILURE;
    }
    status = XUartLite_SelfTest(&UartLite);
        if (status != XST_SUCCESS) {
            return XST_FAILURE;
        }

        return XST_SUCCESS;
    }

    /* ===================== SPI Init ===================== */

    int init_spi(void)
    {
        int status;

        status = XSpi_Initialize(&Spi, SPI_DEVICE_ID);
        if (status != XST_SUCCESS) {
            xil_printf("XSpi_Initialize failed\r\n");
            return XST_FAILURE;
        }

        status = XSpi_SelfTest(&Spi);
        if (status != XST_SUCCESS) {
            xil_printf("XSpi_SelfTest failed\r\n");
            return XST_FAILURE;
        }

        /*
         * SPI Master Mode
         */
        status = XSpi_SetOptions(&Spi, XSP_MASTER_OPTION);
        if (status != XST_SUCCESS) {
            xil_printf("XSpi_SetOptions failed\r\n");
            return XST_FAILURE;
        }

        XSpi_Start(&Spi);

        /*
         * Disable global interrupt for polled mode
         */
        XSpi_IntrGlobalDisable(&Spi);

        /*
         * Select slave 0
         */
        XSpi_SetSlaveSelect(&Spi, 0x01);

        return XST_SUCCESS;
    }

    /* ===================== Read ADC via SPI ===================== */

    /*
     * این تابع برای ADCهای SPI عمومی نوشته شده.
     * برای ADC واقعی ممکن است لازم باشد ترتیب بیت‌ها را مطابق دیتاشیت تغییر بدهی.
     *
     * فرض اینجا:
     * - ADC دوازده‌بیتی است.
     * - دو بایت از SPI خوانده می‌شود.
     * - خروجی 12 بیت پایین‌تر استفاده می‌شود.
     */
    uint16_t read_adc_spi(void)
    {
        uint8_t tx_buf[2];
        uint8_t rx_buf[2];
        uint16_t adc_value;

        tx_buf[0] = 0x00;
        tx_buf[1] = 0x00;

        rx_buf[0] = 0x00;
        rx_buf[1] = 0x00;

        XSpi_Transfer(&Spi, tx_buf, rx_buf, 2);

        adc_value = ((uint16_t)rx_buf[0] << 8) | rx_buf[1];

        /*
         * فقط 12 بیت نگه داشته می‌شود.
         */
        adc_value = adc_value & 0x0FFF;

        return adc_value;
    }

    /* ===================== ADC Code to Voltage ===================== */

    float adc_to_voltage(uint16_t adc_raw)
    {
        return ((float)adc_raw * VREF) / ((float)ADC_MAX_VALUE);
    }

    /* ===================== Moving Average Filter ===================== */

    float moving_average(float x)
    {
        ma_sum -= ma_buffer[ma_index];
        ma_buffer[ma_index] = x;
        ma_sum += x;

        ma_index++;
        if (ma_index >= MA_WINDOW_SIZE) {
            ma_index = 0;
        }

        if (ma_count < MA_WINDOW_SIZE) {
            ma_count++;
        }

        return ma_sum / (float)ma_count;
    }

    /* ===================== First Order Low Pass Filter ===================== */

    /*
     * LPF formula:
     *
     * y[n] = y[n-1] + alpha * (x[n] - y[n-1])
     *
     * alpha = dt / (RC + dt)
     * RC = 1 / (2*pi*fc)
     * dt = 1 / fs
     */
    float low_pass_filter(float x)
    {
        float dt = 1.0f / SAMPLE_RATE_HZ;
        float rc = 1.0f / (2.0f * 3.14159265f * LPF_CUTOFF_HZ);
        float alpha = dt / (rc + dt);

        lpf_prev = lpf_prev + alpha * (x - lpf_prev);

        return lpf_prev;
    }

    /* ===================== UART Send String ===================== */

    void uart_send_string(const char *str)
    {
        while (*str) {
            XUartLite_SendByte(XPAR_AXI_UARTLITE_0_BASEADDR, *str);
            str++;
        }
    }

    /* ===================== Store to BRAM ===================== */

    /*
     * در هر sample سه مقدار ذخیره می‌کنیم:
     *
     * index 0: raw
     * index 1: ma
     * index 2: lpf
     *
     * هرکدام 32-bit scaled integer هستند.
     */
    void store_to_bram(uint32_t index, float raw, float ma, float lpf)
    {
        uint32_t base_offset;
        uint32_t raw_u32;
        uint32_t ma_u32;
        uint32_t lpf_u32;

        raw_u32 = float_to_u32_scaled(raw);
        ma_u32  = float_to_u32_scaled(ma);
        lpf_u32 = float_to_u32_scaled(lpf);

        /*
         * هر sample سه word دارد.
         * هر word چهار بایت است.
         */
        base_offset = index * 3 * 4;

        Xil_Out32(BRAM_BASEADDR + base_offset + 0, raw_u32);
        Xil_Out32(BRAM_BASEADDR + base_offset + 4, ma_u32);
        Xil_Out32(BRAM_BASEADDR + base_offset + 8, lpf_u32);
    }

    /* ===================== Float to 32-bit Scaled Integer ===================== */

    /*
     * برای ذخیره در BRAM، float را ضربدر 10000 می‌کنیم.
     * مثلاً:
     * 1.2345V -> 12345
     */
    uint32_t float_to_u32_scaled(float value)
    {
        if (value < 0.0f) {
            value = 0.0f;
        }

        return (uint32_t)(value * 10000.0f);
    }
