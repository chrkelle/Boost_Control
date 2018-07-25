// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jul 25 13:33:34 2018
// Host        : DESKTOP-EPHBFNF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Chris/Desktop/Research/Boost_Control/Boost_Control.srcs/sources_1/ip/step_counter/step_counter_stub.v
// Design      : step_counter
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tfgg484-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *)
module step_counter(CLK, SINIT, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,SINIT,Q[15:0]" */;
  input CLK;
  input SINIT;
  output [15:0]Q;
endmodule
