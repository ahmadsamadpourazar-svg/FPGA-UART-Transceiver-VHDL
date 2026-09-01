library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_7seg_controller_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 5
	);
	port (
		-- Users to add ports here
        seg : out std_logic_vector( 6 downto 0);
        an  : out std_logic_vector( 3 downto 0);
        dp  : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end AXI_7seg_controller_v1_0;

architecture arch_imp of AXI_7seg_controller_v1_0 is

	-- component declaration
	component AXI_7seg_controller_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 5
		);
		port (
		
		digit0 : std_logic_vector(31 downto 0);
		digit1 : std_logic_vector(31 downto 0);
		digit2 : std_logic_vector(31 downto 0);
		digit3 : std_logic_vector(31 downto 0);
		dots   : std_logic_vector(31 downto 0);
		
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component AXI_7seg_controller_v1_0_S00_AXI;
    
    component refresh_sevenseg is
                generic (
                    CLK_FREQ_HZ : integer := 100000000;
                    REFRESH_HZ  : integer := 1000
                );
                port (
                    clk    : in std_logic;
                    resetn : in std_logic;
            
                    digit0 : in std_logic_vector(3 downto 0);
                    digit1 : in std_logic_vector(3 downto 0);
                    digit2 : in std_logic_vector(3 downto 0);
                    digit3 : in std_logic_vector(3 downto 0);
                    dots   : in std_logic_vector(3 downto 0);
            
                    seg : out std_logic_vector(6 downto 0);
                    an  : out std_logic_vector(3 downto 0);
                    dp  : out std_logic
                );
     end component;
     
    signal digit0_reg : std_logic_vector(31 downto 0);
    signal digit1_reg : std_logic_vector(31 downto 0);
    signal digit2_reg : std_logic_vector(31 downto 0);
    signal digit3_reg : std_logic_vector(31 downto 0);
    signal dots_reg   : std_logic_vector(31 downto 0);
begin

-- Instantiation of Axi Bus Interface S00_AXI
AXI_7seg_controller_v1_0_S00_AXI_inst : AXI_7seg_controller_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s00_axi_aclk,
		digit0      => digit0_reg,
		digit1      => digit1_reg,
		digit2      => digit2_reg,
		digit3      => digit3_reg,
		dots        => dots_reg,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here
   sevenseg_refresh_inst : refresh_sevenseg
    generic map (
        CLK_FREQ_HZ => 100000000,
        REFRESH_HZ  => 1000
    )
    port map (
        clk    => s00_axi_aclk,
        resetn => s00_axi_aresetn,

        digit0 => digit0_reg(3 downto 0),
        digit1 => digit1_reg(3 downto 0),
        digit2 => digit2_reg(3 downto 0),
        digit3 => digit3_reg(3 downto 0),
        dots   => dots_reg  (3 downto 0),

        seg => seg,
        an  => an,
        dp  => dp
    );
	-- User logic ends

end arch_imp;
