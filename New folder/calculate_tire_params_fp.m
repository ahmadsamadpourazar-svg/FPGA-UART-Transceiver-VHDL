



function [wheel_diameter_fp, circumference_fp] = calculate_tire_params_fp(width_mm, aspect_ratio, rim_diameter_inch)
    % Define parameters for tire calculation
    inch_to_mm = 25.4;

    % Fixed-Point settings
    word_length = 32;
    fraction_length = 20;
    signed_mode = true; % Use true for signed numbers, false for unsigned

    % Define fimath for precise control over rounding and overflow
    % RoundingMethod: 'Floor' rounds down, 'Round' rounds to nearest, 'Convergent' rounds to nearest even.
    % OverflowAction: 'Wrap' wraps around (like modular arithmetic), 'Saturate' saturates at max/min values.
    fm = fimath('RoundingMethod', 'Floor', 'OverflowAction', 'Wrap');

    % Convert constant and input values to fixed-point using the defined fimath
    width_fp = fi(width_mm, signed_mode, word_length, fraction_length, fm);
    aspect_ratio_fp = fi(aspect_ratio, signed_mode, word_length, fraction_length, fm);
    rim_diameter_inch_fp = fi(rim_diameter_inch, signed_mode, word_length, fraction_length, fm);
    inch_to_mm_fp = fi(inch_to_mm, signed_mode, word_length, fraction_length, fm);
    hundred_fp = fi(100, signed_mode, word_length, fraction_length, fm);
    two_fp = fi(2, signed_mode, word_length, fraction_length, fm);
    % For critical applications, define pi with specific fixed-point precision.
    % Here, we use a high-precision literal for pi.
    pi_fp = fi(3.141592653589793, signed_mode, word_length, fraction_length, fm);

    % --- Calculations ---

    % 1. Calculate sidewall height (H) in mm
    % H = (Width / 100) * AspectRatio
    height_fp = fi( (width_fp / hundred_fp) * aspect_ratio_fp, signed_mode, word_length, fraction_length, fm);

    % 2. Convert rim diameter to millimeters
    rim_diameter_mm_fp = fi(rim_diameter_inch_fp * inch_to_mm_fp, signed_mode, word_length, fraction_length, fm);

    % 3. Calculate total wheel diameter (D_wheel) in mm
    % D_wheel = RimDiameter_mm + 2 * SidewallHeight
    multiplication_result_fp = fi(two_fp * height_fp, signed_mode, word_length, fraction_length, fm);
    wheel_diameter_calc_fp = fi(rim_diameter_mm_fp + multiplication_result_fp, signed_mode, word_length, fraction_length, fm);
    wheel_diameter_fp = wheel_diameter_calc_fp; % Assign to output

    % 4. Calculate wheel circumference
    % Circumference = pi * D_wheel
    circumference_calc_fp = fi(pi_fp * wheel_diameter_fp, signed_mode, word_length, fraction_length, fm);
    circumference_fp = circumference_calc_fp; % Assign to output

    % Optional: Display results in double precision for verification (will not be in generated HDL)
    % wheel_diameter_fp_double = double(wheel_diameter_fp);
    % circumference_fp_double = double(circumference_fp);
    % fprintf('Total wheel diameter (Fixed-Point): %.4f mm\n', wheel_diameter_fp_double);
    % fprintf('Wheel circumference (Fixed-Point): %.4f mm\n', circumference_fp_double);

    % Note: Error calculation is removed as it's for verification in MATLAB, not part of HDL logic.
end