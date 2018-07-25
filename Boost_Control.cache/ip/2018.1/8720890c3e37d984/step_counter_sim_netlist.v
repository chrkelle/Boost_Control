// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Jul 25 13:33:33 2018
// Host        : DESKTOP-EPHBFNF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ step_counter_sim_netlist.v
// Design      : step_counter
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a50tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "step_counter,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
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
f1Jvk13iu4dGmv9Mbw3hbrKUwnGZmpLoEGlYMF/BHffKdhU7qncvQI7qaGJOnvsoYg2mw/cqHmRN
Gf/Bctw9ch6yBAPPg1B2et7kPNul7ec3C/u9ofpzhz59cdhf30yXN6EBOKzGVffPF83qxJ+mTOVL
/A3q64sMgmeybsJbWL2DJ/cJzqmsyI2biR2KUCr/sOMu0F6D+ZcT2/jS9ae3X39HJOqUiymN35PL
7HdCor6fwgOH1OED0OAyqYy9FQmzaEWRGid6o5o5FJjQGxxdK4SwbE+bweZtxRNUn1uReo4jodmM
3IhDfphgx4lSOuDLzP4FL2dnIuc7clWul7argA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3jBrhn2B65MXxi/OhRyKKrHjYpNF0jKblcHB4QY5thKRYLVQDN4dZ4RHsASRaxQC00cFYaRhQC25
wHjjm/UHb4bFNo8hcSmiBf2Ni5v0fxT/exia/lxUOEejdt0BCp/RpCeIiNJt9+C2Uh23jjiC2k+7
G7pPEqwg3P9FBc8GxjeS1V1WWf83TbDw3eHcjfUo8e3xp/6bfne39FUk64p6HzeBX1N0q6JSl3LC
cOfarv8+rHI8PHjW06BtqU0h157ZfauGTwY3pTAn/eRtLXNb9YIQ36v+XOuRCjNjVU2F3fSSiReD
82btxWOBZH4tpZBWPZAR8hUnL6nyumRY7JHvUA==

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
