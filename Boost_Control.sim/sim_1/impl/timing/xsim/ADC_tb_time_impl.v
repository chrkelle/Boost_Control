// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Jul 23 09:45:27 2018
// Host        : DESKTOP-EPHBFNF running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Chris/Desktop/Research/Boost_Control/Boost_Control.sim/sim_1/impl/timing/xsim/ADC_tb_time_impl.v
// Design      : preset
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a50tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ADC_v5
   (cnv,
    ADC_out_OBUF,
    adc_done_OBUF,
    aclk,
    SR,
    clk_out1,
    D,
    db_n,
    dco_n,
    start_adc_IBUF,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output cnv;
  output [9:0]ADC_out_OBUF;
  output adc_done_OBUF;
  output aclk;
  input [0:0]SR;
  input clk_out1;
  input [0:0]D;
  input [0:0]db_n;
  input [0:0]dco_n;
  input start_adc_IBUF;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire [9:0]ADC_out_OBUF;
  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire [0:0]SR;
  wire aclk;
  wire aclk_i_1_n_0;
  wire adc_done_OBUF;
  wire adc_done_i_1_n_0;
  wire adc_done_i_2_n_0;
  wire adc_done_i_3_n_0;
  wire adc_done_i_4_n_0;
  wire clk_out1;
  wire cnv;
  wire cnv_i_2_n_0;
  wire cnv_i_3_n_0;
  wire \count[3]_i_2_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire \count[3]_i_4_n_0 ;
  wire \count[3]_i_5_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[5]_i_2_n_0 ;
  wire \count[5]_i_3_n_0 ;
  wire \count[5]_i_4_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data_reg[10]_lopt_replica_1 ;
  wire \data_reg[11]_lopt_replica_1 ;
  wire \data_reg[12]_lopt_replica_1 ;
  wire \data_reg[13]_lopt_replica_1 ;
  wire \data_reg[8]_lopt_replica_1 ;
  wire \data_reg[9]_lopt_replica_1 ;
  wire [0:0]db_n;
  wire [0:0]dco_n;
  wire dcop3;
  wire dcop4;
  wire n_cnv;
  wire [5:0]n_count;
  wire p_0_in1_in;
  wire start_adc_IBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire sync_n_4;
  wire sync_n_5;
  wire sync_out_dap2;
  wire sync_out_dbp2;

  assign lopt = \data_reg[10]_lopt_replica_1 ;
  assign lopt_1 = \data_reg[11]_lopt_replica_1 ;
  assign lopt_2 = \data_reg[12]_lopt_replica_1 ;
  assign lopt_3 = \data_reg[13]_lopt_replica_1 ;
  assign lopt_4 = \data_reg[8]_lopt_replica_1 ;
  assign lopt_5 = \data_reg[9]_lopt_replica_1 ;
  LUT4 #(
    .INIT(16'h07F0)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h06AA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h42AA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF08)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state[2]_i_4_n_0 ),
        .I4(\FSM_sequential_state[2]_i_5_n_0 ),
        .I5(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF008000)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(p_0_in1_in),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80808000)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(state[0]),
        .I3(\count_reg_n_0_[2] ),
        .I4(p_0_in1_in),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00F2000200020002)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(start_adc_IBUF),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEF4FEF0FEF4FE00)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[4] ),
        .I5(\count_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100,iSTATE4:101," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000040)) 
    aclk_i_1
       (.I0(adc_done_i_2_n_0),
        .I1(\count_reg_n_0_[0] ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(aclk),
        .O(aclk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    aclk_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(aclk_i_1_n_0),
        .Q(aclk),
        .R(SR));
  LUT6 #(
    .INIT(64'h404040FF40404000)) 
    adc_done_i_1
       (.I0(state[1]),
        .I1(state[2]),
        .I2(adc_done_i_2_n_0),
        .I3(adc_done_i_3_n_0),
        .I4(adc_done_i_4_n_0),
        .I5(adc_done_OBUF),
        .O(adc_done_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    adc_done_i_2
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[3] ),
        .O(adc_done_i_2_n_0));
  LUT6 #(
    .INIT(64'h4444444044404440)) 
    adc_done_i_3
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[5] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[3] ),
        .O(adc_done_i_3_n_0));
  LUT6 #(
    .INIT(64'h0808080803000000)) 
    adc_done_i_4
       (.I0(\count_reg_n_0_[3] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(p_0_in1_in),
        .I4(adc_done_OBUF),
        .I5(state[2]),
        .O(adc_done_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    adc_done_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(adc_done_i_1_n_0),
        .Q(adc_done_OBUF),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000C0A)) 
    cnv_i_1
       (.I0(start_adc_IBUF),
        .I1(cnv_i_3_n_0),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(n_cnv));
  LUT2 #(
    .INIT(4'h4)) 
    cnv_i_2
       (.I0(state[0]),
        .I1(start_adc_IBUF),
        .O(cnv_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFF8)) 
    cnv_i_3
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[4] ),
        .O(cnv_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cnv_reg
       (.C(clk_out1),
        .CE(n_cnv),
        .D(cnv_i_2_n_0),
        .Q(cnv),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000AAAAABFB)) 
    \count[0]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(start_adc_IBUF),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(\count_reg_n_0_[0] ),
        .O(n_count[0]));
  LUT6 #(
    .INIT(64'h0000FFBAFFBA0000)) 
    \count[1]_i_1 
       (.I0(\count[3]_i_2_n_0 ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count[3]_i_3_n_0 ),
        .I3(\count[3]_i_4_n_0 ),
        .I4(p_0_in1_in),
        .I5(\count_reg_n_0_[0] ),
        .O(n_count[1]));
  LUT5 #(
    .INIT(32'h0EE0E0E0)) 
    \count[2]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(\count[3]_i_4_n_0 ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(p_0_in1_in),
        .O(n_count[2]));
  LUT6 #(
    .INIT(64'h0000FFBAFFBA0000)) 
    \count[3]_i_1 
       (.I0(\count[3]_i_2_n_0 ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count[3]_i_3_n_0 ),
        .I3(\count[3]_i_4_n_0 ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count[3]_i_5_n_0 ),
        .O(n_count[3]));
  LUT6 #(
    .INIT(64'h00000000222E2E2E)) 
    \count[3]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\count_reg_n_0_[5] ),
        .I3(\count_reg_n_0_[4] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(state[2]),
        .O(\count[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h001000100010FF10)) 
    \count[3]_i_3 
       (.I0(p_0_in1_in),
        .I1(\count_reg_n_0_[2] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[4] ),
        .O(\count[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h001D)) 
    \count[3]_i_4 
       (.I0(start_adc_IBUF),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\count[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \count[3]_i_5 
       (.I0(p_0_in1_in),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\count[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFB00000000)) 
    \count[4]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(start_adc_IBUF),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(\count[4]_i_2_n_0 ),
        .O(n_count[4]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2 
       (.I0(\count_reg_n_0_[3] ),
        .I1(p_0_in1_in),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[4] ),
        .O(\count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABFB00000000)) 
    \count[5]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(start_adc_IBUF),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(\count[5]_i_3_n_0 ),
        .O(n_count[5]));
  LUT6 #(
    .INIT(64'h0500FFFF05004540)) 
    \count[5]_i_2 
       (.I0(state[2]),
        .I1(\count[5]_i_4_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\count_reg_n_0_[5] ),
        .I5(\count[3]_i_3_n_0 ),
        .O(\count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_3 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(p_0_in1_in),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[2] ),
        .I5(\count_reg_n_0_[5] ),
        .O(\count[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \count[5]_i_4 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[4] ),
        .O(\count[5]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(n_count[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(n_count[1]),
        .Q(p_0_in1_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(n_count[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(n_count[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(n_count[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(n_count[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hEB28FFFFEB280000)) 
    \data[6]_i_1 
       (.I0(sync_out_dbp2),
        .I1(dcop3),
        .I2(dcop4),
        .I3(db_n),
        .I4(sync_n_4),
        .I5(ADC_out_OBUF[0]),
        .O(\data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEB28FFFFEB280000)) 
    \data[7]_i_1 
       (.I0(sync_out_dap2),
        .I1(dcop3),
        .I2(dcop4),
        .I3(D),
        .I4(sync_n_4),
        .I5(ADC_out_OBUF[1]),
        .O(\data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[2]),
        .Q(ADC_out_OBUF[4]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[10]_lopt_replica 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[2]),
        .Q(\data_reg[10]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[3]),
        .Q(ADC_out_OBUF[5]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[11]_lopt_replica 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[3]),
        .Q(\data_reg[11]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[4]),
        .Q(ADC_out_OBUF[6]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[12]_lopt_replica 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[4]),
        .Q(\data_reg[12]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[5]),
        .Q(ADC_out_OBUF[7]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[13]_lopt_replica 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[5]),
        .Q(\data_reg[13]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[6]),
        .Q(ADC_out_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[7]),
        .Q(ADC_out_OBUF[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\data[6]_i_1_n_0 ),
        .Q(ADC_out_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\data[7]_i_1_n_0 ),
        .Q(ADC_out_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[0]),
        .Q(ADC_out_OBUF[2]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[8]_lopt_replica 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[0]),
        .Q(\data_reg[8]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[1]),
        .Q(ADC_out_OBUF[3]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[9]_lopt_replica 
       (.C(clk_out1),
        .CE(sync_n_5),
        .D(ADC_out_OBUF[1]),
        .Q(\data_reg[9]_lopt_replica_1 ),
        .R(1'b0));
  sync_reg sync
       (.D(D),
        .E(sync_n_5),
        .clk_out1(clk_out1),
        .\data_reg[6] (sync_n_4),
        .db_n(db_n),
        .dco_n(dco_n),
        .dcop3(dcop3),
        .dcop4(dcop4),
        .out(state),
        .sync_out_dap2(sync_out_dap2),
        .sync_out_dbp2(sync_out_dbp2));
endmodule

module clk_wiz_0
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    clk_in1);
  output clk_out1;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_plle2_adv_inst_DRDY_UNCONNECTED;
  wire NLW_plle2_adv_inst_LOCKED_UNCONNECTED;
  wire [15:0]NLW_plle2_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(6),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(5.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(3),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    plle2_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT1(NLW_plle2_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT2(NLW_plle2_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT3(NLW_plle2_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_plle2_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_plle2_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_plle2_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_plle2_adv_inst_LOCKED_UNCONNECTED),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

(* ECO_CHECKSUM = "f1fed361" *) 
(* NotValidForBitStream *)
module preset
   (sys_clk_p,
    sys_clk_n,
    reset,
    dco_p,
    dco_n,
    da_p,
    da_n,
    db_p,
    db_n,
    start_adc,
    aclk_p,
    aclk_n,
    cnv_p,
    cnv_n,
    tp,
    tl,
    ADC_out,
    adc_done,
    clk);
  input sys_clk_p;
  input sys_clk_n;
  input reset;
  input dco_p;
  input dco_n;
  input da_p;
  input da_n;
  input db_p;
  input db_n;
  input start_adc;
  output aclk_p;
  output aclk_n;
  output cnv_p;
  output cnv_n;
  output tp;
  output tl;
  output [15:0]ADC_out;
  output adc_done;
  output clk;

  wire [15:0]ADC_out;
  wire [15:6]ADC_out_OBUF;
  wire aclk;
  wire aclk_n;
  wire aclk_p;
  wire adc_done;
  wire adc_done_OBUF;
  wire clk;
  wire clk_OBUF;
  wire clk_in;
  wire cnv_n;
  wire cnv_p;
  wire cnv_p_OBUF;
  wire da;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire da_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire da_p;
  wire db;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire db_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire db_p;
  wire dco;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire dco_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire dco_p;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire reset;
  wire reset_IBUF;
  wire start_adc;
  wire start_adc_IBUF;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire sys_clk_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire sys_clk_p;
  wire tl;
  wire tp;
  wire [7:2]NLW_adc_ADC_out_OBUF_UNCONNECTED;

initial begin
 $sdf_annotate("ADC_tb_time_impl.sdf",,,,"tool_control");
end
  OBUFT \ADC_out_OBUF[0]_inst 
       (.I(1'b0),
        .O(ADC_out[0]),
        .T(1'b1));
  OBUF \ADC_out_OBUF[10]_inst 
       (.I(lopt),
        .O(ADC_out[10]));
  OBUF \ADC_out_OBUF[11]_inst 
       (.I(lopt_1),
        .O(ADC_out[11]));
  OBUF \ADC_out_OBUF[12]_inst 
       (.I(lopt_2),
        .O(ADC_out[12]));
  OBUF \ADC_out_OBUF[13]_inst 
       (.I(lopt_3),
        .O(ADC_out[13]));
  OBUF \ADC_out_OBUF[14]_inst 
       (.I(ADC_out_OBUF[14]),
        .O(ADC_out[14]));
  OBUF \ADC_out_OBUF[15]_inst 
       (.I(ADC_out_OBUF[15]),
        .O(ADC_out[15]));
  OBUFT \ADC_out_OBUF[1]_inst 
       (.I(1'b0),
        .O(ADC_out[1]),
        .T(1'b1));
  OBUFT \ADC_out_OBUF[2]_inst 
       (.I(1'b0),
        .O(ADC_out[2]),
        .T(1'b1));
  OBUFT \ADC_out_OBUF[3]_inst 
       (.I(1'b0),
        .O(ADC_out[3]),
        .T(1'b1));
  OBUFT \ADC_out_OBUF[4]_inst 
       (.I(1'b0),
        .O(ADC_out[4]),
        .T(1'b1));
  OBUFT \ADC_out_OBUF[5]_inst 
       (.I(1'b0),
        .O(ADC_out[5]),
        .T(1'b1));
  OBUF \ADC_out_OBUF[6]_inst 
       (.I(ADC_out_OBUF[6]),
        .O(ADC_out[6]));
  OBUF \ADC_out_OBUF[7]_inst 
       (.I(ADC_out_OBUF[7]),
        .O(ADC_out[7]));
  OBUF \ADC_out_OBUF[8]_inst 
       (.I(lopt_4),
        .O(ADC_out[8]));
  OBUF \ADC_out_OBUF[9]_inst 
       (.I(lopt_5),
        .O(ADC_out[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS IBUFDS_inst0
       (.I(sys_clk_p),
        .IB(sys_clk_n),
        .O(clk_in));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS IBUFDS_inst1
       (.I(da_p),
        .IB(da_n),
        .O(da));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS IBUFDS_inst3
       (.I(db_p),
        .IB(db_n),
        .O(db));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS IBUFDS_inst4
       (.I(dco_p),
        .IB(dco_n),
        .O(dco));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  OBUFDS OBUFDS_inst0
       (.I(aclk),
        .O(aclk_p),
        .OB(aclk_n));
  ADC_v5 adc
       (.ADC_out_OBUF({ADC_out_OBUF[15:14],NLW_adc_ADC_out_OBUF_UNCONNECTED[7:2],ADC_out_OBUF[7:6]}),
        .D(da),
        .SR(reset_IBUF),
        .aclk(aclk),
        .adc_done_OBUF(adc_done_OBUF),
        .clk_out1(clk_OBUF),
        .cnv(cnv_p_OBUF),
        .db_n(db),
        .dco_n(dco),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .start_adc_IBUF(start_adc_IBUF));
  OBUF adc_done_OBUF_inst
       (.I(adc_done_OBUF),
        .O(adc_done));
  OBUF clk_OBUF_inst
       (.I(clk_OBUF),
        .O(clk));
  OBUFT cnv_n_OBUF_inst
       (.I(1'b0),
        .O(cnv_n),
        .T(1'b1));
  OBUF cnv_p_OBUF_inst
       (.I(cnv_p_OBUF),
        .O(cnv_p));
  clk_wiz_0 inst0
       (.clk_in1(clk_in),
        .clk_out1(clk_OBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF start_adc_IBUF_inst
       (.I(start_adc),
        .O(start_adc_IBUF));
  OBUF tl_OBUF_inst
       (.I(1'b1),
        .O(tl));
  OBUF tp_OBUF_inst
       (.I(1'b0),
        .O(tp));
endmodule

module sync_reg
   (dcop3,
    dcop4,
    sync_out_dbp2,
    sync_out_dap2,
    \data_reg[6] ,
    E,
    clk_out1,
    out,
    D,
    db_n,
    dco_n);
  output dcop3;
  output dcop4;
  output sync_out_dbp2;
  output sync_out_dap2;
  output \data_reg[6] ;
  output [0:0]E;
  input clk_out1;
  input [2:0]out;
  input [0:0]D;
  input [0:0]db_n;
  input [0:0]dco_n;

  wire [0:0]D;
  wire [0:0]E;
  wire clk_out1;
  wire \data_reg[6] ;
  wire [0:0]db_n;
  wire [0:0]dco_n;
  wire dcop3;
  wire dcop4;
  wire [2:0]out;
  (* HBLKNM = "sync_reg" *) (* SHIFT_EXTRACT = "NO" *) (* async_reg = "true" *) wire [1:0]sreg_da;
  (* HBLKNM = "sync_reg" *) (* SHIFT_EXTRACT = "NO" *) (* async_reg = "true" *) wire [1:0]sreg_db;
  (* HBLKNM = "sync_reg" *) (* SHIFT_EXTRACT = "NO" *) (* async_reg = "true" *) wire [3:0]sreg_dco;
  wire sync_out_dap2;
  wire sync_out_dbp2;

  LUT2 #(
    .INIT(4'h6)) 
    \data[15]_i_1 
       (.I0(dcop3),
        .I1(dcop4),
        .O(E));
  LUT5 #(
    .INIT(32'h08FFFF08)) 
    \data[7]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[2]),
        .I3(dcop4),
        .I4(dcop3),
        .O(\data_reg[6] ));
  initial assign \sreg_da_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_da_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(D),
        .Q(sreg_da[0]),
        .R(1'b0));
  initial assign \sreg_da_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_da_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(sreg_da[0]),
        .Q(sreg_da[1]),
        .R(1'b0));
  initial assign \sreg_db_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_db_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(db_n),
        .Q(sreg_db[0]),
        .R(1'b0));
  initial assign \sreg_db_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_db_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(sreg_db[0]),
        .Q(sreg_db[1]),
        .R(1'b0));
  initial assign \sreg_dco_reg[0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_dco_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(dco_n),
        .Q(sreg_dco[0]),
        .R(1'b0));
  initial assign \sreg_dco_reg[1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_dco_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(sreg_dco[0]),
        .Q(sreg_dco[1]),
        .R(1'b0));
  initial assign \sreg_dco_reg[2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_dco_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(sreg_dco[1]),
        .Q(sreg_dco[2]),
        .R(1'b0));
  initial assign \sreg_dco_reg[3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* HBLKNM = "sync_reg" *) 
  (* KEEP = "yes" *) 
  (* SHIFT_EXTRACT = "NO" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \sreg_dco_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(sreg_dco[2]),
        .Q(sreg_dco[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_dap2_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(sreg_da[1]),
        .Q(sync_out_dap2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_dbp2_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(sreg_db[1]),
        .Q(sync_out_dbp2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_dcop3_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(sreg_dco[2]),
        .Q(dcop3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sync_out_dcop4_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(sreg_dco[3]),
        .Q(dcop4),
        .R(1'b0));
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
