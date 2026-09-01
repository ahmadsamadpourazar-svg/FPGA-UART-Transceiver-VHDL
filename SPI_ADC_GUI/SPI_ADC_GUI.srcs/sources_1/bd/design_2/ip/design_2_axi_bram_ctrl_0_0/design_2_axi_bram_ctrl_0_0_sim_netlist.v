// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun 17 22:33:50 2026
// Host        : DESKTOP-4P07GVT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_2_axi_bram_ctrl_0_0 -prefix
//               design_2_axi_bram_ctrl_0_0_ design_2_axi_bram_ctrl_0_0_sim_netlist.v
// Design      : design_2_axi_bram_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_axi_bram_ctrl_0_0_SRL_FIFO
   (s_axi_awvalid_0,
    \GEN_AW_DUAL.aw_active_reg ,
    \GEN_NARROW_EN.axi_wlast_d1_reg ,
    \bvalid_cnt_reg[0] ,
    bid_gets_fifo_load,
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg ,
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ,
    axi_wr_burst_reg,
    \bvalid_cnt_reg[0]_0 ,
    Data_Exists_DFF_0,
    \Addr_Counters[3].FDRE_I_0 ,
    s_axi_aclk,
    s_axi_awvalid,
    axi_awaddr_full,
    wr_addr_sm_cs,
    Data_Exists_DFF_1,
    aw_active,
    bvalid_cnt,
    bid_gets_fifo_load_d1_reg,
    wr_data_sm_cs,
    axi_wr_burst,
    bid_gets_fifo_load_d1_reg_0,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_awready,
    last_data_ack_mod,
    \GEN_AW_DUAL.wr_addr_sm_cs_reg ,
    curr_awlen_reg_1_or_2,
    axi_awlen_pipe_1_or_2,
    bid_gets_fifo_load_d1,
    s_axi_bready,
    Data_Exists_DFF_2,
    axi_awid_pipe,
    s_axi_awid,
    \axi_bid_int_reg[0] ,
    s_axi_bid);
  output s_axi_awvalid_0;
  output \GEN_AW_DUAL.aw_active_reg ;
  output \GEN_NARROW_EN.axi_wlast_d1_reg ;
  output \bvalid_cnt_reg[0] ;
  output bid_gets_fifo_load;
  output \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg ;
  output \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ;
  output axi_wr_burst_reg;
  output \bvalid_cnt_reg[0]_0 ;
  output Data_Exists_DFF_0;
  input \Addr_Counters[3].FDRE_I_0 ;
  input s_axi_aclk;
  input s_axi_awvalid;
  input axi_awaddr_full;
  input wr_addr_sm_cs;
  input Data_Exists_DFF_1;
  input aw_active;
  input [2:0]bvalid_cnt;
  input bid_gets_fifo_load_d1_reg;
  input [2:0]wr_data_sm_cs;
  input axi_wr_burst;
  input bid_gets_fifo_load_d1_reg_0;
  input s_axi_wlast;
  input s_axi_wvalid;
  input s_axi_awready;
  input last_data_ack_mod;
  input \GEN_AW_DUAL.wr_addr_sm_cs_reg ;
  input curr_awlen_reg_1_or_2;
  input axi_awlen_pipe_1_or_2;
  input bid_gets_fifo_load_d1;
  input s_axi_bready;
  input Data_Exists_DFF_2;
  input axi_awid_pipe;
  input [0:0]s_axi_awid;
  input \axi_bid_int_reg[0] ;
  input [0:0]s_axi_bid;

  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_3_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_4_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire CI;
  wire D;
  wire Data_Exists_DFF_0;
  wire Data_Exists_DFF_1;
  wire Data_Exists_DFF_2;
  wire Data_Exists_DFF_i_2_n_0;
  wire Data_Exists_DFF_i_4_n_0;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ;
  wire \GEN_AW_DUAL.aw_active_reg ;
  wire \GEN_AW_DUAL.wr_addr_sm_cs_i_4_n_0 ;
  wire \GEN_AW_DUAL.wr_addr_sm_cs_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg ;
  wire \GEN_NARROW_EN.axi_wlast_d1_reg ;
  wire S;
  wire S0_out;
  wire S1_out;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire aw_active;
  wire axi_awaddr_full;
  wire axi_awid_pipe;
  wire axi_awlen_pipe_1_or_2;
  wire \axi_bid_int_reg[0] ;
  wire axi_wr_burst;
  wire axi_wr_burst_reg;
  wire bid_fifo_ld;
  wire bid_fifo_not_empty;
  wire bid_fifo_rd;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bid_gets_fifo_load_d1_i_5_n_0;
  wire bid_gets_fifo_load_d1_reg;
  wire bid_gets_fifo_load_d1_reg_0;
  wire [2:0]bvalid_cnt;
  wire \bvalid_cnt_reg[0] ;
  wire \bvalid_cnt_reg[0]_0 ;
  wire curr_awlen_reg_1_or_2;
  wire last_data_ack_mod;
  wire s_axi_aclk;
  wire [0:0]s_axi_awid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_awvalid_0;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire wr_addr_sm_cs;
  wire [2:0]wr_data_sm_cs;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT6 #(
    .INIT(64'h2A222A2A80888080)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(axi_wr_burst_reg),
        .I4(\bvalid_cnt_reg[0] ),
        .I5(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'h4044404055555555)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(s_axi_awvalid_0),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(axi_wr_burst_reg),
        .I4(\bvalid_cnt_reg[0] ),
        .I5(\Addr_Counters[0].MUXCY_L_I_i_4_n_0 ),
        .O(CI));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \Addr_Counters[0].MUXCY_L_I_i_3 
       (.I0(\Addr_Counters[2].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(\Addr_Counters[0].FDRE_I_n_0 ),
        .I4(s_axi_awvalid_0),
        .O(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \Addr_Counters[0].MUXCY_L_I_i_4 
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_4_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h2A222A2A80888080)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(axi_wr_burst_reg),
        .I4(\bvalid_cnt_reg[0] ),
        .I5(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(S1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h2A222A2A80888080)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(axi_wr_burst_reg),
        .I4(\bvalid_cnt_reg[0] ),
        .I5(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(S0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h2A222A2A80888080)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(axi_wr_burst_reg),
        .I4(\bvalid_cnt_reg[0] ),
        .I5(\Addr_Counters[3].FDRE_I_n_0 ),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(bid_fifo_not_empty),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'hFFFF757700005555)) 
    Data_Exists_DFF_i_1
       (.I0(s_axi_awvalid_0),
        .I1(Data_Exists_DFF_i_2_n_0),
        .I2(axi_wr_burst_reg),
        .I3(\bvalid_cnt_reg[0] ),
        .I4(Data_Exists_DFF_i_4_n_0),
        .I5(bid_fifo_not_empty),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFEAAAAAAAAAAAA)) 
    Data_Exists_DFF_i_2
       (.I0(bid_gets_fifo_load_d1),
        .I1(bvalid_cnt[0]),
        .I2(bvalid_cnt[2]),
        .I3(bvalid_cnt[1]),
        .I4(s_axi_bready),
        .I5(Data_Exists_DFF_2),
        .O(Data_Exists_DFF_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Data_Exists_DFF_i_3
       (.I0(bvalid_cnt[0]),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .O(\bvalid_cnt_reg[0] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_4
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(Data_Exists_DFF_i_4_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld),
        .Q(bid_fifo_rd));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(axi_awid_pipe),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid),
        .O(bid_fifo_ld));
  LUT6 #(
    .INIT(64'h0000FF57FFFFFFFF)) 
    \GEN_AWREADY.axi_awready_int_i_3 
       (.I0(\GEN_AW_DUAL.aw_active_reg ),
        .I1(s_axi_awvalid),
        .I2(axi_awaddr_full),
        .I3(wr_addr_sm_cs),
        .I4(\GEN_NARROW_EN.axi_wlast_d1_reg ),
        .I5(Data_Exists_DFF_1),
        .O(s_axi_awvalid_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \GEN_AW_DUAL.wr_addr_sm_cs_i_2 
       (.I0(\GEN_AW_DUAL.wr_addr_sm_cs_i_4_n_0 ),
        .I1(last_data_ack_mod),
        .I2(axi_awaddr_full),
        .I3(\GEN_AW_DUAL.wr_addr_sm_cs_reg ),
        .I4(curr_awlen_reg_1_or_2),
        .I5(axi_awlen_pipe_1_or_2),
        .O(\GEN_NARROW_EN.axi_wlast_d1_reg ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \GEN_AW_DUAL.wr_addr_sm_cs_i_3 
       (.I0(aw_active),
        .I1(bvalid_cnt[0]),
        .I2(bvalid_cnt[1]),
        .I3(bvalid_cnt[2]),
        .O(\GEN_AW_DUAL.aw_active_reg ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_AW_DUAL.wr_addr_sm_cs_i_4 
       (.I0(bvalid_cnt[2]),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[0]),
        .O(\GEN_AW_DUAL.wr_addr_sm_cs_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080FFFFFF)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2 
       (.I0(bvalid_cnt[0]),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[2]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awready),
        .I5(aw_active),
        .O(\bvalid_cnt_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \axi_bid_int[0]_i_1 
       (.I0(bid_fifo_ld),
        .I1(bid_fifo_rd),
        .I2(bid_gets_fifo_load),
        .I3(\axi_bid_int_reg[0] ),
        .I4(bid_fifo_not_empty),
        .I5(s_axi_bid),
        .O(Data_Exists_DFF_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    axi_bvalid_int_i_3
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awaddr_full_reg ),
        .I2(axi_wr_burst),
        .I3(wr_data_sm_cs[0]),
        .I4(wr_data_sm_cs[2]),
        .I5(wr_data_sm_cs[1]),
        .O(axi_wr_burst_reg));
  LUT6 #(
    .INIT(64'h000000000008FFFF)) 
    bid_gets_fifo_load_d1_i_1
       (.I0(bid_gets_fifo_load_d1_reg),
        .I1(wr_data_sm_cs[0]),
        .I2(axi_wr_burst),
        .I3(\GEN_AW_PIPE_DUAL.axi_awaddr_full_reg ),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ),
        .I5(bid_gets_fifo_load_d1_i_5_n_0),
        .O(bid_gets_fifo_load));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    bid_gets_fifo_load_d1_i_3
       (.I0(\bvalid_cnt_reg[0]_0 ),
        .I1(s_axi_awvalid_0),
        .I2(axi_awaddr_full),
        .O(\GEN_AW_PIPE_DUAL.axi_awaddr_full_reg ));
  LUT6 #(
    .INIT(64'hFBFFFBFFFFFFFBFF)) 
    bid_gets_fifo_load_d1_i_4
       (.I0(wr_data_sm_cs[2]),
        .I1(s_axi_wlast),
        .I2(wr_data_sm_cs[0]),
        .I3(s_axi_wvalid),
        .I4(\bvalid_cnt_reg[0]_0 ),
        .I5(wr_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    bid_gets_fifo_load_d1_i_5
       (.I0(s_axi_awvalid_0),
        .I1(bid_gets_fifo_load_d1_reg_0),
        .I2(bvalid_cnt[0]),
        .I3(bid_fifo_not_empty),
        .O(bid_gets_fifo_load_d1_i_5_n_0));
endmodule

(* C_BRAM_ADDR_WIDTH = "11" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "zynq" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "2048" *) (* C_RD_CMD_OPTIMIZATION = "0" *) 
(* C_READ_LATENCY = "1" *) (* C_SELECT_XPM = "1" *) (* C_SINGLE_PORT_BRAM = "0" *) 
(* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) (* C_S_AXI_PROTOCOL = "AXI4" *) 
(* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_2_axi_bram_ctrl_0_0_axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [0:0]s_axi_awid;
  input [12:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [12:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [12:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [3:0]bram_we_b;
  output [12:0]bram_addr_b;
  output [31:0]bram_wrdata_b;
  input [31:0]bram_rddata_b;

  wire \<const0> ;
  wire [12:2]\^bram_addr_a ;
  wire [12:2]\^bram_addr_b ;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire bram_rst_b;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[12:2] = \^bram_addr_a [12:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[12:2] = \^bram_addr_b [12:2];
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = s_axi_aclk;
  assign bram_rst_a = bram_rst_b;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_2_axi_bram_ctrl_0_0_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (s_axi_rlast),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (s_axi_rvalid),
        .axi_bvalid_int_reg(s_axi_bvalid),
        .bram_addr_a(\^bram_addr_a ),
        .bram_addr_b(\^bram_addr_b ),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .bram_rst_b(bram_rst_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module design_2_axi_bram_ctrl_0_0_axi_bram_ctrl_top
   (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    s_axi_awready,
    bram_rst_b,
    bram_addr_a,
    axi_bvalid_int_reg,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    bram_addr_b,
    s_axi_rdata,
    s_axi_wready,
    s_axi_arready,
    s_axi_bid,
    s_axi_rid,
    bram_en_b,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_rready,
    s_axi_wlast,
    s_axi_araddr,
    s_axi_awburst,
    s_axi_aclk,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_awaddr,
    s_axi_bready,
    s_axi_awid,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arsize,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arid,
    bram_rddata_b,
    s_axi_arvalid);
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output s_axi_awready;
  output bram_rst_b;
  output [10:0]bram_addr_a;
  output axi_bvalid_int_reg;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [31:0]bram_wrdata_a;
  output [10:0]bram_addr_b;
  output [31:0]s_axi_rdata;
  output s_axi_wready;
  output s_axi_arready;
  output [0:0]s_axi_bid;
  output [0:0]s_axi_rid;
  output bram_en_b;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_rready;
  input s_axi_wlast;
  input [12:0]s_axi_araddr;
  input [1:0]s_axi_awburst;
  input s_axi_aclk;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input [12:0]s_axi_awaddr;
  input s_axi_bready;
  input [0:0]s_axi_awid;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arid;
  input [31:0]bram_rddata_b;
  input s_axi_arvalid;

  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire axi_bvalid_int_reg;
  wire [10:0]bram_addr_a;
  wire [10:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire bram_rst_b;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  design_2_axi_bram_ctrl_0_0_full_axi \GEN_AXI4.I_FULL_AXI 
       (.\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .axi_bvalid_int_reg(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a),
        .bram_addr_b(bram_addr_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(bram_rst_b),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "design_2_axi_bram_ctrl_0_0,axi_bram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_2_axi_bram_ctrl_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_2_clk_wiz_1_0_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_2_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [12:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [12:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) output [3:0]bram_we_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) output [12:0]bram_addr_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) output [31:0]bram_wrdata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) input [31:0]bram_rddata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) output bram_rst_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) output bram_clk_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) output bram_en_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) output [3:0]bram_we_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) output [12:0]bram_addr_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) output [31:0]bram_wrdata_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) input [31:0]bram_rddata_b;

  wire [12:0]bram_addr_a;
  wire [12:0]bram_addr_b;
  wire bram_clk_a;
  wire bram_clk_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_a;
  wire [31:0]bram_rddata_b;
  wire bram_rst_a;
  wire bram_rst_b;
  wire [3:0]bram_we_a;
  wire [3:0]bram_we_b;
  wire [31:0]bram_wrdata_a;
  wire [31:0]bram_wrdata_b;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;

  (* C_BRAM_ADDR_WIDTH = "11" *) 
  (* C_BRAM_INST_MODE = "EXTERNAL" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "2048" *) 
  (* C_RD_CMD_OPTIMIZATION = "0" *) 
  (* C_READ_LATENCY = "1" *) 
  (* C_SELECT_XPM = "1" *) 
  (* C_SINGLE_PORT_BRAM = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_2_axi_bram_ctrl_0_0_axi_bram_ctrl U0
       (.bram_addr_a(bram_addr_a),
        .bram_addr_b(bram_addr_b),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(bram_clk_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b(bram_rddata_b),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(bram_rst_b),
        .bram_we_a(bram_we_a),
        .bram_we_b(bram_we_b),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(bram_wrdata_b),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module design_2_axi_bram_ctrl_0_0_full_axi
   (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    s_axi_awready,
    s_axi_aresetn_0,
    bram_addr_a,
    axi_bvalid_int_reg,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    bram_addr_b,
    s_axi_rdata,
    s_axi_wready,
    s_axi_arready,
    s_axi_bid,
    s_axi_rid,
    bram_en_b,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_rready,
    s_axi_wlast,
    s_axi_araddr,
    s_axi_awburst,
    s_axi_aclk,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_awaddr,
    s_axi_bready,
    s_axi_awid,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arsize,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arid,
    bram_rddata_b,
    s_axi_arvalid);
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output s_axi_awready;
  output s_axi_aresetn_0;
  output [10:0]bram_addr_a;
  output axi_bvalid_int_reg;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [31:0]bram_wrdata_a;
  output [10:0]bram_addr_b;
  output [31:0]s_axi_rdata;
  output s_axi_wready;
  output s_axi_arready;
  output [0:0]s_axi_bid;
  output [0:0]s_axi_rid;
  output bram_en_b;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_rready;
  input s_axi_wlast;
  input [12:0]s_axi_araddr;
  input [1:0]s_axi_awburst;
  input s_axi_aclk;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input [12:0]s_axi_awaddr;
  input s_axi_bready;
  input [0:0]s_axi_awid;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arid;
  input [31:0]bram_rddata_b;
  input s_axi_arvalid;

  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire I_WR_CHNL_n_37;
  wire axi_aresetn_d3;
  wire axi_aresetn_re_reg;
  wire axi_bvalid_int_reg;
  wire [10:0]bram_addr_a;
  wire [10:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  design_2_axi_bram_ctrl_0_0_rd_chnl I_RD_CHNL
       (.\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 (I_WR_CHNL_n_37),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_aresetn_re_reg(axi_aresetn_re_reg),
        .bram_addr_b(bram_addr_b),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready));
  design_2_axi_bram_ctrl_0_0_wr_chnl I_WR_CHNL
       (.\GEN_AWREADY.axi_aresetn_d3_reg_0 (I_WR_CHNL_n_37),
        .Q(bram_addr_a[9:0]),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_aresetn_re_reg(axi_aresetn_re_reg),
        .axi_bvalid_int_reg_0(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a[10]),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\wrap_burst_total_reg[0] (s_axi_aresetn_0));
endmodule

module design_2_axi_bram_ctrl_0_0_rd_chnl
   (s_axi_aresetn_0,
    s_axi_rdata,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ,
    s_axi_rid,
    bram_en_b,
    bram_addr_b,
    s_axi_arready,
    s_axi_araddr,
    s_axi_aclk,
    s_axi_arid,
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 ,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_arburst,
    axi_aresetn_d3,
    s_axi_arvalid,
    s_axi_arsize,
    axi_aresetn_re_reg,
    s_axi_arlen,
    bram_rddata_b);
  output s_axi_aresetn_0;
  output [31:0]s_axi_rdata;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  output [0:0]s_axi_rid;
  output bram_en_b;
  output [10:0]bram_addr_b;
  output s_axi_arready;
  input [12:0]s_axi_araddr;
  input s_axi_aclk;
  input [0:0]s_axi_arid;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 ;
  input s_axi_rready;
  input s_axi_aresetn;
  input [1:0]s_axi_arburst;
  input axi_aresetn_d3;
  input s_axi_arvalid;
  input [2:0]s_axi_arsize;
  input axi_aresetn_re_reg;
  input [7:0]s_axi_arlen;
  input [31:0]bram_rddata_b;

  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe[2]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_12_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_15_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_16_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_17_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_18_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[0]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_full_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg_n_0_[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_10 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_11 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_13 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_17 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_21 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_28 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_30 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_4 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_5 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_6 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_7 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_8 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_9 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.no_ar_ack_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ;
  wire act_rd_burst;
  wire act_rd_burst_set;
  wire act_rd_burst_two;
  wire ar_active;
  wire araddr_pipe_ld63_out;
  wire axi_araddr_full;
  wire [1:0]axi_arburst_pipe;
  wire axi_aresetn_d3;
  wire axi_aresetn_re_reg;
  wire axi_arid_pipe;
  wire [7:0]axi_arlen_pipe;
  wire axi_arlen_pipe_1_or_2;
  wire axi_arready_int;
  wire [2:0]axi_arsize_pipe;
  wire axi_arsize_pipe_max;
  wire axi_b2b_brst;
  wire axi_early_arready_int;
  wire axi_rd_burst;
  wire axi_rdata_en;
  wire axi_rid_temp;
  wire axi_rid_temp2;
  wire axi_rid_temp2_full;
  wire axi_rid_temp_full;
  wire axi_rid_temp_full_d1;
  wire axi_rlast_set;
  wire axi_rvalid_clr_ok;
  wire axi_rvalid_set;
  wire axi_rvalid_set_cmb;
  wire [10:0]bram_addr_b;
  wire bram_addr_ld_en;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire [7:0]brst_cnt;
  wire brst_cnt_max_d1;
  wire brst_one;
  wire brst_zero;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire disable_b2b_brst_cmb;
  wire end_brst_rd;
  wire end_brst_rd_clr;
  wire last_bram_addr;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [1:0]narrow_burst_cnt_ld_mod;
  wire [1:0]narrow_burst_cnt_ld_reg;
  wire no_ar_ack;
  wire p_0_in;
  wire p_1_out;
  wire p_21_out;
  wire p_27_out;
  wire p_74_out;
  wire p_7_out;
  wire rd_addr_sm_cs;
  wire [3:0]rd_data_sm_cs;
  wire [3:0]rd_data_sm_ns;
  wire [31:0]rd_skid_buf;
  wire rd_skid_buf_ld;
  wire rd_skid_buf_ld_cmb;
  wire rd_skid_buf_ld_reg;
  wire rddata_mux_sel;
  wire rddata_mux_sel_cmb;
  wire [2:0]rlast_sm_cs;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;

  LUT6 #(
    .INIT(64'h444F000044440000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .I1(last_bram_addr),
        .I2(rd_addr_sm_cs),
        .I3(axi_araddr_full),
        .I4(s_axi_arvalid),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_2_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_2 
       (.I0(no_ar_ack),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I2(ar_active),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:0,ld_araddr:1" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_i_1_n_0 ),
        .Q(rd_addr_sm_cs),
        .R(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00CC44CF)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1 
       (.I0(rd_data_sm_cs[2]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[1]),
        .O(rd_data_sm_ns[0]));
  LUT6 #(
    .INIT(64'h8F8F8F8F8F8F0F8F)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .I4(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I5(bram_addr_ld_en),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD0FDD0FDD0F000F)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .I3(rd_data_sm_cs[2]),
        .I4(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .I5(act_rd_burst),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0828AAAA0020)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ),
        .O(rd_data_sm_ns[1]));
  LUT6 #(
    .INIT(64'h3332333230303330)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I5(rd_data_sm_cs[2]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h000EFFFF)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(axi_rd_burst),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AABAAFBA)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4_n_0 ),
        .O(rd_data_sm_ns[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(axi_rd_burst),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I1(axi_arsize_pipe_max),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .I3(axi_araddr_full),
        .I4(disable_b2b_brst),
        .I5(axi_arlen_pipe_1_or_2),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hABABABBBAAAAABBB)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I4(rd_data_sm_cs[2]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555557540405560)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0008000800)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[0]),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I5(rd_data_sm_cs[1]),
        .O(rd_data_sm_ns[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hCE0EC00E)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(bram_addr_ld_en),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[0]),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_1 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(s_axi_rready),
        .I3(act_rd_burst),
        .I4(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[0]),
        .Q(rd_data_sm_cs[0]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[1]),
        .Q(rd_data_sm_cs[1]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[2]),
        .Q(rd_data_sm_cs[2]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[3]),
        .Q(rd_data_sm_cs[3]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hF005F004FF00FF04)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ),
        .I1(last_bram_addr),
        .I2(rlast_sm_cs[2]),
        .I3(rlast_sm_cs[0]),
        .I4(rlast_sm_cs[1]),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001010105050505)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I3(s_axi_rready),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(axi_rd_burst),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F50004FFFF0004)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ),
        .I1(last_bram_addr),
        .I2(rlast_sm_cs[2]),
        .I3(rlast_sm_cs[0]),
        .I4(rlast_sm_cs[1]),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1515150015155555)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I5(axi_rd_burst),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F008F0F0F0F8)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .I1(last_bram_addr),
        .I2(rlast_sm_cs[2]),
        .I3(rlast_sm_cs[0]),
        .I4(rlast_sm_cs[1]),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ),
        .Q(rlast_sm_cs[0]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ),
        .Q(rlast_sm_cs[1]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ),
        .Q(rlast_sm_cs[2]),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hAAAAAEEE)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_i_1 
       (.I0(p_1_out),
        .I1(axi_arready_int),
        .I2(axi_araddr_full),
        .I3(s_axi_arvalid),
        .I4(araddr_pipe_ld63_out),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_i_2 
       (.I0(axi_aresetn_re_reg),
        .I1(axi_araddr_full),
        .I2(bram_addr_ld_en),
        .I3(axi_early_arready_int),
        .O(p_1_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_NORL.axi_arready_int_i_1_n_0 ),
        .Q(axi_arready_int),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h0000000008A000A0)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .O(p_74_out));
  LUT6 #(
    .INIT(64'h2023232300030003)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_5_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I5(brst_one),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3 
       (.I0(brst_zero),
        .I1(end_brst_rd),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4 
       (.I0(brst_one),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFF7FFFFFFF7)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_5 
       (.I0(axi_araddr_full),
        .I1(s_axi_arvalid),
        .I2(rd_data_sm_cs[3]),
        .I3(axi_arready_int),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_74_out),
        .Q(axi_early_arready_int),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1 
       (.I0(bram_addr_ld_en),
        .I1(rd_data_sm_cs[3]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3_n_0 ),
        .I4(ar_active),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F000F0D0D0F0F)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h557555FF55755575)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .I3(rd_data_sm_cs[2]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h23FFFFFFFFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4 
       (.I0(axi_b2b_brst),
        .I1(brst_zero),
        .I2(end_brst_rd),
        .I3(rd_data_sm_cs[1]),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(s_axi_rready),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1_n_0 ),
        .Q(ar_active),
        .R(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[0]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[10]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[11]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[12]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[1]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[2]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[3]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[4]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[5]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[6]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[7]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[8]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_araddr[9]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hDDF00000)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_2_n_0 ),
        .I2(araddr_pipe_ld63_out),
        .I3(axi_araddr_full),
        .I4(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_2 
       (.I0(s_axi_arvalid),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .I2(last_bram_addr),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ),
        .Q(axi_araddr_full),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h03AA)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arburst[1]),
        .I3(araddr_pipe_ld63_out),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arburst[0]),
        .Q(axi_arburst_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arburst[1]),
        .Q(axi_arburst_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arid),
        .Q(axi_arid_pipe),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_1 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[2]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ),
        .O(p_21_out));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[7]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(p_21_out),
        .Q(axi_arlen_pipe_1_or_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arlen[0]),
        .Q(axi_arlen_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arlen[1]),
        .Q(axi_arlen_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arlen[2]),
        .Q(axi_arlen_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arlen[3]),
        .Q(axi_arlen_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arlen[4]),
        .Q(axi_arlen_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arlen[5]),
        .Q(axi_arlen_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arlen[6]),
        .Q(axi_arlen_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arlen[7]),
        .Q(axi_arlen_pipe[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0800AAAA08000800)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe[2]_i_1 
       (.I0(axi_aresetn_d3),
        .I1(s_axi_arvalid),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .I3(last_bram_addr),
        .I4(axi_araddr_full),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe[2]_i_3_n_0 ),
        .O(araddr_pipe_ld63_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe[2]_i_3 
       (.I0(ar_active),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I2(no_ar_ack),
        .I3(s_axi_arvalid),
        .I4(rd_addr_sm_cs),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arsize[0]),
        .Q(axi_arsize_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arsize[1]),
        .Q(axi_arsize_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld63_out),
        .D(s_axi_arsize[2]),
        .Q(axi_arsize_pipe[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0008)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 
       (.I0(s_axi_aresetn),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ),
        .I2(end_brst_rd_clr),
        .I3(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00202020)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2 
       (.I0(ar_active),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I2(brst_zero),
        .I3(curr_narrow_burst),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 
       (.I0(bram_addr_b[5]),
        .I1(bram_addr_b[3]),
        .I2(bram_addr_b[1]),
        .I3(bram_addr_b[0]),
        .I4(bram_addr_b[2]),
        .I5(bram_addr_b[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3 
       (.I0(curr_narrow_burst),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_4 ),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5 
       (.I0(bram_addr_b[7]),
        .I1(bram_addr_b[5]),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_9 ),
        .I3(bram_addr_b[4]),
        .I4(bram_addr_b[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_6 ),
        .Q(bram_addr_b[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_5 ),
        .Q(bram_addr_b[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_30 ),
        .Q(bram_addr_b[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ),
        .Q(bram_addr_b[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ),
        .Q(bram_addr_b[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_13 ),
        .Q(bram_addr_b[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12 ),
        .Q(bram_addr_b[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_11 ),
        .Q(bram_addr_b[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_10 ),
        .Q(bram_addr_b[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_8 ),
        .Q(bram_addr_b[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_7 ),
        .Q(bram_addr_b[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_10 
       (.I0(axi_arlen_pipe[2]),
        .I1(s_axi_arlen[2]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(axi_arlen_pipe[3]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_11 
       (.I0(axi_arlen_pipe[0]),
        .I1(s_axi_arlen[0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(axi_arlen_pipe[1]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_12 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_6_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_5_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_13 
       (.I0(axi_arlen_pipe[4]),
        .I1(s_axi_arlen[4]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(axi_arlen_pipe[5]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0F1FFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_5_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_4 ),
        .I1(curr_narrow_burst),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEEEFE)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_9_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_12_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFFEA0F0AFFEA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_6 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_7 
       (.I0(axi_arburst_pipe[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arburst[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_8 
       (.I0(s_axi_araddr[0]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ),
        .I2(s_axi_araddr[1]),
        .I3(axi_araddr_full),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_9 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_11 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_28 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00CF00CEEFFFEAEC)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_12 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_16_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_17_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_18_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_13 
       (.I0(axi_arlen_pipe[3]),
        .I1(s_axi_arlen[3]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(axi_arlen_pipe[2]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_14 
       (.I0(axi_arlen_pipe[6]),
        .I1(s_axi_arlen[6]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(axi_arlen_pipe[7]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[7]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hC8CCC888C0CCC000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_15 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .I2(axi_arlen_pipe[3]),
        .I3(axi_araddr_full),
        .I4(s_axi_arlen[3]),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_16 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_28 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_17 
       (.I0(axi_arlen_pipe[5]),
        .I1(s_axi_arlen[5]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(axi_arlen_pipe[4]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_18 
       (.I0(axi_arlen_pipe[7]),
        .I1(s_axi_arlen[7]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(axi_arlen_pipe[6]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hE0EE)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ),
        .I1(narrow_bram_addr_inc_d1),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ),
        .I3(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_9_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_11_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_12_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_5 
       (.I0(axi_arburst_pipe[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arburst[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8A8A8AAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_6 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .I3(axi_arsize_pipe[1]),
        .I4(axi_araddr_full),
        .I5(s_axi_arsize[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABABAAAAFBABF)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_7 
       (.I0(curr_fixed_burst),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg ),
        .I2(axi_araddr_full),
        .I3(s_axi_araddr[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ),
        .I5(s_axi_araddr[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFBC6F0CFBB06B00)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_9 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3 ),
        .Q(narrow_addr_int[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .Q(narrow_addr_int[1]),
        .R(s_axi_aresetn_0));
  MUXF7 \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_15_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10_n_0 ),
        .S(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ),
        .O(narrow_bram_addr_inc));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h001DFFFF001D0000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(axi_araddr_full),
        .I2(axi_arsize_pipe[1]),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .I4(bram_addr_ld_en),
        .I5(narrow_burst_cnt_ld_reg[0]),
        .O(narrow_burst_cnt_ld_mod[0]));
  LUT6 #(
    .INIT(64'h082AFFFF082A0000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I1(axi_araddr_full),
        .I2(axi_arsize_pipe[0]),
        .I3(s_axi_arsize[0]),
        .I4(bram_addr_ld_en),
        .I5(narrow_burst_cnt_ld_reg[1]),
        .O(narrow_burst_cnt_ld_mod[1]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[0]),
        .Q(narrow_burst_cnt_ld_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[1]),
        .Q(narrow_burst_cnt_ld_reg[1]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hAA2A002000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ),
        .I3(curr_fixed_burst),
        .I4(curr_narrow_burst),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF5FFD5FFFFFFDFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_4_n_0 ),
        .I1(rlast_sm_cs[1]),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_3 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I1(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 
       (.I0(rd_skid_buf[0]),
        .I1(bram_rddata_b[0]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 
       (.I0(rd_skid_buf[10]),
        .I1(bram_rddata_b[10]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 
       (.I0(rd_skid_buf[11]),
        .I1(bram_rddata_b[11]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 
       (.I0(rd_skid_buf[12]),
        .I1(bram_rddata_b[12]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 
       (.I0(rd_skid_buf[13]),
        .I1(bram_rddata_b[13]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 
       (.I0(rd_skid_buf[14]),
        .I1(bram_rddata_b[14]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 
       (.I0(rd_skid_buf[15]),
        .I1(bram_rddata_b[15]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 
       (.I0(rd_skid_buf[16]),
        .I1(bram_rddata_b[16]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 
       (.I0(rd_skid_buf[17]),
        .I1(bram_rddata_b[17]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 
       (.I0(rd_skid_buf[18]),
        .I1(bram_rddata_b[18]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 
       (.I0(rd_skid_buf[19]),
        .I1(bram_rddata_b[19]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 
       (.I0(rd_skid_buf[1]),
        .I1(bram_rddata_b[1]),
        .I2(rddata_mux_sel),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(p_0_in),
        .Q(s_axi_rdata[1]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 
       (.I0(rd_skid_buf[20]),
        .I1(bram_rddata_b[20]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 
       (.I0(rd_skid_buf[21]),
        .I1(bram_rddata_b[21]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 
       (.I0(rd_skid_buf[22]),
        .I1(bram_rddata_b[22]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 
       (.I0(rd_skid_buf[23]),
        .I1(bram_rddata_b[23]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 
       (.I0(rd_skid_buf[24]),
        .I1(bram_rddata_b[24]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 
       (.I0(rd_skid_buf[25]),
        .I1(bram_rddata_b[25]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 
       (.I0(rd_skid_buf[26]),
        .I1(bram_rddata_b[26]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 
       (.I0(rd_skid_buf[27]),
        .I1(bram_rddata_b[27]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 
       (.I0(rd_skid_buf[28]),
        .I1(bram_rddata_b[28]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 
       (.I0(rd_skid_buf[29]),
        .I1(bram_rddata_b[29]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 
       (.I0(rd_skid_buf[2]),
        .I1(bram_rddata_b[2]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 
       (.I0(rd_skid_buf[30]),
        .I1(bram_rddata_b[30]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08FF)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I2(axi_b2b_brst),
        .I3(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1322012013220100)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ),
        .O(axi_rdata_en));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3 
       (.I0(rd_skid_buf[31]),
        .I1(bram_rddata_b[31]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5 
       (.I0(act_rd_burst),
        .I1(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 
       (.I0(rd_skid_buf[3]),
        .I1(bram_rddata_b[3]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 
       (.I0(rd_skid_buf[4]),
        .I1(bram_rddata_b[4]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 
       (.I0(rd_skid_buf[5]),
        .I1(bram_rddata_b[5]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 
       (.I0(rd_skid_buf[6]),
        .I1(bram_rddata_b[6]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 
       (.I0(rd_skid_buf[7]),
        .I1(bram_rddata_b[7]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 
       (.I0(rd_skid_buf[8]),
        .I1(bram_rddata_b[8]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 
       (.I0(rd_skid_buf[9]),
        .I1(bram_rddata_b[9]),
        .I2(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf[31]_i_1 
       (.I0(rd_skid_buf_ld_reg),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[0]),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I5(rd_data_sm_cs[2]),
        .O(rd_skid_buf_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[0]),
        .Q(rd_skid_buf[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[10] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[10]),
        .Q(rd_skid_buf[10]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[11] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[11]),
        .Q(rd_skid_buf[11]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[12] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[12]),
        .Q(rd_skid_buf[12]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[13] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[13]),
        .Q(rd_skid_buf[13]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[14] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[14]),
        .Q(rd_skid_buf[14]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[15] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[15]),
        .Q(rd_skid_buf[15]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[16] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[16]),
        .Q(rd_skid_buf[16]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[17] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[17]),
        .Q(rd_skid_buf[17]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[18] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[18]),
        .Q(rd_skid_buf[18]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[19] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[19]),
        .Q(rd_skid_buf[19]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[1]),
        .Q(rd_skid_buf[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[20] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[20]),
        .Q(rd_skid_buf[20]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[21] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[21]),
        .Q(rd_skid_buf[21]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[22] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[22]),
        .Q(rd_skid_buf[22]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[23] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[23]),
        .Q(rd_skid_buf[23]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[24] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[24]),
        .Q(rd_skid_buf[24]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[25] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[25]),
        .Q(rd_skid_buf[25]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[26] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[26]),
        .Q(rd_skid_buf[26]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[27] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[27]),
        .Q(rd_skid_buf[27]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[28] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[28]),
        .Q(rd_skid_buf[28]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[29] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[29]),
        .Q(rd_skid_buf[29]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[2]),
        .Q(rd_skid_buf[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[30] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[30]),
        .Q(rd_skid_buf[30]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[31] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[31]),
        .Q(rd_skid_buf[31]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[3]),
        .Q(rd_skid_buf[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[4]),
        .Q(rd_skid_buf[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[5]),
        .Q(rd_skid_buf[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[6]),
        .Q(rd_skid_buf[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[7]),
        .Q(rd_skid_buf[7]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[8]),
        .Q(rd_skid_buf[8]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[9]),
        .Q(rd_skid_buf[9]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h030003000000AA00)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1 
       (.I0(axi_rd_burst),
        .I1(act_rd_burst_two),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ),
        .I3(s_axi_aresetn),
        .I4(brst_zero),
        .I5(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001110100000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_4_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .I2(s_axi_arlen[1]),
        .I3(axi_araddr_full),
        .I4(axi_arlen_pipe[1]),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ),
        .O(act_rd_burst_two));
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_4_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_28 ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ),
        .I1(axi_arlen_pipe[7]),
        .I2(axi_araddr_full),
        .I3(s_axi_arlen[7]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_5_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_6_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_5 
       (.I0(axi_arlen_pipe[4]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_6 
       (.I0(axi_arlen_pipe[5]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ),
        .Q(axi_rd_burst),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hC0C000A0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I1(act_rd_burst_two),
        .I2(s_axi_aresetn),
        .I3(brst_zero),
        .I4(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE200E200F0000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[0]_i_1 
       (.I0(s_axi_rid),
        .I1(axi_rvalid_set),
        .I2(axi_rid_temp),
        .I3(s_axi_aresetn),
        .I4(axi_b2b_brst),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[0]_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[0]_i_2 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[0]_i_1_n_0 ),
        .Q(s_axi_rid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[0]_i_1 
       (.I0(axi_arid_pipe),
        .I1(axi_araddr_full),
        .I2(s_axi_arid),
        .I3(axi_rid_temp_full),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg_n_0_[0] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3311F00000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_full_i_1 
       (.I0(axi_rid_temp_full_d1),
        .I1(p_7_out),
        .I2(bram_addr_ld_en),
        .I3(axi_rid_temp_full),
        .I4(axi_rid_temp2_full),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_full_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_full_i_2 
       (.I0(axi_rvalid_set),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I3(axi_b2b_brst),
        .O(p_7_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_full_i_1_n_0 ),
        .Q(axi_rid_temp2_full),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2[0]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg_n_0_[0] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hCFAACFCFC0AAC0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_1 
       (.I0(axi_rid_temp2),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp2_reg_n_0_[0] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_3_n_0 ),
        .I3(axi_rid_temp_full),
        .I4(bram_addr_ld_en),
        .I5(axi_rid_temp),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_2 
       (.I0(axi_arid_pipe),
        .I1(axi_araddr_full),
        .I2(s_axi_arid),
        .O(axi_rid_temp2));
  LUT6 #(
    .INIT(64'h8A88AAAA8A888A88)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_3 
       (.I0(axi_rid_temp2_full),
        .I1(axi_rvalid_set),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_int[0]_i_2_n_0 ),
        .I3(axi_b2b_brst),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp_full_d1),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rid_temp_full),
        .Q(axi_rid_temp_full_d1),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hBBBBFFA800000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_i_1 
       (.I0(axi_rid_temp2_full),
        .I1(p_7_out),
        .I2(axi_rid_temp_full_d1),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_full_i_1_n_0 ),
        .Q(axi_rid_temp_full),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID.axi_rid_temp[0]_i_1_n_0 ),
        .Q(axi_rid_temp),
        .R(s_axi_aresetn_0));
  design_2_axi_bram_ctrl_0_0_ua_narrow_0 \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW 
       (.D(narrow_burst_cnt_ld_mod),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_3 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_4 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_5 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_5_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_3 (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_4 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ),
        .Q(axi_arsize_pipe),
        .axi_araddr_full(axi_araddr_full),
        .curr_narrow_burst(curr_narrow_burst),
        .narrow_addr_int(narrow_addr_int),
        .s_axi_araddr(s_axi_araddr[1:0]),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arsize_0_sp_1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .s_axi_arsize_1_sp_1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .ua_narrow_load1_carry_0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ));
  design_2_axi_bram_ctrl_0_0_wrap_brst_1 \GEN_NO_RD_CMD_OPT.I_WRAP_BRST 
       (.\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_4 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_21 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2] (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_28 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_26 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_6 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_5 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_30 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_13 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_9 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_11 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_10 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_8 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_7 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .\GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .\GEN_NO_RD_CMD_OPT.brst_zero_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .\GEN_NO_RD_CMD_OPT.end_brst_rd_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_17 ),
        .Q(rd_data_sm_cs),
        .ar_active(ar_active),
        .axi_araddr_full(axi_araddr_full),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_arlen_pipe_1_or_2(axi_arlen_pipe_1_or_2),
        .axi_arsize_pipe_max(axi_arsize_pipe_max),
        .axi_b2b_brst(axi_b2b_brst),
        .axi_rd_burst(axi_rd_burst),
        .bram_addr_b(bram_addr_b),
        .bram_addr_ld_en(bram_addr_ld_en),
        .brst_zero(brst_zero),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .disable_b2b_brst(disable_b2b_brst),
        .end_brst_rd(end_brst_rd),
        .last_bram_addr(last_bram_addr),
        .narrow_addr_int(narrow_addr_int),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .no_ar_ack(no_ar_ack),
        .rd_addr_sm_cs(rd_addr_sm_cs),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[12:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arlen_0_sp_1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ),
        .s_axi_arsize(s_axi_arsize[2:1]),
        .s_axi_arsize_1_sp_1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_1 ),
        .\save_init_bram_addr_ld_reg[12]_0 (\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .\wrap_burst_total_reg[0]_0 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .\wrap_burst_total_reg[0]_1 (axi_arlen_pipe[3:0]),
        .\wrap_burst_total_reg[0]_2 (axi_arsize_pipe[2:1]));
  LUT6 #(
    .INIT(64'h000000002EEE22E2)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1 
       (.I0(act_rd_burst),
        .I1(act_rd_burst_set),
        .I2(bram_addr_ld_en),
        .I3(act_rd_burst_two),
        .I4(axi_rd_burst),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ),
        .Q(act_rd_burst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .I1(act_rd_burst_set),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I3(bram_addr_ld_en),
        .I4(act_rd_burst_two),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A8802008A880A08)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_5_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .O(act_rd_burst_set));
  LUT6 #(
    .INIT(64'h04000010FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_6_n_0 ),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4040000040404000)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I2(rd_data_sm_cs[1]),
        .I3(end_brst_rd),
        .I4(brst_zero),
        .I5(axi_b2b_brst),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_6 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .I1(act_rd_burst),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(araddr_pipe_ld63_out),
        .I4(axi_arsize_pipe_max),
        .O(\GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1_n_0 ),
        .Q(axi_arsize_pipe_max),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .I3(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_3_n_0 ),
        .I4(axi_b2b_brst),
        .O(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0022000000F00000)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_3 
       (.I0(axi_b2b_brst),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_5_n_0 ),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1_n_0 ),
        .Q(axi_b2b_brst),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hBBF00000)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ),
        .I1(s_axi_rready),
        .I2(axi_rlast_set),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I4(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0088000000880F00)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I3(rlast_sm_cs[2]),
        .I4(rlast_sm_cs[0]),
        .I5(rlast_sm_cs[1]),
        .O(axi_rlast_set));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAFAC0000)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ),
        .I2(bram_addr_ld_en),
        .I3(axi_rvalid_clr_ok),
        .I4(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F888F888888)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_4_n_0 ),
        .I2(axi_rvalid_clr_ok),
        .I3(last_bram_addr),
        .I4(disable_b2b_brst),
        .I5(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[3]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_4 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ),
        .Q(axi_rvalid_clr_ok),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7F7F7F0000000000)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1 
       (.I0(axi_rvalid_clr_ok),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I3(axi_rvalid_set),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .O(axi_rvalid_set_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_set_cmb),
        .Q(axi_rvalid_set),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFFFF2F0000002F)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_17 ),
        .I1(rd_data_sm_cs[0]),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ),
        .I3(rd_data_sm_cs[3]),
        .I4(\GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ),
        .I5(bram_en_b),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEEAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_10 
       (.I0(rd_data_sm_cs[2]),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I2(axi_b2b_brst),
        .I3(brst_zero),
        .I4(end_brst_rd),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000888)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[2]),
        .I2(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B800FCB8B8B8B8)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ),
        .I1(rd_data_sm_cs[2]),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8BBBBB8B8B88BB8B)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(bram_addr_ld_en),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h57575F5F00005F00)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_6 
       (.I0(rd_data_sm_cs[0]),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA8885444A8885555)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_7 
       (.I0(rd_data_sm_cs[0]),
        .I1(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_5_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ),
        .I3(brst_one),
        .I4(rd_data_sm_cs[1]),
        .I5(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00FE00FF00FE0000)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_8 
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .I4(rd_data_sm_cs[0]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00070000)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_9 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(brst_zero),
        .I3(end_brst_rd),
        .I4(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ),
        .Q(bram_en_b),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1 
       (.I0(axi_arlen_pipe[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[0]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1 
       (.I0(axi_arlen_pipe[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[1]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[1]),
        .I5(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[2]),
        .I3(brst_cnt[0]),
        .I4(brst_cnt[1]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_28 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[3]),
        .I3(brst_cnt[2]),
        .I4(brst_cnt[1]),
        .I5(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1 
       (.I0(axi_arlen_pipe[4]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[4]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[4]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2 
       (.I0(brst_cnt[2]),
        .I1(brst_cnt[3]),
        .I2(brst_cnt[0]),
        .I3(brst_cnt[1]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1 
       (.I0(axi_arlen_pipe[5]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[5]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[5]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[6]),
        .I3(brst_cnt[5]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2 
       (.I0(axi_arlen_pipe[6]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[6]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_4 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B88BB8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[7]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .I4(brst_cnt[6]),
        .I5(brst_cnt[5]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3 
       (.I0(axi_arlen_pipe[7]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[7]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4 
       (.I0(brst_cnt[1]),
        .I1(brst_cnt[0]),
        .I2(brst_cnt[3]),
        .I3(brst_cnt[2]),
        .I4(brst_cnt[4]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_max_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .Q(brst_cnt_max_d1),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1_n_0 ),
        .Q(brst_cnt[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1_n_0 ),
        .Q(brst_cnt[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1_n_0 ),
        .Q(brst_cnt[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1_n_0 ),
        .Q(brst_cnt[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1_n_0 ),
        .Q(brst_cnt[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1_n_0 ),
        .Q(brst_cnt[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1_n_0 ),
        .Q(brst_cnt[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2_n_0 ),
        .Q(brst_cnt[7]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h00000000A0AAA088)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_1 
       (.I0(s_axi_aresetn),
        .I1(brst_one),
        .I2(act_rd_burst_two),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ),
        .I1(brst_cnt[1]),
        .I2(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_one_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ),
        .Q(brst_one),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E0)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .I1(brst_zero),
        .I2(s_axi_aresetn),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ),
        .Q(brst_zero),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1 
       (.I0(s_axi_arburst[0]),
        .I1(axi_arburst_pipe[0]),
        .I2(s_axi_arburst[1]),
        .I3(axi_araddr_full),
        .I4(axi_arburst_pipe[1]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_fixed_burst),
        .Q(curr_fixed_burst_reg),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(axi_arburst_pipe[1]),
        .I2(s_axi_arburst[0]),
        .I3(axi_araddr_full),
        .I4(axi_arburst_pipe[0]),
        .O(curr_wrap_burst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_wrap_burst),
        .Q(curr_wrap_burst_reg),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hAAAAAAAABFBBAAAA)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(disable_b2b_brst),
        .I5(rd_data_sm_cs[3]),
        .O(disable_b2b_brst_cmb));
  LUT6 #(
    .INIT(64'h00000000BFBBBFBF)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2 
       (.I0(disable_b2b_brst),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I3(brst_one),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFFFBFB)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[1]),
        .I4(axi_rd_burst),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(disable_b2b_brst_cmb),
        .Q(disable_b2b_brst),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFEEFFEF10001000)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .I4(bram_addr_ld_en),
        .I5(end_brst_rd_clr),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ),
        .Q(end_brst_rd_clr),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h55300000)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1 
       (.I0(end_brst_rd_clr),
        .I1(brst_cnt_max_d1),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_n_0 ),
        .I3(end_brst_rd),
        .I4(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ),
        .Q(end_brst_rd),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEAAAAAAAAAAAAEF)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(p_27_out));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ),
        .I1(brst_cnt[0]),
        .I2(brst_cnt[1]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0302030000000000)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_21 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFD00FDFFFDFFFDFF)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I1(axi_rd_burst),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I3(rd_data_sm_cs[3]),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_4 ),
        .I1(brst_cnt[2]),
        .I2(brst_cnt[3]),
        .I3(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ),
        .I4(brst_cnt[7]),
        .I5(brst_cnt[4]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_6 
       (.I0(brst_cnt[6]),
        .I1(brst_cnt[5]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_27_out),
        .Q(last_bram_addr),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hCCCCCCCCC050C0C0)) 
    \GEN_NO_RD_CMD_OPT.no_ar_ack_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(no_ar_ack),
        .I2(rd_data_sm_cs[1]),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \GEN_NO_RD_CMD_OPT.no_ar_ack_i_2 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.no_ar_ack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_1_n_0 ),
        .Q(no_ar_ack),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h3333777500004445)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[3]),
        .I5(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE800E820EBEBEBEB)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .I5(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h45010000)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_3 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_7_n_0 ),
        .I4(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888B8B8B3B3B3B3B)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I5(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5 
       (.I0(bram_addr_ld_en),
        .I1(ar_active),
        .I2(end_brst_rd),
        .I3(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000770F000F770F)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6 
       (.I0(end_brst_rd),
        .I1(ar_active),
        .I2(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I3(rd_data_sm_cs[2]),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88008800FFFFF000)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_7 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .I4(bram_addr_ld_en),
        .I5(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_n_0 ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h000000000000E666)) 
    \GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_i_1 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(s_axi_rready),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[2]),
        .O(rd_skid_buf_ld_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_skid_buf_ld_cmb),
        .Q(rd_skid_buf_ld_reg),
        .R(s_axi_aresetn_0));
  LUT4 #(
    .INIT(16'hFE02)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1 
       (.I0(rddata_mux_sel_cmb),
        .I1(rd_data_sm_cs[3]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ),
        .I3(rddata_mux_sel),
        .O(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000B8B800000800)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_6_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[2]),
        .O(rddata_mux_sel_cmb));
  LUT6 #(
    .INIT(64'hA0A0A0A007F7F7F7)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_n_0 ),
        .I2(rd_data_sm_cs[2]),
        .I3(s_axi_rready),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ),
        .Q(rddata_mux_sel),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    s_axi_arready_INST_0
       (.I0(axi_arready_int),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(s_axi_rready),
        .I3(axi_early_arready_int),
        .O(s_axi_arready));
endmodule

module design_2_axi_bram_ctrl_0_0_ua_narrow
   (s_axi_awsize_1_sp_1,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ,
    D,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ,
    Q,
    s_axi_awsize,
    s_axi_awaddr,
    axi_awaddr_full,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_3 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_4 ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ,
    ua_narrow_load1_carry_0,
    narrow_addr_int,
    curr_narrow_burst,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_3 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_5 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[0]_6 );
  output s_axi_awsize_1_sp_1;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ;
  output \GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  output \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  input [1:0]D;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ;
  input [2:0]Q;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awaddr;
  input axi_awaddr_full;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_3 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_4 ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ;
  input ua_narrow_load1_carry_0;
  input [1:0]narrow_addr_int;
  input curr_narrow_burst;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1]_3 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_5 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[0]_6 ;

  wire [1:0]D;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_3 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_4 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_5 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[0]_6 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1]_3 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 ;
  wire [2:0]Q;
  wire axi_awaddr_full;
  wire curr_narrow_burst;
  wire [1:0]narrow_addr_int;
  wire [1:0]s_axi_awaddr;
  wire [2:0]s_axi_awsize;
  wire s_axi_awsize_1_sn_1;
  wire ua_narrow_load1_carry_0;
  wire ua_narrow_load1_carry_i_1_n_0;
  wire ua_narrow_load1_carry_i_2_n_0;
  wire ua_narrow_load1_carry_i_3_n_0;
  wire ua_narrow_load1_carry_i_4_n_0;
  wire ua_narrow_load1_carry_i_6_n_0;
  wire ua_narrow_load1_carry_n_2;
  wire ua_narrow_load1_carry_n_3;
  wire [3:2]NLW_ua_narrow_load1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ua_narrow_load1_carry_O_UNCONNECTED;

  assign s_axi_awsize_1_sp_1 = s_axi_awsize_1_sn_1;
  LUT6 #(
    .INIT(64'h00FFB8B8FF00B8B8)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_1 
       (.I0(D[0]),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_5 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_6 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 ),
        .I5(narrow_addr_int[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAAA0AA02AAA0AAA2)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_3 
       (.I0(ua_narrow_load1_carry_n_2),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_3 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_4 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFCCCC5000CCCC)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_1 
       (.I0(narrow_addr_int[0]),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ),
        .I2(curr_narrow_burst),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_3 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 ),
        .I5(narrow_addr_int[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAAAEFFAAAAA200)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_2 
       (.I0(D[1]),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA8A0A8A2)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_6 
       (.I0(ua_narrow_load1_carry_n_2),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_3 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_4 ),
        .I4(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_6_n_0 ));
  CARRY4 ua_narrow_load1_carry
       (.CI(1'b0),
        .CO({NLW_ua_narrow_load1_carry_CO_UNCONNECTED[3:2],ua_narrow_load1_carry_n_2,ua_narrow_load1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,ua_narrow_load1_carry_i_1_n_0,ua_narrow_load1_carry_i_2_n_0}),
        .O(NLW_ua_narrow_load1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ua_narrow_load1_carry_i_3_n_0,ua_narrow_load1_carry_i_4_n_0}));
  LUT6 #(
    .INIT(64'h0047000000FF0000)) 
    ua_narrow_load1_carry_i_1
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[0]),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I4(s_axi_awsize_1_sn_1),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ),
        .O(ua_narrow_load1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000A0888800A0)) 
    ua_narrow_load1_carry_i_2
       (.I0(s_axi_awsize_1_sn_1),
        .I1(Q[0]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awaddr[1]),
        .I4(axi_awaddr_full),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .O(ua_narrow_load1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hFBFBFBF3F3F3FBF3)) 
    ua_narrow_load1_carry_i_3
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ),
        .I1(s_axi_awsize_1_sn_1),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I3(s_axi_awaddr[0]),
        .I4(axi_awaddr_full),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .O(ua_narrow_load1_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    ua_narrow_load1_carry_i_4
       (.I0(ua_narrow_load1_carry_0),
        .I1(ua_narrow_load1_carry_i_6_n_0),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[1]),
        .O(ua_narrow_load1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_5
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[1]),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ));
  LUT6 #(
    .INIT(64'h00440347FFFFFFFF)) 
    ua_narrow_load1_carry_i_6
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[0]),
        .I3(Q[0]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awsize_1_sn_1),
        .O(ua_narrow_load1_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h00053305)) 
    \wrap_burst_total[1]_i_3 
       (.I0(s_axi_awsize[1]),
        .I1(Q[1]),
        .I2(s_axi_awsize[2]),
        .I3(axi_awaddr_full),
        .I4(Q[2]),
        .O(s_axi_awsize_1_sn_1));
endmodule

(* ORIG_REF_NAME = "ua_narrow" *) 
module design_2_axi_bram_ctrl_0_0_ua_narrow_0
   (s_axi_arsize_0_sp_1,
    s_axi_arsize_1_sp_1,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ,
    axi_araddr_full,
    s_axi_araddr,
    D,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_3 ,
    ua_narrow_load1_carry_0,
    s_axi_arsize,
    Q,
    narrow_addr_int,
    curr_narrow_burst,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_3 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_4 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_5 );
  output s_axi_arsize_0_sp_1;
  output s_axi_arsize_1_sp_1;
  output \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  output \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ;
  input axi_araddr_full;
  input [1:0]s_axi_araddr;
  input [1:0]D;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_3 ;
  input ua_narrow_load1_carry_0;
  input [2:0]s_axi_arsize;
  input [2:0]Q;
  input [1:0]narrow_addr_int;
  input curr_narrow_burst;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_3 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_4 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_5 ;

  wire [1:0]D;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_3 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_4 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_5 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_3 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 ;
  wire [2:0]Q;
  wire axi_araddr_full;
  wire curr_narrow_burst;
  wire [1:0]narrow_addr_int;
  wire [1:0]s_axi_araddr;
  wire [2:0]s_axi_arsize;
  wire s_axi_arsize_0_sn_1;
  wire s_axi_arsize_1_sn_1;
  wire ua_narrow_load1_carry_0;
  wire ua_narrow_load1_carry_i_1__0_n_0;
  wire ua_narrow_load1_carry_i_2__0_n_0;
  wire ua_narrow_load1_carry_i_3__0_n_0;
  wire ua_narrow_load1_carry_i_4__0_n_0;
  wire ua_narrow_load1_carry_i_6__0_n_0;
  wire ua_narrow_load1_carry_i_8_n_0;
  wire ua_narrow_load1_carry_n_2;
  wire ua_narrow_load1_carry_n_3;
  wire [3:2]NLW_ua_narrow_load1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ua_narrow_load1_carry_O_UNCONNECTED;

  assign s_axi_arsize_0_sp_1 = s_axi_arsize_0_sn_1;
  assign s_axi_arsize_1_sp_1 = s_axi_arsize_1_sn_1;
  LUT6 #(
    .INIT(64'hFF00B8B800FFB8B8)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_1 
       (.I0(D[0]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_4 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_5 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 ),
        .I5(narrow_addr_int[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAAA0AA02AAA0AAA2)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 
       (.I0(ua_narrow_load1_carry_n_2),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_3 ),
        .I2(s_axi_arsize_0_sn_1),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I5(ua_narrow_load1_carry_i_6__0_n_0),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFCCCC0050CCCC)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_1 
       (.I0(narrow_addr_int[0]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ),
        .I2(curr_narrow_burst),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_3 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 ),
        .I5(narrow_addr_int[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAAEFAAAAAA20AA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2 
       (.I0(D[1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_8_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA8A0A8A2)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_8 
       (.I0(ua_narrow_load1_carry_n_2),
        .I1(s_axi_arsize_0_sn_1),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I4(ua_narrow_load1_carry_i_6__0_n_0),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(Q[1]),
        .I2(s_axi_arsize[2]),
        .I3(axi_araddr_full),
        .I4(Q[2]),
        .O(s_axi_arsize_1_sn_1));
  CARRY4 ua_narrow_load1_carry
       (.CI(1'b0),
        .CO({NLW_ua_narrow_load1_carry_CO_UNCONNECTED[3:2],ua_narrow_load1_carry_n_2,ua_narrow_load1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,ua_narrow_load1_carry_i_1__0_n_0,ua_narrow_load1_carry_i_2__0_n_0}),
        .O(NLW_ua_narrow_load1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,ua_narrow_load1_carry_i_3__0_n_0,ua_narrow_load1_carry_i_4__0_n_0}));
  LUT6 #(
    .INIT(64'h0047000000FF0000)) 
    ua_narrow_load1_carry_i_1__0
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_arsize_0_sn_1),
        .I4(s_axi_arsize_1_sn_1),
        .I5(ua_narrow_load1_carry_i_6__0_n_0),
        .O(ua_narrow_load1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000004000444)) 
    ua_narrow_load1_carry_i_2__0
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 ),
        .I1(s_axi_arsize_0_sn_1),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 ),
        .O(ua_narrow_load1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFB8FFFFFF00FFFF)) 
    ua_narrow_load1_carry_i_3__0
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_arsize_0_sn_1),
        .I4(s_axi_arsize_1_sn_1),
        .I5(ua_narrow_load1_carry_i_6__0_n_0),
        .O(ua_narrow_load1_carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hBABBBAAA)) 
    ua_narrow_load1_carry_i_4__0
       (.I0(ua_narrow_load1_carry_0),
        .I1(ua_narrow_load1_carry_i_8_n_0),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[1]),
        .O(ua_narrow_load1_carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    ua_narrow_load1_carry_i_5__0
       (.I0(s_axi_arsize[0]),
        .I1(Q[0]),
        .I2(axi_araddr_full),
        .O(s_axi_arsize_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_6__0
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[1]),
        .O(ua_narrow_load1_carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h00034447FFFFFFFF)) 
    ua_narrow_load1_carry_i_8
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_arsize[0]),
        .I4(Q[0]),
        .I5(s_axi_arsize_1_sn_1),
        .O(ua_narrow_load1_carry_i_8_n_0));
endmodule

module design_2_axi_bram_ctrl_0_0_wr_chnl
   (axi_aresetn_re_reg,
    bram_en_a,
    bram_wrdata_a,
    axi_aresetn_d3,
    axi_bvalid_int_reg_0,
    s_axi_wready,
    \GEN_AWREADY.axi_aresetn_d3_reg_0 ,
    s_axi_awready,
    s_axi_bid,
    Q,
    bram_addr_a,
    bram_we_a,
    \wrap_burst_total_reg[0] ,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_awid,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wlast,
    s_axi_awburst,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_bready,
    s_axi_wstrb);
  output axi_aresetn_re_reg;
  output bram_en_a;
  output [31:0]bram_wrdata_a;
  output axi_aresetn_d3;
  output axi_bvalid_int_reg_0;
  output s_axi_wready;
  output \GEN_AWREADY.axi_aresetn_d3_reg_0 ;
  output s_axi_awready;
  output [0:0]s_axi_bid;
  output [9:0]Q;
  output [0:0]bram_addr_a;
  output [3:0]bram_we_a;
  input \wrap_burst_total_reg[0] ;
  input s_axi_aclk;
  input [12:0]s_axi_awaddr;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input s_axi_wlast;
  input [1:0]s_axi_awburst;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;

  wire BID_FIFO_n_0;
  wire BID_FIFO_n_1;
  wire BID_FIFO_n_2;
  wire BID_FIFO_n_3;
  wire BID_FIFO_n_5;
  wire BID_FIFO_n_6;
  wire BID_FIFO_n_7;
  wire BID_FIFO_n_8;
  wire BID_FIFO_n_9;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ;
  wire \GEN_AWREADY.axi_aresetn_d3_reg_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_1_n_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_2_n_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_4_n_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_5_n_0 ;
  wire \GEN_AW_DUAL.aw_active_i_2_n_0 ;
  wire \GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_10_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_11_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_12_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_15_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_16_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_17_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_18_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_5_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_8_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_9_n_0 ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ;
  wire \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ;
  wire \GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_0 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_1 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_2 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_3 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_4_n_0 ;
  wire \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ;
  wire I_WRAP_BRST_n_0;
  wire I_WRAP_BRST_n_1;
  wire I_WRAP_BRST_n_10;
  wire I_WRAP_BRST_n_11;
  wire I_WRAP_BRST_n_12;
  wire I_WRAP_BRST_n_13;
  wire I_WRAP_BRST_n_14;
  wire I_WRAP_BRST_n_15;
  wire I_WRAP_BRST_n_16;
  wire I_WRAP_BRST_n_17;
  wire I_WRAP_BRST_n_18;
  wire I_WRAP_BRST_n_19;
  wire I_WRAP_BRST_n_2;
  wire I_WRAP_BRST_n_20;
  wire I_WRAP_BRST_n_21;
  wire I_WRAP_BRST_n_22;
  wire I_WRAP_BRST_n_23;
  wire I_WRAP_BRST_n_24;
  wire I_WRAP_BRST_n_4;
  wire I_WRAP_BRST_n_5;
  wire I_WRAP_BRST_n_6;
  wire I_WRAP_BRST_n_7;
  wire I_WRAP_BRST_n_8;
  wire I_WRAP_BRST_n_9;
  wire [9:0]Q;
  wire aw_active;
  wire axi_aresetn_d1;
  wire axi_aresetn_d2;
  wire axi_aresetn_d3;
  wire axi_aresetn_re;
  wire axi_aresetn_re_reg;
  wire axi_awaddr_full;
  wire [1:0]axi_awburst_pipe;
  wire axi_awid_pipe;
  wire [7:0]axi_awlen_pipe;
  wire axi_awlen_pipe_1_or_2;
  wire [2:0]axi_awsize_pipe;
  wire \axi_bid_int[0]_i_2_n_0 ;
  wire \axi_bid_int[0]_i_3_n_0 ;
  wire \axi_bid_int[0]_i_4_n_0 ;
  wire axi_bvalid_int_i_1_n_0;
  wire axi_bvalid_int_i_2_n_0;
  wire axi_bvalid_int_reg_0;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire axi_wr_burst_cmb;
  wire axi_wr_burst_i_1_n_0;
  wire axi_wr_burst_i_3_n_0;
  wire axi_wready_int_mod_i_1_n_0;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bid_gets_fifo_load_d1_i_2_n_0;
  wire [0:0]bram_addr_a;
  wire bram_addr_ld_en;
  wire bram_en_a;
  wire bram_en_cmb;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire [2:0]bvalid_cnt;
  wire \bvalid_cnt[0]_i_1_n_0 ;
  wire \bvalid_cnt[1]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_1_n_0 ;
  wire clr_bram_we;
  wire clr_bram_we_cmb;
  wire curr_awlen_reg_1_or_2;
  wire curr_awlen_reg_1_or_20;
  wire curr_awlen_reg_1_or_2_i_2_n_0;
  wire curr_awlen_reg_1_or_2_i_3_n_0;
  wire curr_awlen_reg_1_or_2_i_4_n_0;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_narrow_burst_en;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_i_2_n_0;
  wire curr_wrap_burst_reg_i_3_n_0;
  wire delay_aw_active_clr;
  wire last_data_ack_mod;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [1:0]narrow_burst_cnt_ld_reg;
  wire p_25_in;
  wire p_9_out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire wr_addr_sm_cs;
  wire [2:0]wr_data_sm_cs;
  wire \wrap_burst_total_reg[0] ;
  wire wrdata_reg_ld;

  design_2_axi_bram_ctrl_0_0_SRL_FIFO BID_FIFO
       (.\Addr_Counters[3].FDRE_I_0 (\wrap_burst_total_reg[0] ),
        .Data_Exists_DFF_0(BID_FIFO_n_9),
        .Data_Exists_DFF_1(axi_aresetn_d3),
        .Data_Exists_DFF_2(axi_bvalid_int_reg_0),
        .\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] (BID_FIFO_n_6),
        .\GEN_AW_DUAL.aw_active_reg (BID_FIFO_n_1),
        .\GEN_AW_DUAL.wr_addr_sm_cs_reg (\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .\GEN_AW_PIPE_DUAL.axi_awaddr_full_reg (BID_FIFO_n_5),
        .\GEN_NARROW_EN.axi_wlast_d1_reg (BID_FIFO_n_2),
        .aw_active(aw_active),
        .axi_awaddr_full(axi_awaddr_full),
        .axi_awid_pipe(axi_awid_pipe),
        .axi_awlen_pipe_1_or_2(axi_awlen_pipe_1_or_2),
        .\axi_bid_int_reg[0] (\axi_bid_int[0]_i_2_n_0 ),
        .axi_wr_burst(axi_wr_burst),
        .axi_wr_burst_reg(BID_FIFO_n_7),
        .bid_gets_fifo_load(bid_gets_fifo_load),
        .bid_gets_fifo_load_d1(bid_gets_fifo_load_d1),
        .bid_gets_fifo_load_d1_reg(bid_gets_fifo_load_d1_i_2_n_0),
        .bid_gets_fifo_load_d1_reg_0(axi_bvalid_int_i_2_n_0),
        .bvalid_cnt(bvalid_cnt),
        .\bvalid_cnt_reg[0] (BID_FIFO_n_3),
        .\bvalid_cnt_reg[0]_0 (BID_FIFO_n_8),
        .curr_awlen_reg_1_or_2(curr_awlen_reg_1_or_2),
        .last_data_ack_mod(last_data_ack_mod),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awid(s_axi_awid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awvalid_0(BID_FIFO_n_0),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_addr_sm_cs(wr_addr_sm_cs),
        .wr_data_sm_cs(wr_data_sm_cs));
  LUT6 #(
    .INIT(64'hFBAAFFFFFBAA0000)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2_n_0 ),
        .I1(wr_data_sm_cs[2]),
        .I2(s_axi_wvalid),
        .I3(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I5(wr_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2 
       (.I0(wr_data_sm_cs[2]),
        .I1(wr_data_sm_cs[1]),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .I3(wr_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2222FFFF22020000)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ),
        .I2(s_axi_wlast),
        .I3(wr_data_sm_cs[0]),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I5(wr_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hABAA)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2 
       (.I0(wr_data_sm_cs[2]),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[1]),
        .I3(BID_FIFO_n_8),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00FF2F00)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ),
        .I1(BID_FIFO_n_8),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ),
        .I3(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I4(wr_data_sm_cs[2]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2 
       (.I0(wr_data_sm_cs[1]),
        .I1(s_axi_wlast),
        .I2(wr_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFBCB)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[0]),
        .I3(axi_wr_burst),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000C0037343734)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4 
       (.I0(BID_FIFO_n_5),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[2]),
        .I3(s_axi_wvalid),
        .I4(s_axi_wlast),
        .I5(wr_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5515)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5 
       (.I0(\GEN_AWREADY.axi_awready_int_i_5_n_0 ),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[2]),
        .I3(bvalid_cnt[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1_n_0 ),
        .Q(wr_data_sm_cs[0]),
        .R(\wrap_burst_total_reg[0] ));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1_n_0 ),
        .Q(wr_data_sm_cs[1]),
        .R(\wrap_burst_total_reg[0] ));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ),
        .Q(wr_data_sm_cs[2]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_aresetn),
        .Q(axi_aresetn_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_d1),
        .Q(axi_aresetn_d2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_d2),
        .Q(axi_aresetn_d3),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_AWREADY.axi_aresetn_re_reg_i_1 
       (.I0(axi_aresetn_d1),
        .I1(axi_aresetn_d2),
        .O(axi_aresetn_re));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_re_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_re),
        .Q(axi_aresetn_re_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFBFFFFF00AA)) 
    \GEN_AWREADY.axi_awready_int_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(BID_FIFO_n_0),
        .I4(axi_aresetn_re_reg),
        .I5(s_axi_awready),
        .O(\GEN_AWREADY.axi_awready_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4440404040404040)) 
    \GEN_AWREADY.axi_awready_int_i_2 
       (.I0(\GEN_AWREADY.axi_awready_int_i_4_n_0 ),
        .I1(s_axi_awvalid),
        .I2(aw_active),
        .I3(bvalid_cnt[0]),
        .I4(bvalid_cnt[1]),
        .I5(bvalid_cnt[2]),
        .O(\GEN_AWREADY.axi_awready_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABABABABABABABA)) 
    \GEN_AWREADY.axi_awready_int_i_4 
       (.I0(wr_addr_sm_cs),
        .I1(\GEN_AWREADY.axi_awready_int_i_5_n_0 ),
        .I2(last_data_ack_mod),
        .I3(bvalid_cnt[2]),
        .I4(bvalid_cnt[1]),
        .I5(bvalid_cnt[0]),
        .O(\GEN_AWREADY.axi_awready_int_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \GEN_AWREADY.axi_awready_int_i_5 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .I2(curr_awlen_reg_1_or_2),
        .I3(axi_awlen_pipe_1_or_2),
        .O(\GEN_AWREADY.axi_awready_int_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_awready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AWREADY.axi_awready_int_i_1_n_0 ),
        .Q(s_axi_awready),
        .R(\wrap_burst_total_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_AW_DUAL.aw_active_i_1 
       (.I0(axi_aresetn_d3),
        .O(\GEN_AWREADY.axi_aresetn_d3_reg_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF0000FFFF)) 
    \GEN_AW_DUAL.aw_active_i_2 
       (.I0(wr_data_sm_cs[2]),
        .I1(delay_aw_active_clr),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[1]),
        .I4(BID_FIFO_n_0),
        .I5(aw_active),
        .O(\GEN_AW_DUAL.aw_active_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_DUAL.aw_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_DUAL.aw_active_i_2_n_0 ),
        .Q(aw_active),
        .R(\GEN_AWREADY.axi_aresetn_d3_reg_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \GEN_AW_DUAL.wr_addr_sm_cs_i_1 
       (.I0(BID_FIFO_n_2),
        .I1(wr_addr_sm_cs),
        .I2(s_axi_awvalid),
        .I3(axi_awaddr_full),
        .I4(BID_FIFO_n_1),
        .O(\GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ));
  FDRE \GEN_AW_DUAL.wr_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ),
        .Q(wr_addr_sm_cs),
        .R(\GEN_AWREADY.axi_aresetn_d3_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[0]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[10]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[11]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[12]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[1]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[2]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[3]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[4]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[5]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[6]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[7]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[8]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awaddr[9]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hEA004000)) 
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(s_axi_aresetn),
        .I4(BID_FIFO_n_0),
        .O(\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ),
        .Q(axi_awaddr_full),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBF00BF00BF00FF40)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .I4(s_axi_awburst[0]),
        .I5(s_axi_awburst[1]),
        .O(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ),
        .Q(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awburst[0]),
        .Q(axi_awburst_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awburst[1]),
        .Q(axi_awburst_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awid),
        .Q(axi_awid_pipe),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awlen[3]),
        .I3(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ),
        .O(p_9_out));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awlen[7]),
        .I2(s_axi_awlen[4]),
        .I3(s_axi_awlen[6]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_reg 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(p_9_out),
        .Q(axi_awlen_pipe_1_or_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[0]),
        .Q(axi_awlen_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[1]),
        .Q(axi_awlen_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[2]),
        .Q(axi_awlen_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[3]),
        .Q(axi_awlen_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[4]),
        .Q(axi_awlen_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[5]),
        .Q(axi_awlen_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[6]),
        .Q(axi_awlen_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awlen[7]),
        .Q(axi_awlen_pipe[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awsize[0]),
        .Q(axi_awsize_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awsize[1]),
        .Q(axi_awsize_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awsize_pipe[2]_i_1_n_0 ),
        .D(s_axi_awsize[2]),
        .Q(axi_awsize_pipe[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(I_WRAP_BRST_n_9),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_15),
        .D(I_WRAP_BRST_n_13),
        .Q(Q[8]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_15),
        .D(I_WRAP_BRST_n_14),
        .Q(Q[9]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_24),
        .Q(bram_addr_a),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_15),
        .D(I_WRAP_BRST_n_4),
        .Q(Q[0]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_15),
        .D(I_WRAP_BRST_n_5),
        .Q(Q[1]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_15),
        .D(I_WRAP_BRST_n_6),
        .Q(Q[2]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_15),
        .D(I_WRAP_BRST_n_7),
        .Q(Q[3]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_15),
        .D(I_WRAP_BRST_n_8),
        .Q(Q[4]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_15),
        .D(I_WRAP_BRST_n_10),
        .Q(Q[5]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_15),
        .D(I_WRAP_BRST_n_11),
        .Q(Q[6]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_15),
        .D(I_WRAP_BRST_n_12),
        .Q(Q[7]),
        .R(I_WRAP_BRST_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_10 
       (.I0(axi_awsize_pipe[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_11 
       (.I0(curr_awlen_reg_1_or_2_i_2_n_0),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0 ),
        .I4(I_WRAP_BRST_n_18),
        .I5(curr_awlen_reg_1_or_2_i_3_n_0),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA03F3FAFA03030)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_12 
       (.I0(I_WRAP_BRST_n_17),
        .I1(I_WRAP_BRST_n_21),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ),
        .I3(I_WRAP_BRST_n_19),
        .I4(I_WRAP_BRST_n_18),
        .I5(I_WRAP_BRST_n_20),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hA0A000F0AAAA03F3)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_13 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[1]_i_16_n_0 ),
        .I1(I_WRAP_BRST_n_21),
        .I2(I_WRAP_BRST_n_18),
        .I3(I_WRAP_BRST_n_22),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_14 
       (.I0(axi_awlen_pipe[7]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[7]),
        .I4(I_WRAP_BRST_n_18),
        .I5(curr_awlen_reg_1_or_2_i_3_n_0),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_15 
       (.I0(axi_awlen_pipe[5]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[5]),
        .I4(I_WRAP_BRST_n_18),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_16 
       (.I0(axi_awlen_pipe[7]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[7]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF010000)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0 ),
        .I3(curr_wrap_burst_reg_i_2_n_0),
        .I4(curr_wrap_burst_reg_i_3_n_0),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[1]_i_5_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_4 
       (.I0(wr_data_sm_cs[0]),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[1]),
        .I3(wr_data_sm_cs[2]),
        .I4(curr_narrow_burst),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFFFFFAEEEEAAA)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_5 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[1]_i_11_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .I3(I_WRAP_BRST_n_18),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFAFEAAFAFEFE)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_6 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_13_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[0]_i_15_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .I5(I_WRAP_BRST_n_18),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCB8000000000000)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_7 
       (.I0(I_WRAP_BRST_n_20),
        .I1(I_WRAP_BRST_n_18),
        .I2(I_WRAP_BRST_n_19),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_8 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_9 
       (.I0(axi_awsize_pipe[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0FF2FFFE0222F22E)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_10 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .I3(I_WRAP_BRST_n_18),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[1]_i_15_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[1]_i_16_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEFEFEEFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_11 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[1]_i_17_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[1]_i_18_n_0 ),
        .I2(I_WRAP_BRST_n_21),
        .I3(I_WRAP_BRST_n_22),
        .I4(I_WRAP_BRST_n_18),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h3EEE2AAA)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_12 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_12_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .I2(I_WRAP_BRST_n_18),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[0]_i_11_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_13 
       (.I0(s_axi_awsize[1]),
        .I1(axi_awsize_pipe[1]),
        .I2(s_axi_awsize[0]),
        .I3(axi_awaddr_full),
        .I4(axi_awsize_pipe[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_14 
       (.I0(axi_awlen_pipe[4]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[4]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4777FFFF47770000)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_15 
       (.I0(axi_awlen_pipe[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awvalid),
        .I4(I_WRAP_BRST_n_18),
        .I5(I_WRAP_BRST_n_21),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hACA0FFFFACA00000)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_16 
       (.I0(axi_awlen_pipe[3]),
        .I1(s_axi_awlen[3]),
        .I2(axi_awaddr_full),
        .I3(s_axi_awvalid),
        .I4(I_WRAP_BRST_n_18),
        .I5(I_WRAP_BRST_n_20),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8A8AAAA08A80)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_17 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ),
        .I2(I_WRAP_BRST_n_18),
        .I3(curr_awlen_reg_1_or_2_i_2_n_0),
        .I4(I_WRAP_BRST_n_20),
        .I5(I_WRAP_BRST_n_19),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h03F302A2000002A2)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_18 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[0]_i_16_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(axi_awaddr_full),
        .I3(axi_awsize_pipe[2]),
        .I4(I_WRAP_BRST_n_18),
        .I5(curr_awlen_reg_1_or_2_i_3_n_0),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEE0EE)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_3 
       (.I0(I_WRAP_BRST_n_23),
        .I1(BID_FIFO_n_0),
        .I2(narrow_bram_addr_inc_d1),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ),
        .I4(narrow_addr_int[1]),
        .I5(narrow_addr_int[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_4 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[1]_i_8_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[1]_i_9_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[1]_i_10_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[1]_i_11_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[1]_i_12_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEEF)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_5 
       (.I0(curr_fixed_burst),
        .I1(BID_FIFO_n_0),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ),
        .I3(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .I4(I_WRAP_BRST_n_23),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_7 
       (.I0(s_axi_awsize[1]),
        .I1(axi_awsize_pipe[1]),
        .I2(s_axi_awsize[2]),
        .I3(axi_awaddr_full),
        .I4(axi_awsize_pipe[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFF0B8F0)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_8 
       (.I0(I_WRAP_BRST_n_17),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[1]_i_13_n_0 ),
        .I2(I_WRAP_BRST_n_19),
        .I3(I_WRAP_BRST_n_18),
        .I4(I_WRAP_BRST_n_20),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000C000CAFFCA00C)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_9 
       (.I0(curr_awlen_reg_1_or_2_i_2_n_0),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[1]_i_14_n_0 ),
        .I2(I_WRAP_BRST_n_18),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[0]_i_14_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_3 ),
        .Q(narrow_addr_int[0]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .Q(narrow_addr_int[1]),
        .R(\wrap_burst_total_reg[0] ));
  LUT4 #(
    .INIT(16'h0008)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(curr_narrow_burst),
        .I1(I_WRAP_BRST_n_16),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[0]),
        .O(narrow_bram_addr_inc));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(\wrap_burst_total_reg[0] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .I1(BID_FIFO_n_0),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .O(narrow_burst_cnt_ld_reg[0]));
  LUT6 #(
    .INIT(64'h888888B8B8B888B8)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .I1(BID_FIFO_n_0),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .I3(s_axi_awsize[0]),
        .I4(axi_awaddr_full),
        .I5(axi_awsize_pipe[0]),
        .O(narrow_burst_cnt_ld_reg[1]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[0]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[1]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .R(\wrap_burst_total_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NARROW_EN.axi_wlast_d1_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wlast),
        .I2(s_axi_wvalid),
        .O(p_25_in));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_EN.axi_wlast_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_25_in),
        .Q(last_data_ack_mod),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h0FBB0F0000000000)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(last_data_ack_mod),
        .I1(p_25_in),
        .I2(I_WRAP_BRST_n_23),
        .I3(curr_narrow_burst_en),
        .I4(curr_narrow_burst),
        .I5(s_axi_aresetn),
        .O(\GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B888FFFF)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(axi_awlen_pipe[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[0]),
        .I4(curr_awlen_reg_1_or_20),
        .I5(\GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ),
        .O(curr_narrow_burst_en));
  LUT6 #(
    .INIT(64'hAAAABABAAAAFBABF)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_3 
       (.I0(BID_FIFO_n_0),
        .I1(axi_awburst_pipe[1]),
        .I2(axi_awaddr_full),
        .I3(s_axi_awburst[1]),
        .I4(axi_awburst_pipe[0]),
        .I5(s_axi_awburst[0]),
        .O(\GEN_NARROW_EN.curr_narrow_burst_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
  design_2_axi_bram_ctrl_0_0_ua_narrow \GEN_UA_NARROW.I_UA_NARROW 
       (.D(narrow_burst_cnt_ld_reg),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] (\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0] (\GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_3 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_1 (\GEN_NARROW_CNT.narrow_addr_int[0]_i_8_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_2 (I_WRAP_BRST_n_18),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_3 (\GEN_NARROW_CNT.narrow_addr_int[0]_i_9_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_4 (\GEN_NARROW_CNT.narrow_addr_int[0]_i_10_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_5 (\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[0]_6 (\GEN_NARROW_CNT.narrow_addr_int[0]_i_4_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1] (\GEN_NARROW_CNT.narrow_addr_int[1]_i_4_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 (curr_wrap_burst_reg_i_2_n_0),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 (curr_wrap_burst_reg_i_3_n_0),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1]_2 (\GEN_NARROW_CNT.narrow_addr_int[1]_i_5_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1]_3 (I_WRAP_BRST_n_16),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1]_4 (\GEN_NARROW_CNT.narrow_addr_int[1]_i_3_n_0 ),
        .Q(axi_awsize_pipe),
        .axi_awaddr_full(axi_awaddr_full),
        .curr_narrow_burst(curr_narrow_burst),
        .narrow_addr_int(narrow_addr_int),
        .s_axi_awaddr(s_axi_awaddr[1:0]),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awsize_1_sp_1(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .ua_narrow_load1_carry_0(I_WRAP_BRST_n_23));
  LUT6 #(
    .INIT(64'h00F033AA00F030A8)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ),
        .I1(wr_data_sm_cs[0]),
        .I2(axi_wdata_full_reg),
        .I3(wr_data_sm_cs[2]),
        .I4(wr_data_sm_cs[1]),
        .I5(s_axi_wvalid),
        .O(axi_wdata_full_cmb));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hDF55DF00)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2 
       (.I0(wr_data_sm_cs[0]),
        .I1(BID_FIFO_n_0),
        .I2(axi_awaddr_full),
        .I3(BID_FIFO_n_8),
        .I4(axi_wdata_full_reg),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000FFB300A2)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_1 
       (.I0(wr_data_sm_cs[0]),
        .I1(BID_FIFO_n_8),
        .I2(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ),
        .I3(wr_data_sm_cs[1]),
        .I4(s_axi_wvalid),
        .I5(wr_data_sm_cs[2]),
        .O(bram_en_cmb));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3 
       (.I0(axi_awaddr_full),
        .I1(BID_FIFO_n_0),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(bram_en_a),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h000000FF00000010)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_1 
       (.I0(BID_FIFO_n_5),
        .I1(axi_wr_burst),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[1]),
        .I4(wr_data_sm_cs[2]),
        .I5(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ),
        .O(clr_bram_we_cmb));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2 
       (.I0(s_axi_wlast),
        .I1(wr_data_sm_cs[0]),
        .I2(s_axi_wvalid),
        .I3(BID_FIFO_n_8),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clr_bram_we_cmb),
        .Q(clr_bram_we),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h0000777F00007770)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1 
       (.I0(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ),
        .I1(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ),
        .I2(clr_bram_we_cmb),
        .I3(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_4_n_0 ),
        .I4(wr_data_sm_cs[2]),
        .I5(delay_aw_active_clr),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2 
       (.I0(axi_awaddr_full),
        .I1(BID_FIFO_n_0),
        .I2(BID_FIFO_n_8),
        .I3(wr_data_sm_cs[0]),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3 
       (.I0(wr_data_sm_cs[0]),
        .I1(s_axi_wlast),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_4 
       (.I0(wr_data_sm_cs[2]),
        .I1(wr_data_sm_cs[1]),
        .I2(s_axi_wvalid),
        .I3(wr_data_sm_cs[0]),
        .I4(s_axi_wlast),
        .I5(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ),
        .Q(delay_aw_active_clr),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF7D50000FFFFFFFF)) 
    \GEN_WR_NO_ECC.bram_we_int[3]_i_1 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .I4(clr_bram_we),
        .I5(s_axi_aresetn),
        .O(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h082A)) 
    \GEN_WR_NO_ECC.bram_we_int[3]_i_2 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .O(wrdata_reg_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[0]),
        .Q(bram_we_a[0]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[1]),
        .Q(bram_we_a[1]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[2]),
        .Q(bram_we_a[2]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[3]),
        .Q(bram_we_a[3]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  design_2_axi_bram_ctrl_0_0_wrap_brst I_WRAP_BRST
       (.E(bram_addr_ld_en),
        .\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] (I_WRAP_BRST_n_0),
        .\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] (I_WRAP_BRST_n_16),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] (I_WRAP_BRST_n_4),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] (I_WRAP_BRST_n_21),
        .\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] (I_WRAP_BRST_n_17),
        .\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1]_0 (I_WRAP_BRST_n_22),
        .\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] (I_WRAP_BRST_n_20),
        .\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] (I_WRAP_BRST_n_19),
        .\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] (I_WRAP_BRST_n_18),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] (I_WRAP_BRST_n_13),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 (Q[6]),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_1 (Q[7]),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] (I_WRAP_BRST_n_14),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] (I_WRAP_BRST_n_24),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] (I_WRAP_BRST_n_5),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] (I_WRAP_BRST_n_6),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] (I_WRAP_BRST_n_7),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 (I_WRAP_BRST_n_9),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_1 (Q[0]),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_2 (Q[1]),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_3 (Q[2]),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_4 (Q[3]),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] (I_WRAP_BRST_n_8),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] (I_WRAP_BRST_n_10),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] (I_WRAP_BRST_n_11),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 (Q[4]),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_1 (Q[5]),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] (I_WRAP_BRST_n_12),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ),
        .Q(Q[9:8]),
        .axi_awaddr_full(axi_awaddr_full),
        .bram_addr_a(bram_addr_a),
        .curr_fixed_burst(curr_fixed_burst),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_fixed_burst_reg_reg(I_WRAP_BRST_n_2),
        .curr_fixed_burst_reg_reg_0(I_WRAP_BRST_n_15),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .curr_wrap_burst_reg_reg(I_WRAP_BRST_n_1),
        .curr_wrap_burst_reg_reg_0(curr_wrap_burst_reg_i_2_n_0),
        .curr_wrap_burst_reg_reg_1(curr_wrap_burst_reg_i_3_n_0),
        .narrow_addr_int(narrow_addr_int),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr[12:2]),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awsize_1_sp_1(I_WRAP_BRST_n_23),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld_reg[12]_0 (BID_FIFO_n_0),
        .wr_data_sm_cs(wr_data_sm_cs),
        .\wrap_burst_total_reg[0]_0 (\wrap_burst_total_reg[0] ),
        .\wrap_burst_total_reg[1]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .\wrap_burst_total_reg[2]_0 (axi_awlen_pipe[3:0]),
        .\wrap_burst_total_reg[2]_1 (axi_awsize_pipe));
  LUT6 #(
    .INIT(64'h000000000000D5DD)) 
    \axi_bid_int[0]_i_2 
       (.I0(BID_FIFO_n_3),
        .I1(BID_FIFO_n_6),
        .I2(BID_FIFO_n_5),
        .I3(\axi_bid_int[0]_i_3_n_0 ),
        .I4(\axi_bid_int[0]_i_4_n_0 ),
        .I5(bid_gets_fifo_load_d1),
        .O(\axi_bid_int[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \axi_bid_int[0]_i_3 
       (.I0(axi_wr_burst),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[1]),
        .O(\axi_bid_int[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \axi_bid_int[0]_i_4 
       (.I0(axi_bvalid_int_reg_0),
        .I1(s_axi_bready),
        .I2(bvalid_cnt[1]),
        .I3(bvalid_cnt[2]),
        .I4(bvalid_cnt[0]),
        .O(\axi_bid_int[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(BID_FIFO_n_9),
        .Q(s_axi_bid),
        .R(\wrap_burst_total_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_bvalid_int_i_2_n_0),
        .I2(BID_FIFO_n_7),
        .O(axi_bvalid_int_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hEFFFEEEE)) 
    axi_bvalid_int_i_2
       (.I0(bvalid_cnt[2]),
        .I1(bvalid_cnt[1]),
        .I2(s_axi_bready),
        .I3(axi_bvalid_int_reg_0),
        .I4(bvalid_cnt[0]),
        .O(axi_bvalid_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_int_i_1_n_0),
        .Q(axi_bvalid_int_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    axi_wr_burst_i_1
       (.I0(axi_wr_burst_cmb),
        .I1(axi_wr_burst_i_3_n_0),
        .I2(axi_wr_burst),
        .O(axi_wr_burst_i_1_n_0));
  LUT6 #(
    .INIT(64'h00030003F8FB080B)) 
    axi_wr_burst_i_2
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[0]),
        .I3(s_axi_wlast),
        .I4(s_axi_wvalid),
        .I5(wr_data_sm_cs[2]),
        .O(axi_wr_burst_cmb));
  LUT6 #(
    .INIT(64'h440C400C400C400C)) 
    axi_wr_burst_i_3
       (.I0(wr_data_sm_cs[2]),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[1]),
        .I4(s_axi_wlast),
        .I5(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .O(axi_wr_burst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wr_burst_i_1_n_0),
        .Q(axi_wr_burst),
        .R(\wrap_burst_total_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_wdata_full_cmb),
        .O(axi_wready_int_mod_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_int_mod_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h1)) 
    bid_gets_fifo_load_d1_i_2
       (.I0(wr_data_sm_cs[1]),
        .I1(wr_data_sm_cs[2]),
        .O(bid_gets_fifo_load_d1_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bid_gets_fifo_load_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bid_gets_fifo_load),
        .Q(bid_gets_fifo_load_d1),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h6A6A6A6A95959555)) 
    \bvalid_cnt[0]_i_1 
       (.I0(BID_FIFO_n_7),
        .I1(axi_bvalid_int_reg_0),
        .I2(s_axi_bready),
        .I3(bvalid_cnt[1]),
        .I4(bvalid_cnt[2]),
        .I5(bvalid_cnt[0]),
        .O(\bvalid_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA4F0F0F0F05A5A5A)) 
    \bvalid_cnt[1]_i_1 
       (.I0(bvalid_cnt[0]),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .I3(s_axi_bready),
        .I4(axi_bvalid_int_reg_0),
        .I5(BID_FIFO_n_7),
        .O(\bvalid_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC8CCCCCCCC6C6C6C)) 
    \bvalid_cnt[2]_i_1 
       (.I0(bvalid_cnt[0]),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .I3(s_axi_bready),
        .I4(axi_bvalid_int_reg_0),
        .I5(BID_FIFO_n_7),
        .O(\bvalid_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[0]_i_1_n_0 ),
        .Q(bvalid_cnt[0]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[1]_i_1_n_0 ),
        .Q(bvalid_cnt[1]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[2]_i_1_n_0 ),
        .Q(bvalid_cnt[2]),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    curr_awlen_reg_1_or_2_i_1
       (.I0(curr_awlen_reg_1_or_2_i_2_n_0),
        .I1(curr_awlen_reg_1_or_2_i_3_n_0),
        .I2(I_WRAP_BRST_n_19),
        .I3(curr_awlen_reg_1_or_2_i_4_n_0),
        .I4(I_WRAP_BRST_n_17),
        .I5(I_WRAP_BRST_n_20),
        .O(curr_awlen_reg_1_or_20));
  LUT4 #(
    .INIT(16'hB888)) 
    curr_awlen_reg_1_or_2_i_2
       (.I0(axi_awlen_pipe[5]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[5]),
        .O(curr_awlen_reg_1_or_2_i_2_n_0));
  LUT4 #(
    .INIT(16'hB888)) 
    curr_awlen_reg_1_or_2_i_3
       (.I0(axi_awlen_pipe[6]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[6]),
        .O(curr_awlen_reg_1_or_2_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFA00CCCCFA00)) 
    curr_awlen_reg_1_or_2_i_4
       (.I0(s_axi_awlen[4]),
        .I1(axi_awlen_pipe[4]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awvalid),
        .I4(axi_awaddr_full),
        .I5(axi_awlen_pipe[7]),
        .O(curr_awlen_reg_1_or_2_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    curr_awlen_reg_1_or_2_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_awlen_reg_1_or_20),
        .Q(curr_awlen_reg_1_or_2),
        .R(\wrap_burst_total_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    curr_fixed_burst_reg_i_2
       (.I0(s_axi_awburst[0]),
        .I1(axi_awburst_pipe[0]),
        .I2(s_axi_awburst[1]),
        .I3(axi_awaddr_full),
        .I4(axi_awburst_pipe[1]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_2),
        .Q(curr_fixed_burst_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    curr_wrap_burst_reg_i_2
       (.I0(axi_awburst_pipe[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awburst[0]),
        .O(curr_wrap_burst_reg_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    curr_wrap_burst_reg_i_3
       (.I0(axi_awburst_pipe[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awburst[1]),
        .O(curr_wrap_burst_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_1),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
endmodule

module design_2_axi_bram_ctrl_0_0_wrap_brst
   (\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] ,
    curr_wrap_burst_reg_reg,
    curr_fixed_burst_reg_reg,
    E,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ,
    curr_fixed_burst_reg_reg_0,
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ,
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] ,
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ,
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ,
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ,
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] ,
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1]_0 ,
    s_axi_awsize_1_sp_1,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] ,
    wr_data_sm_cs,
    s_axi_wvalid,
    s_axi_aresetn,
    \save_init_bram_addr_ld_reg[12]_0 ,
    curr_wrap_burst_reg,
    curr_wrap_burst_reg_reg_0,
    curr_wrap_burst_reg_reg_1,
    curr_fixed_burst_reg,
    curr_fixed_burst,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ,
    axi_awaddr_full,
    s_axi_awaddr,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_1 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_2 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_3 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_4 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_1 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_1 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ,
    Q,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ,
    curr_narrow_burst,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ,
    narrow_bram_addr_inc_d1,
    narrow_addr_int,
    s_axi_awvalid,
    s_axi_awlen,
    \wrap_burst_total_reg[2]_0 ,
    \wrap_burst_total_reg[1]_0 ,
    s_axi_awsize,
    \wrap_burst_total_reg[2]_1 ,
    bram_addr_a,
    \wrap_burst_total_reg[0]_0 ,
    s_axi_aclk);
  output \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] ;
  output curr_wrap_burst_reg_reg;
  output curr_fixed_burst_reg_reg;
  output [0:0]E;
  output \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  output curr_fixed_burst_reg_reg_0;
  output \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ;
  output \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] ;
  output \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ;
  output \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ;
  output \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ;
  output \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] ;
  output \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1]_0 ;
  output s_axi_awsize_1_sp_1;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] ;
  input [2:0]wr_data_sm_cs;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input \save_init_bram_addr_ld_reg[12]_0 ;
  input curr_wrap_burst_reg;
  input curr_wrap_burst_reg_reg_0;
  input curr_wrap_burst_reg_reg_1;
  input curr_fixed_burst_reg;
  input curr_fixed_burst;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  input axi_awaddr_full;
  input [10:0]s_axi_awaddr;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_1 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_2 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_3 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_4 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_1 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_1 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ;
  input [1:0]Q;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  input curr_narrow_burst;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  input narrow_bram_addr_inc_d1;
  input [1:0]narrow_addr_int;
  input s_axi_awvalid;
  input [3:0]s_axi_awlen;
  input [3:0]\wrap_burst_total_reg[2]_0 ;
  input \wrap_burst_total_reg[1]_0 ;
  input [2:0]s_axi_awsize;
  input [2:0]\wrap_burst_total_reg[2]_1 ;
  input [0:0]bram_addr_a;
  input \wrap_burst_total_reg[0]_0 ;
  input s_axi_aclk;

  wire [0:0]E;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1]_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ;
  wire \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_1 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_1 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_2 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_3 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_4 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_1 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ;
  wire [1:0]Q;
  wire axi_awaddr_full;
  wire [0:0]bram_addr_a;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_reg;
  wire curr_fixed_burst_reg_reg_0;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_reg;
  wire curr_wrap_burst_reg_reg_0;
  wire curr_wrap_burst_reg_reg_1;
  wire [10:1]data0;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc_d1;
  wire [9:0]p_1_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [10:0]s_axi_awaddr;
  wire [3:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awsize_1_sn_1;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire \save_init_bram_addr_ld[12]_i_3_n_0 ;
  wire \save_init_bram_addr_ld[3]_i_2_n_0 ;
  wire \save_init_bram_addr_ld[4]_i_2_n_0 ;
  wire \save_init_bram_addr_ld[5]_i_2_n_0 ;
  wire \save_init_bram_addr_ld_reg[12]_0 ;
  wire [2:0]wr_data_sm_cs;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_1_n_0 ;
  wire \wrap_burst_total[0]_i_3_n_0 ;
  wire \wrap_burst_total[1]_i_1_n_0 ;
  wire \wrap_burst_total[1]_i_5_n_0 ;
  wire \wrap_burst_total[2]_i_1_n_0 ;
  wire \wrap_burst_total[2]_i_3_n_0 ;
  wire \wrap_burst_total_reg[0]_0 ;
  wire \wrap_burst_total_reg[1]_0 ;
  wire [3:0]\wrap_burst_total_reg[2]_0 ;
  wire [2:0]\wrap_burst_total_reg[2]_1 ;

  assign s_axi_awsize_1_sp_1 = s_axi_awsize_1_sn_1;
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 
       (.I0(Q[0]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_1 ),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I5(p_1_in[7]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 
       (.I0(wr_data_sm_cs[1]),
        .I1(wr_data_sm_cs[0]),
        .I2(s_axi_wvalid),
        .I3(wr_data_sm_cs[2]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I5(s_axi_aresetn),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] ));
  LUT5 #(
    .INIT(32'h55557775)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I1(curr_fixed_burst_reg),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ),
        .I3(curr_narrow_burst),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ),
        .O(curr_fixed_burst_reg_reg_0));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3 
       (.I0(Q[1]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I2(Q[0]),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I4(p_1_in[8]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ));
  LUT4 #(
    .INIT(16'h0040)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 
       (.I0(wr_data_sm_cs[2]),
        .I1(wr_data_sm_cs[1]),
        .I2(s_axi_wvalid),
        .I3(wr_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ));
  LUT5 #(
    .INIT(32'hCCCCCC8C)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(curr_narrow_burst),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] ),
        .I3(narrow_addr_int[1]),
        .I4(narrow_addr_int[0]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 
       (.I0(bram_addr_a),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I2(p_1_in[9]),
        .I3(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAA8AAAAAA)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2 
       (.I0(\save_init_bram_addr_ld_reg[12]_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3_n_0 ),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[1]),
        .I4(s_axi_wvalid),
        .I5(wr_data_sm_cs[0]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hABBBFFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ),
        .I3(\save_init_bram_addr_ld[5]_i_2_n_0 ),
        .I4(curr_wrap_burst_reg),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F00A000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_2 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_3 ),
        .I2(wrap_burst_total[1]),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_1 ),
        .I4(wrap_burst_total[0]),
        .I5(wrap_burst_total[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4540FFFF45404540)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_1 
       (.I0(\save_init_bram_addr_ld_reg[12]_0 ),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .I2(axi_awaddr_full),
        .I3(s_axi_awaddr[0]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_1 ),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .O(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_1 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_2 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I3(p_1_in[0]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_3 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_2 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_1 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I4(p_1_in[1]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_4 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_1 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_2 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_3 ),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I5(p_1_in[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I3(p_1_in[3]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_1 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I4(p_1_in[4]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_1 ),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I5(p_1_in[5]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_4 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_1 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_2 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_3 ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_1 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I4(p_1_in[6]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00D8)) 
    curr_fixed_burst_reg_i_1
       (.I0(\save_init_bram_addr_ld_reg[12]_0 ),
        .I1(curr_fixed_burst_reg),
        .I2(curr_fixed_burst),
        .I3(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] ),
        .O(curr_fixed_burst_reg_reg));
  LUT5 #(
    .INIT(32'h00008D88)) 
    curr_wrap_burst_reg_i_1
       (.I0(\save_init_bram_addr_ld_reg[12]_0 ),
        .I1(curr_wrap_burst_reg),
        .I2(curr_wrap_burst_reg_reg_0),
        .I3(curr_wrap_burst_reg_reg_1),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] ),
        .O(curr_wrap_burst_reg_reg));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[10]_i_1 
       (.I0(data0[8]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[8]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[11]_i_1 
       (.I0(data0[9]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[9]),
        .O(p_1_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \save_init_bram_addr_ld[12]_i_1 
       (.I0(\save_init_bram_addr_ld_reg[12]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[12]_i_2 
       (.I0(data0[10]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[10]),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[12]_i_3 
       (.I0(\save_init_bram_addr_ld_reg[12]_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3_n_0 ),
        .O(\save_init_bram_addr_ld[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[3]_i_1 
       (.I0(\save_init_bram_addr_ld[3]_i_2_n_0 ),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[1]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hA282)) 
    \save_init_bram_addr_ld[3]_i_2 
       (.I0(data0[1]),
        .I1(wrap_burst_total[1]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[0]),
        .O(\save_init_bram_addr_ld[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[4]_i_1 
       (.I0(\save_init_bram_addr_ld[4]_i_2_n_0 ),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[2]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hA28A)) 
    \save_init_bram_addr_ld[4]_i_2 
       (.I0(data0[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\save_init_bram_addr_ld[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \save_init_bram_addr_ld[5]_i_1 
       (.I0(data0[3]),
        .I1(\save_init_bram_addr_ld[5]_i_2_n_0 ),
        .I2(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[3]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \save_init_bram_addr_ld[5]_i_2 
       (.I0(wrap_burst_total[0]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[1]),
        .O(\save_init_bram_addr_ld[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[6]_i_1 
       (.I0(data0[4]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[4]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[7]_i_1 
       (.I0(data0[5]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[5]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[8]_i_1 
       (.I0(data0[6]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[6]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[9]_i_1 
       (.I0(data0[7]),
        .I1(\save_init_bram_addr_ld[12]_i_3_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[7]),
        .O(p_1_in[6]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[7]),
        .Q(data0[8]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[8]),
        .Q(data0[9]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[9]),
        .Q(data0[10]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[0]),
        .Q(data0[1]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[1]),
        .Q(data0[2]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[2]),
        .Q(data0[3]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[3]),
        .Q(data0[4]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[4]),
        .Q(data0[5]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[5]),
        .Q(data0[6]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[6]),
        .Q(data0[7]),
        .R(\wrap_burst_total_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8888F88F444444F4)) 
    \wrap_burst_total[0]_i_1 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] ),
        .I1(\wrap_burst_total[1]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I3(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ),
        .I4(\wrap_burst_total[0]_i_3_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ),
        .O(\wrap_burst_total[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \wrap_burst_total[0]_i_2 
       (.I0(\wrap_burst_total_reg[2]_0 [1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[1]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF07F7FFFF)) 
    \wrap_burst_total[0]_i_3 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[1]),
        .I2(axi_awaddr_full),
        .I3(\wrap_burst_total_reg[2]_0 [1]),
        .I4(\wrap_burst_total_reg[1]_0 ),
        .I5(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] ),
        .O(\wrap_burst_total[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hACA0)) 
    \wrap_burst_total[0]_i_4 
       (.I0(\wrap_burst_total_reg[2]_0 [2]),
        .I1(s_axi_awlen[2]),
        .I2(axi_awaddr_full),
        .I3(s_axi_awvalid),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ));
  LUT6 #(
    .INIT(64'h00C800C8FFFF00C8)) 
    \wrap_burst_total[1]_i_1 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ),
        .I1(\wrap_burst_total_reg[1]_0 ),
        .I2(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .I3(\wrap_burst_total[2]_i_3_n_0 ),
        .I4(\wrap_burst_total[1]_i_5_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1]_0 ),
        .O(\wrap_burst_total[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hACA0)) 
    \wrap_burst_total[1]_i_2 
       (.I0(\wrap_burst_total_reg[2]_0 [3]),
        .I1(s_axi_awlen[3]),
        .I2(axi_awaddr_full),
        .I3(s_axi_awvalid),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_4 
       (.I0(\wrap_burst_total_reg[2]_1 [0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[0]),
        .O(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ));
  LUT6 #(
    .INIT(64'h0202002202022222)) 
    \wrap_burst_total[1]_i_5 
       (.I0(s_axi_awsize_1_sn_1),
        .I1(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] ),
        .I2(\wrap_burst_total_reg[2]_0 [3]),
        .I3(s_axi_awlen[3]),
        .I4(axi_awaddr_full),
        .I5(s_axi_awvalid),
        .O(\wrap_burst_total[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    \wrap_burst_total[1]_i_6 
       (.I0(\wrap_burst_total_reg[2]_0 [1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awvalid),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000088A08800)) 
    \wrap_burst_total[2]_i_1 
       (.I0(s_axi_awsize_1_sn_1),
        .I1(\wrap_burst_total_reg[2]_0 [3]),
        .I2(s_axi_awlen[3]),
        .I3(axi_awaddr_full),
        .I4(s_axi_awvalid),
        .I5(\wrap_burst_total[2]_i_3_n_0 ),
        .O(\wrap_burst_total[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C000CAA)) 
    \wrap_burst_total[2]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(\wrap_burst_total_reg[2]_1 [1]),
        .I2(\wrap_burst_total_reg[2]_1 [2]),
        .I3(axi_awaddr_full),
        .I4(s_axi_awsize[2]),
        .I5(\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] ),
        .O(s_axi_awsize_1_sn_1));
  LUT6 #(
    .INIT(64'hBFBBBFFFBFFFBFFF)) 
    \wrap_burst_total[2]_i_3 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ),
        .I2(\wrap_burst_total_reg[2]_0 [1]),
        .I3(axi_awaddr_full),
        .I4(s_axi_awvalid),
        .I5(s_axi_awlen[1]),
        .O(\wrap_burst_total[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4777)) 
    \wrap_burst_total[2]_i_4 
       (.I0(\wrap_burst_total_reg[2]_0 [0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[0]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[0]_i_1_n_0 ),
        .Q(wrap_burst_total[0]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[1]_i_1_n_0 ),
        .Q(wrap_burst_total[1]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[2]_i_1_n_0 ),
        .Q(wrap_burst_total[2]),
        .R(\wrap_burst_total_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module design_2_axi_bram_ctrl_0_0_wrap_brst_1
   (bram_addr_ld_en,
    s_axi_rready_0,
    s_axi_aresetn_0,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg ,
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg ,
    \GEN_NO_RD_CMD_OPT.brst_zero_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ,
    s_axi_arlen_0_sp_1,
    s_axi_arsize_1_sp_1,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] ,
    s_axi_rready,
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] ,
    axi_b2b_brst,
    brst_zero,
    end_brst_rd,
    s_axi_aresetn,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ,
    narrow_bram_addr_inc_d1,
    curr_narrow_burst,
    curr_fixed_burst_reg,
    bram_addr_b,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ,
    s_axi_araddr,
    axi_araddr_full,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ,
    narrow_addr_int,
    Q,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2] ,
    axi_aresetn_d3,
    last_bram_addr,
    rd_addr_sm_cs,
    axi_arlen_pipe_1_or_2,
    disable_b2b_brst,
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ,
    axi_arsize_pipe_max,
    s_axi_arvalid,
    ar_active,
    \save_init_bram_addr_ld_reg[12]_0 ,
    no_ar_ack,
    axi_rd_burst,
    \wrap_burst_total_reg[0]_0 ,
    s_axi_arlen,
    \wrap_burst_total_reg[0]_1 ,
    s_axi_arsize,
    \wrap_burst_total_reg[0]_2 ,
    curr_wrap_burst_reg,
    s_axi_aclk);
  output bram_addr_ld_en;
  output s_axi_rready_0;
  output s_axi_aresetn_0;
  output \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ;
  output \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg ;
  output \GEN_NO_RD_CMD_OPT.end_brst_rd_reg ;
  output \GEN_NO_RD_CMD_OPT.brst_zero_reg ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ;
  output s_axi_arlen_0_sp_1;
  output s_axi_arsize_1_sp_1;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] ;
  input s_axi_rready;
  input \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] ;
  input axi_b2b_brst;
  input brst_zero;
  input end_brst_rd;
  input s_axi_aresetn;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  input narrow_bram_addr_inc_d1;
  input curr_narrow_burst;
  input curr_fixed_burst_reg;
  input [10:0]bram_addr_b;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ;
  input [10:0]s_axi_araddr;
  input axi_araddr_full;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  input [1:0]narrow_addr_int;
  input [3:0]Q;
  input \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2] ;
  input axi_aresetn_d3;
  input last_bram_addr;
  input rd_addr_sm_cs;
  input axi_arlen_pipe_1_or_2;
  input disable_b2b_brst;
  input \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ;
  input axi_arsize_pipe_max;
  input s_axi_arvalid;
  input ar_active;
  input \save_init_bram_addr_ld_reg[12]_0 ;
  input no_ar_ack;
  input axi_rd_burst;
  input \wrap_burst_total_reg[0]_0 ;
  input [3:0]s_axi_arlen;
  input [3:0]\wrap_burst_total_reg[0]_1 ;
  input [1:0]s_axi_arsize;
  input [1:0]\wrap_burst_total_reg[0]_2 ;
  input curr_wrap_burst_reg;
  input s_axi_aclk;

  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_reg ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_reg ;
  wire [3:0]Q;
  wire ar_active;
  wire axi_araddr_full;
  wire axi_aresetn_d3;
  wire axi_arlen_pipe_1_or_2;
  wire axi_arsize_pipe_max;
  wire axi_b2b_brst;
  wire axi_rd_burst;
  wire [10:0]bram_addr_b;
  wire bram_addr_ld_en;
  wire brst_zero;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire [10:1]data0;
  wire disable_b2b_brst;
  wire end_brst_rd;
  wire last_bram_addr;
  wire [1:0]narrow_addr_int;
  wire narrow_bram_addr_inc_d1;
  wire no_ar_ack;
  wire [9:0]p_1_in__0;
  wire rd_addr_sm_cs;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [3:0]s_axi_arlen;
  wire s_axi_arlen_0_sn_1;
  wire [1:0]s_axi_arsize;
  wire s_axi_arsize_1_sn_1;
  wire s_axi_arvalid;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire \save_init_bram_addr_ld[12]_i_3__0_n_0 ;
  wire \save_init_bram_addr_ld[3]_i_2__0_n_0 ;
  wire \save_init_bram_addr_ld[4]_i_2__0_n_0 ;
  wire \save_init_bram_addr_ld[5]_i_2__0_n_0 ;
  wire \save_init_bram_addr_ld_reg[12]_0 ;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_1__0_n_0 ;
  wire \wrap_burst_total[0]_i_3__0_n_0 ;
  wire \wrap_burst_total[1]_i_1__0_n_0 ;
  wire \wrap_burst_total[1]_i_3__0_n_0 ;
  wire \wrap_burst_total[1]_i_4__0_n_0 ;
  wire \wrap_burst_total[2]_i_1__0_n_0 ;
  wire \wrap_burst_total_reg[0]_0 ;
  wire [3:0]\wrap_burst_total_reg[0]_1 ;
  wire [1:0]\wrap_burst_total_reg[0]_2 ;

  assign s_axi_arlen_0_sp_1 = s_axi_arlen_0_sn_1;
  assign s_axi_arsize_1_sp_1 = s_axi_arsize_1_sn_1;
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_2 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2] ),
        .I1(axi_rd_burst),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEFFAEAE)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe[2]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg ),
        .I1(brst_zero),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ),
        .O(\GEN_NO_RD_CMD_OPT.brst_zero_reg ));
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe[2]_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 
       (.I0(bram_addr_b[8]),
        .I1(bram_addr_b[6]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ),
        .I3(bram_addr_b[7]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I5(p_1_in__0[7]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ));
  LUT6 #(
    .INIT(64'h55555755555557FF)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I2(narrow_bram_addr_inc_d1),
        .I3(curr_narrow_burst),
        .I4(curr_fixed_burst_reg),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg ));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 
       (.I0(bram_addr_b[9]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ),
        .I2(bram_addr_b[8]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I4(p_1_in__0[8]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE00F200)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(s_axi_rready_0),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF7FFF77)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] ),
        .I2(axi_b2b_brst),
        .I3(brst_zero),
        .I4(end_brst_rd),
        .O(s_axi_rready_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF31313101)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7 
       (.I0(\GEN_NO_RD_CMD_OPT.end_brst_rd_reg ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2] ),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hE2)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 
       (.I0(p_1_in__0[9]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I2(bram_addr_b[10]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] ));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDD111D1)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_1 
       (.I0(bram_addr_b[0]),
        .I1(bram_addr_ld_en),
        .I2(s_axi_araddr[0]),
        .I3(axi_araddr_full),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000005557)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2 
       (.I0(curr_narrow_burst),
        .I1(narrow_bram_addr_inc_d1),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_3_n_0 ),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555555FFDFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_3 
       (.I0(curr_wrap_burst_reg),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F00A000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_4 
       (.I0(bram_addr_b[1]),
        .I1(bram_addr_b[2]),
        .I2(wrap_burst_total[1]),
        .I3(bram_addr_b[0]),
        .I4(wrap_burst_total[0]),
        .I5(wrap_burst_total[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1 
       (.I0(bram_addr_b[1]),
        .I1(bram_addr_b[0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I3(p_1_in__0[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 
       (.I0(bram_addr_b[2]),
        .I1(bram_addr_b[0]),
        .I2(bram_addr_b[1]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I4(p_1_in__0[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 
       (.I0(bram_addr_b[3]),
        .I1(bram_addr_b[1]),
        .I2(bram_addr_b[0]),
        .I3(bram_addr_b[2]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I5(p_1_in__0[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 
       (.I0(bram_addr_b[4]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I3(p_1_in__0[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 
       (.I0(bram_addr_b[5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ),
        .I2(bram_addr_b[4]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I4(p_1_in__0[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 
       (.I0(bram_addr_b[6]),
        .I1(bram_addr_b[4]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ),
        .I3(bram_addr_b[5]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I5(p_1_in__0[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2 
       (.I0(bram_addr_b[3]),
        .I1(bram_addr_b[1]),
        .I2(bram_addr_b[0]),
        .I3(bram_addr_b[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 
       (.I0(bram_addr_b[7]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ),
        .I2(bram_addr_b[6]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2_n_0 ),
        .I4(p_1_in__0[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] ),
        .I1(s_axi_rready),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_2 
       (.I0(axi_arlen_pipe_1_or_2),
        .I1(disable_b2b_brst),
        .I2(axi_araddr_full),
        .I3(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ),
        .I4(axi_arsize_pipe_max),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_2 
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] ),
        .I3(s_axi_rready),
        .I4(Q[2]),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_reg ));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_b_INST_0
       (.I0(s_axi_aresetn),
        .O(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[10]_i_1__0 
       (.I0(data0[8]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[8]),
        .O(p_1_in__0[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[11]_i_1__0 
       (.I0(data0[9]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[9]),
        .O(p_1_in__0[8]));
  LUT5 #(
    .INIT(32'h080808AA)) 
    \save_init_bram_addr_ld[12]_i_1__0 
       (.I0(axi_aresetn_d3),
        .I1(last_bram_addr),
        .I2(\GEN_NO_RD_CMD_OPT.brst_zero_reg ),
        .I3(rd_addr_sm_cs),
        .I4(\save_init_bram_addr_ld[12]_i_3__0_n_0 ),
        .O(bram_addr_ld_en));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[12]_i_2__0 
       (.I0(data0[10]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[10]),
        .O(p_1_in__0[9]));
  LUT5 #(
    .INIT(32'hFFFFFFF1)) 
    \save_init_bram_addr_ld[12]_i_3__0 
       (.I0(axi_araddr_full),
        .I1(s_axi_arvalid),
        .I2(ar_active),
        .I3(\save_init_bram_addr_ld_reg[12]_0 ),
        .I4(no_ar_ack),
        .O(\save_init_bram_addr_ld[12]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[3]_i_1__0 
       (.I0(\save_init_bram_addr_ld[3]_i_2__0_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[1]),
        .O(p_1_in__0[0]));
  LUT4 #(
    .INIT(16'hA08A)) 
    \save_init_bram_addr_ld[3]_i_2__0 
       (.I0(data0[1]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\save_init_bram_addr_ld[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[4]_i_1__0 
       (.I0(\save_init_bram_addr_ld[4]_i_2__0_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[2]),
        .O(p_1_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA28A)) 
    \save_init_bram_addr_ld[4]_i_2__0 
       (.I0(data0[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\save_init_bram_addr_ld[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \save_init_bram_addr_ld[5]_i_1__0 
       (.I0(data0[3]),
        .I1(\save_init_bram_addr_ld[5]_i_2__0_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[3]),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \save_init_bram_addr_ld[5]_i_2__0 
       (.I0(wrap_burst_total[1]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[0]),
        .O(\save_init_bram_addr_ld[5]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[6]_i_1__0 
       (.I0(data0[4]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[4]),
        .O(p_1_in__0[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[7]_i_1__0 
       (.I0(data0[5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[5]),
        .O(p_1_in__0[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[8]_i_1__0 
       (.I0(data0[6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[6]),
        .O(p_1_in__0[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[9]_i_1__0 
       (.I0(data0[7]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[7]),
        .O(p_1_in__0[6]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in__0[7]),
        .Q(data0[8]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in__0[8]),
        .Q(data0[9]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in__0[9]),
        .Q(data0[10]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in__0[0]),
        .Q(data0[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in__0[1]),
        .Q(data0[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in__0[2]),
        .Q(data0[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in__0[3]),
        .Q(data0[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in__0[4]),
        .Q(data0[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in__0[5]),
        .Q(data0[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in__0[6]),
        .Q(data0[7]),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_7
       (.I0(\wrap_burst_total_reg[0]_2 [0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arsize[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ));
  LUT6 #(
    .INIT(64'h9000FFFF90009000)) 
    \wrap_burst_total[0]_i_1__0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ),
        .I2(s_axi_arlen_0_sn_1),
        .I3(s_axi_arsize_1_sn_1),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ),
        .I5(\wrap_burst_total[0]_i_3__0_n_0 ),
        .O(\wrap_burst_total[0]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[0]_i_2__0 
       (.I0(\wrap_burst_total_reg[0]_2 [1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arsize[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ));
  LUT6 #(
    .INIT(64'h4000140000000000)) 
    \wrap_burst_total[0]_i_3__0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ),
        .I1(\wrap_burst_total_reg[0]_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ),
        .O(\wrap_burst_total[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE2000000)) 
    \wrap_burst_total[1]_i_1__0 
       (.I0(s_axi_arlen[1]),
        .I1(axi_araddr_full),
        .I2(\wrap_burst_total_reg[0]_1 [1]),
        .I3(s_axi_arlen_0_sn_1),
        .I4(s_axi_arsize_1_sn_1),
        .I5(\wrap_burst_total[1]_i_3__0_n_0 ),
        .O(\wrap_burst_total[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \wrap_burst_total[1]_i_2__0 
       (.I0(s_axi_arlen[0]),
        .I1(\wrap_burst_total_reg[0]_1 [0]),
        .I2(s_axi_arlen[3]),
        .I3(axi_araddr_full),
        .I4(\wrap_burst_total_reg[0]_1 [3]),
        .O(s_axi_arlen_0_sn_1));
  LUT6 #(
    .INIT(64'h0000000A00000008)) 
    \wrap_burst_total[1]_i_3__0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ),
        .I2(\wrap_burst_total[1]_i_4__0_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] ),
        .I5(\wrap_burst_total_reg[0]_0 ),
        .O(\wrap_burst_total[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \wrap_burst_total[1]_i_4__0 
       (.I0(s_axi_arlen[0]),
        .I1(\wrap_burst_total_reg[0]_1 [0]),
        .I2(s_axi_arlen[1]),
        .I3(axi_araddr_full),
        .I4(\wrap_burst_total_reg[0]_1 [1]),
        .O(\wrap_burst_total[1]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \wrap_burst_total[2]_i_1__0 
       (.I0(s_axi_arsize_1_sn_1),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ),
        .O(\wrap_burst_total[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000000C000CAA)) 
    \wrap_burst_total[2]_i_2__0 
       (.I0(s_axi_arsize[0]),
        .I1(\wrap_burst_total_reg[0]_2 [0]),
        .I2(\wrap_burst_total_reg[0]_2 [1]),
        .I3(axi_araddr_full),
        .I4(s_axi_arsize[1]),
        .I5(\wrap_burst_total_reg[0]_0 ),
        .O(s_axi_arsize_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[2]_i_3__0 
       (.I0(\wrap_burst_total_reg[0]_1 [0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[2]_i_4__0 
       (.I0(\wrap_burst_total_reg[0]_1 [1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[2]_i_5 
       (.I0(\wrap_burst_total_reg[0]_1 [3]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[2]_i_6 
       (.I0(\wrap_burst_total_reg[0]_1 [2]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[0]_i_1__0_n_0 ),
        .Q(wrap_burst_total[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[1]_i_1__0_n_0 ),
        .Q(wrap_burst_total[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[2]_i_1__0_n_0 ),
        .Q(wrap_burst_total[2]),
        .R(s_axi_aresetn_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
