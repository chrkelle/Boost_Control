// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jul 25 13:33:34 2018
// Host        : DESKTOP-EPHBFNF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Chris/Desktop/Research/Boost_Control/Boost_Control.srcs/sources_1/ip/step_counter/step_counter_sim_netlist.v
// Design      : step_counter
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "step_counter,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module step_counter
   (CLK,
    SINIT,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sinit_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sinit_intf, LAYERED_METADATA undef" *) input SINIT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [15:0]Q;

  wire CLK;
  wire [15:0]Q;
  wire SINIT;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  step_counter_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(SINIT),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "1" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "16" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module step_counter_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [15:0]L;
  output THRESH0;
  output [15:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [15:0]Q;
  wire SINIT;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "1" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  step_counter_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(SINIT),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HXV4h5+M0Gyv7vvpLcg9doICq0dE9GVjJBO+hNdPTJvgX0VGA4ugqBKlkEqGuOyKztRGzLB27s8X
6i5leC2InQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dAxa0GFtAgoazxeRmxSl0Yps/nJ8Rpb3lCs3dkGXEdmxjp4N5EFfyS7U0FLTPNVV4xnePCr4q647
L4KcUzdGFlWPqo/QF8lyz6PEdU6dW8BktZKhrZHQ5uhG7d/Bf0EOVUn0mzfj8sgbaKWZYTEDERK6
pLNcwS3fMTcRzexShzE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qFA2Sas20o42qyLKUfSMJZGJ7FMOuYDRWyURzBBH3n2Qkaa75HLaliBCTs00LUZYplObnmj1+ZAf
80sKN7qGXguQ1PwKDYYHAVh9l9yGVlyNwObLOec7nrtHIPRPZ1Am330sVZYMipFnG9PAZanD2fe4
zBKk26jw4HdRQmG3vM1SWF3vXt1VR+UBS5eMUwG6haQqtGIZWHz48uyl4zc44Tqr2H4sR+yo0gE9
bXUY7Oc0GQvnczTzBftbc9jGOvnoi8sVcybTki5B/gTVWkBqcYl+Bx+SSOCo+FyQZGBqrUAFnf1m
pKFCRJnXqs4g3cmrmEG2RflwrWfJCOs3QdUjPQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EHIPCw3tqvASBeRc846RSvWMIU/QBgZYfNTkmzG9OlWqwIA3ukwCJx+dEAZCMyg/i7GW815EkwKE
ar/FOnRiTLMQpurIVTi3As1Sl6c1DkXq90HBljZSq18EFjvlH8nsGa0654mVCFQN3PiQfUfggiqD
LwP079R222U916zaDIMw6ZgRcbfM7bBAp73emqe6OC5mrt4mMGZ9AbQkGRU4iJeWX5x5zM0ev20/
2HCVT3rThYEK/hMu/29O6ZYpOwhKqVFUV8jaodAIgDRiYY0qd/CTZK9mvOgSUj0t6cJN4/Q/wVKt
mcOTr4F5A5rnCTva3pM2/SBekXOwQb01/rlfUQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L4GJr0S0dl+C4k+rj1r/KaqPKn7XGNysYQlDBTRHxj0Zgto0TejuU3cSjQJkMo/IlhkL5vx3hSMx
8DXh0KGY4W7Mmk5SffBJgti7D1pd1YP3w0zgDKIAkTLpoXaZECn77Jp9JWvdxrSHUb44QeC0VkRr
TT67tMIjtV+eqkCUfUiCSGq39iRyI7EpdVInAevmPCNIG5K4rHLTX0aJWAbgDwBRaTpw7W4wOBUe
Kag07iTsJYfG9TBJdRao3h4g2IyFjrcf4tdYFjQEIGB4Vfxhy6K9JjnkkfxGJQ4A0VrJVKlHsJFv
1+MmwN5+h/oRYCFJgcCtGfttJc2/AOQ8JKB8cw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gW6aOcJbrDMK7JqUnzFxAaYM2DL8EnxF345IOLkdfKxGnLCsw0mROpfP26LD91CJidCf9vaqLHsN
jwsLktZ7qUykkQzv9vOvGkB2KoLh32fPvZjhbcdDei3fy9cH8haCHJCiSghwIIOfzcXDyQO7+mpH
LfBUho9v0PmfLkeqSuE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YOgS+O+OWj8gVxfmdd2e+iTOOA4l1LloRJHtygw6wsU5a/FGoLxtLFOm39pCwOesAIo5cgP1cY7j
GMsvnPuTgP6YVNEPrLenO+0bM+rFgEpkVPDLGiQdrj+9tlcVifFJGGcDEFMtdjPm7SvdpsEh2Fzk
ZyTciJbc1vOSbmNUfL7f5SyT4X8NVQCnr4aIhzmrObrl+d/HXH5pWY0/wveklgGbBxwN3pI0aNdn
cY/a3XotdDTVTgdYnz9zaxscNhKuVHf6BpyCfI+XDdopSBDa7E47+Tot6Ck17VwjOOAKkqSNjD7+
HzzA77lmBhIrUxZnuOejS1O/VD/gmpze9ZPaeA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ke+wOBDoIWw1B9EopCdN8n/N1ptv4bsB+AX1KcGHenWMMStsUoWz4G+LoNb5c/lhxEFV0pAprv08
VkZZIsXMfIOLUDFY09WICiYsePMIrAKOCWkcIQoKuBJ8nbQIDphZnViNYitMCqXCXulpwIpJYeRq
ynI35DGnWxNEC6CueDMil/PsvxSJPV4Ie4Dnewx1A8zXitqgNyxvG5Gh5raQjGGlXW42Y6yIZRwD
qIJ+dWLnyIj2RXtW+06k+uyDwkxtLrqagwFEhYBGzn/gq+ZHyAL4kLDkP60hu1F0PnBWiKJvZ+mC
pvJFnHKKNqSFKB4n7TcvrEKpJ/4pP3ca7pfW5w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D3upd4mby9ky0kY6sv5oHyPRQtemnCp41gGJCv1OcZs29rSNWGsxFqWS4iaLwrzH8cm+l3IVEL9U
4oglD13ag199gjnxEzXpEAoHiy54jlfXuZ5qO7zrCNThsFKP0Xa05tr3jGwewTFx+LnyLmZwwBlr
cYUlpQ4l4JfKUftzJE16HneL9EZ6eGqfV8craKSdnQay955g1N3JLw8ZIA0+brFPu9VEjalJLM9K
XcUfTDHSBxA8NGS1YWoAfnLAU6whkIsslAaNVgU3m1Uzmu6h39589A6Uwv450vVfVAwXm+1jJ3Dp
is07P9b5tM63uxrhZjC3u39V6TacTHYUFknnGQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10368)
`pragma protect data_block
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
`pragma protect end_protected
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
