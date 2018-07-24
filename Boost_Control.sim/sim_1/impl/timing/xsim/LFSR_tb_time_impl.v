// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jul 24 09:22:02 2018
// Host        : DESKTOP-EPHBFNF running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Chris/Desktop/Research/Boost_Control/Boost_Control.sim/sim_1/impl/timing/xsim/LFSR_tb_time_impl.v
// Design      : preset_LFSR
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a50tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module LFSR
   (Q,
    reset_IBUF,
    clk_out1,
    lopt);
  output [0:0]Q;
  input reset_IBUF;
  input clk_out1;
  output lopt;

  wire [0:0]Q;
  wire clk_out1;
  wire [23:1]lfsr;
  wire \lfsr_reg[0]_lopt_replica_1 ;
  wire \lfsr_reg[6]_srl2____inst1_lfsr_reg_s_0_n_0 ;
  wire \lfsr_reg[7]_inst1_lfsr_reg_s_1_n_0 ;
  wire lfsr_reg_gate_n_0;
  wire lfsr_reg_s_0_n_0;
  wire lfsr_reg_s_1_n_0;
  wire lfsr_reg_s_n_0;
  wire [0:0]n_lfsr;
  wire reset_IBUF;

  assign lopt = \lfsr_reg[0]_lopt_replica_1 ;
  LUT4 #(
    .INIT(16'h6996)) 
    \inst1/ 
       (.I0(lfsr[22]),
        .I1(lfsr[23]),
        .I2(lfsr[16]),
        .I3(lfsr[21]),
        .O(n_lfsr));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(n_lfsr),
        .Q(Q),
        .S(reset_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[0]_lopt_replica 
       (.C(clk_out1),
        .CE(1'b1),
        .D(n_lfsr),
        .Q(\lfsr_reg[0]_lopt_replica_1 ),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[9]),
        .Q(lfsr[10]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[10]),
        .Q(lfsr[11]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[11]),
        .Q(lfsr[12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[12]),
        .Q(lfsr[13]),
        .R(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[13]),
        .Q(lfsr[14]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[14]),
        .Q(lfsr[15]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[15]),
        .Q(lfsr[16]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[16]),
        .Q(lfsr[17]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[17]),
        .Q(lfsr[18]),
        .R(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[18]),
        .Q(lfsr[19]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(Q),
        .Q(lfsr[1]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[20] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[19]),
        .Q(lfsr[20]),
        .R(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[21] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[20]),
        .Q(lfsr[21]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[22] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[21]),
        .Q(lfsr[22]),
        .R(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[23] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[22]),
        .Q(lfsr[23]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[1]),
        .Q(lfsr[2]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[2]),
        .Q(lfsr[3]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[3]),
        .Q(lfsr[4]),
        .R(reset_IBUF));
  (* srl_bus_name = "\inst1/lfsr_reg " *) 
  (* srl_name = "\inst1/lfsr_reg[6]_srl2____inst1_lfsr_reg_s_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \lfsr_reg[6]_srl2____inst1_lfsr_reg_s_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_out1),
        .D(lfsr[4]),
        .Q(\lfsr_reg[6]_srl2____inst1_lfsr_reg_s_0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[7]_inst1_lfsr_reg_s_1 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\lfsr_reg[6]_srl2____inst1_lfsr_reg_s_0_n_0 ),
        .Q(\lfsr_reg[7]_inst1_lfsr_reg_s_1_n_0 ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \lfsr_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr_reg_gate_n_0),
        .Q(lfsr[8]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \lfsr_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr[8]),
        .Q(lfsr[9]),
        .R(reset_IBUF));
  LUT2 #(
    .INIT(4'hE)) 
    lfsr_reg_gate
       (.I0(\lfsr_reg[7]_inst1_lfsr_reg_s_1_n_0 ),
        .I1(lfsr_reg_s_1_n_0),
        .O(lfsr_reg_gate_n_0));
  FDSE #(
    .INIT(1'b1)) 
    lfsr_reg_s
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b0),
        .Q(lfsr_reg_s_n_0),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    lfsr_reg_s_0
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr_reg_s_n_0),
        .Q(lfsr_reg_s_0_n_0),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    lfsr_reg_s_1
       (.C(clk_out1),
        .CE(1'b1),
        .D(lfsr_reg_s_0_n_0),
        .Q(lfsr_reg_s_1_n_0),
        .S(reset_IBUF));
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

(* ECO_CHECKSUM = "5504f632" *) 
(* NotValidForBitStream *)
module preset_LFSR
   (sys_clk_p,
    sys_clk_n,
    reset,
    clk,
    lsb);
  input sys_clk_p;
  input sys_clk_n;
  input reset;
  output clk;
  output lsb;

  wire clk;
  wire clk_OBUF;
  wire clk_in;
  wire lopt;
  wire lsb;
  wire reset;
  wire reset_IBUF;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire sys_clk_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR = 0 *) wire sys_clk_p;
  wire [0:0]NLW_inst1_Q_UNCONNECTED;

initial begin
 $sdf_annotate("LFSR_tb_time_impl.sdf",,,,"tool_control");
end
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS IBUFDS_inst0
       (.I(sys_clk_p),
        .IB(sys_clk_n),
        .O(clk_in));
  OBUF clk_OBUF_inst
       (.I(clk_OBUF),
        .O(clk));
  clk_wiz_0 inst0
       (.clk_in1(clk_in),
        .clk_out1(clk_OBUF));
  LFSR inst1
       (.Q(NLW_inst1_Q_UNCONNECTED[0]),
        .clk_out1(clk_OBUF),
        .lopt(lopt),
        .reset_IBUF(reset_IBUF));
  OBUF lsb_OBUF_inst
       (.I(lopt),
        .O(lsb));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
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
