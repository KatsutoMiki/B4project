// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Dec 14 13:17:58 2023
// Host        : KatsutoPC2 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/mikik/B4_project_mix/B4_project_mix.sim/sim_1/impl/func/xsim/tb_top_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dfilter
   (D,
    binarization_out,
    c1_IBUF,
    ref_c1_IBUF,
    CLK_IBUF_BUFG);
  output [0:0]D;
  output binarization_out;
  input c1_IBUF;
  input ref_c1_IBUF;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]D;
  wire binarization_out;
  wire c1_IBUF;
  wire [3:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[1]_i_2_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire \counter[3]_i_5_n_0 ;
  wire \counter[3]_i_6_n_0 ;
  wire [14:0]d_clk;
  wire d_clk0_carry__0_n_0;
  wire d_clk0_carry__1_n_0;
  wire d_clk0_carry_n_0;
  wire \d_clk[0]_i_2_n_0 ;
  wire \d_clk[0]_i_3_n_0 ;
  wire \d_clk[0]_i_4_n_0 ;
  wire [0:0]d_clk_0;
  wire [14:1]data0;
  wire fil;
  wire fil_i_1_n_0;
  wire filter;
  wire \filter_reg_n_0_[0] ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_0_in5_in;
  wire p_0_in6_in;
  wire p_0_in7_in;
  wire ref_c1_IBUF;
  wire [2:0]NLW_d_clk0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_d_clk0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_d_clk0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_d_clk0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_d_clk0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_2_n_0 ),
        .I1(\filter_reg_n_0_[0] ),
        .I2(\counter[0]_i_3_n_0 ),
        .I3(p_0_in0_in),
        .I4(p_0_in),
        .I5(p_0_in1_in),
        .O(\counter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \counter[0]_i_2 
       (.I0(p_0_in7_in),
        .I1(p_0_in5_in),
        .I2(p_0_in6_in),
        .O(\counter[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \counter[0]_i_3 
       (.I0(p_0_in4_in),
        .I1(p_0_in2_in),
        .I2(p_0_in3_in),
        .O(\counter[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \counter[1]_i_1 
       (.I0(\counter[3]_i_2_n_0 ),
        .I1(\counter[1]_i_2_n_0 ),
        .I2(\counter[3]_i_3_n_0 ),
        .O(\counter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \counter[1]_i_2 
       (.I0(p_0_in1_in),
        .I1(p_0_in0_in),
        .I2(p_0_in),
        .I3(\counter[3]_i_5_n_0 ),
        .I4(\counter[3]_i_6_n_0 ),
        .O(\counter[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h177E7EE8)) 
    \counter[2]_i_1 
       (.I0(\counter[3]_i_2_n_0 ),
        .I1(\counter[3]_i_3_n_0 ),
        .I2(\counter[3]_i_4_n_0 ),
        .I3(\counter[3]_i_6_n_0 ),
        .I4(\counter[3]_i_5_n_0 ),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE8808000)) 
    \counter[3]_i_1 
       (.I0(\counter[3]_i_2_n_0 ),
        .I1(\counter[3]_i_3_n_0 ),
        .I2(\counter[3]_i_4_n_0 ),
        .I3(\counter[3]_i_5_n_0 ),
        .I4(\counter[3]_i_6_n_0 ),
        .O(\counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \counter[3]_i_2 
       (.I0(p_0_in0_in),
        .I1(p_0_in),
        .I2(p_0_in1_in),
        .I3(\counter[0]_i_2_n_0 ),
        .I4(\filter_reg_n_0_[0] ),
        .I5(\counter[0]_i_3_n_0 ),
        .O(\counter[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \counter[3]_i_3 
       (.I0(\filter_reg_n_0_[0] ),
        .I1(\counter[0]_i_2_n_0 ),
        .I2(p_0_in3_in),
        .I3(p_0_in2_in),
        .I4(p_0_in4_in),
        .O(\counter[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \counter[3]_i_4 
       (.I0(p_0_in),
        .I1(p_0_in0_in),
        .I2(p_0_in1_in),
        .O(\counter[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \counter[3]_i_5 
       (.I0(p_0_in5_in),
        .I1(p_0_in6_in),
        .I2(p_0_in7_in),
        .O(\counter[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \counter[3]_i_6 
       (.I0(p_0_in2_in),
        .I1(p_0_in3_in),
        .I2(p_0_in4_in),
        .O(\counter[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 d_clk0_carry
       (.CI(1'b0),
        .CO({d_clk0_carry_n_0,NLW_d_clk0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(d_clk[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(d_clk[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 d_clk0_carry__0
       (.CI(d_clk0_carry_n_0),
        .CO({d_clk0_carry__0_n_0,NLW_d_clk0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(d_clk[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 d_clk0_carry__1
       (.CI(d_clk0_carry__0_n_0),
        .CO({d_clk0_carry__1_n_0,NLW_d_clk0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(d_clk[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 d_clk0_carry__2
       (.CI(d_clk0_carry__1_n_0),
        .CO(NLW_d_clk0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_d_clk0_carry__2_O_UNCONNECTED[3:2],data0[14:13]}),
        .S({1'b0,1'b0,d_clk[14:13]}));
  LUT2 #(
    .INIT(4'h2)) 
    \d_clk[0]_i_1 
       (.I0(\d_clk[0]_i_2_n_0 ),
        .I1(d_clk[0]),
        .O(d_clk_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \d_clk[0]_i_2 
       (.I0(\d_clk[0]_i_3_n_0 ),
        .I1(d_clk[4]),
        .I2(d_clk[3]),
        .I3(d_clk[6]),
        .I4(d_clk[5]),
        .I5(\d_clk[0]_i_4_n_0 ),
        .O(\d_clk[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \d_clk[0]_i_3 
       (.I0(d_clk[8]),
        .I1(d_clk[7]),
        .I2(d_clk[10]),
        .I3(d_clk[9]),
        .O(\d_clk[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \d_clk[0]_i_4 
       (.I0(d_clk[13]),
        .I1(d_clk[14]),
        .I2(d_clk[11]),
        .I3(d_clk[12]),
        .I4(d_clk[2]),
        .I5(d_clk[1]),
        .O(\d_clk[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \d_clk[14]_i_1 
       (.I0(d_clk[0]),
        .I1(\d_clk[0]_i_2_n_0 ),
        .O(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(d_clk_0),
        .Q(d_clk[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(d_clk[10]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(d_clk[11]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(d_clk[12]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(d_clk[13]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(d_clk[14]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(d_clk[1]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(d_clk[2]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(d_clk[3]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(d_clk[4]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(d_clk[5]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(d_clk[6]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(d_clk[7]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(d_clk[8]),
        .R(filter));
  FDRE #(
    .INIT(1'b0)) 
    \d_clk_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(d_clk[9]),
        .R(filter));
  LUT4 #(
    .INIT(16'h0001)) 
    fil_i_1
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(d_clk[0]),
        .I3(\d_clk[0]_i_2_n_0 ),
        .O(fil_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000FF00000080)) 
    fil_i_2
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(\d_clk[0]_i_2_n_0 ),
        .I4(d_clk[0]),
        .I5(counter[3]),
        .O(fil));
  FDRE #(
    .INIT(1'b0)) 
    fil_reg
       (.C(CLK_IBUF_BUFG),
        .CE(fil),
        .D(fil),
        .Q(binarization_out),
        .R(fil_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(D),
        .Q(\filter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(\filter_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(p_0_in),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(p_0_in0_in),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(p_0_in1_in),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(p_0_in2_in),
        .Q(p_0_in3_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(p_0_in3_in),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(p_0_in4_in),
        .Q(p_0_in5_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(p_0_in5_in),
        .Q(p_0_in6_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \filter_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(filter),
        .D(p_0_in6_in),
        .Q(p_0_in7_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    mixer_out_OBUF_inst_i_1
       (.I0(c1_IBUF),
        .I1(ref_c1_IBUF),
        .O(D));
endmodule

(* ECO_CHECKSUM = "f4bd5a6e" *) 
(* NotValidForBitStream *)
module top
   (OEA,
    OEB,
    CLK,
    c1,
    ref_c1,
    binarization_out,
    mixer_out);
  output OEA;
  output OEB;
  input CLK;
  input c1;
  input ref_c1;
  output binarization_out;
  output mixer_out;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire OEA;
  wire OEB;
  wire binarization_out;
  wire binarization_out_OBUF;
  wire c1;
  wire c1_IBUF;
  wire mixer_out;
  wire mixer_out_OBUF;
  wire ref_c1;
  wire ref_c1_IBUF;

  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF OEA_OBUF_inst
       (.I(1'b0),
        .O(OEA));
  OBUF OEB_OBUF_inst
       (.I(1'b0),
        .O(OEB));
  OBUF binarization_out_OBUF_inst
       (.I(binarization_out_OBUF),
        .O(binarization_out));
  IBUF c1_IBUF_inst
       (.I(c1),
        .O(c1_IBUF));
  dfilter dfilter
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(mixer_out_OBUF),
        .binarization_out(binarization_out_OBUF),
        .c1_IBUF(c1_IBUF),
        .ref_c1_IBUF(ref_c1_IBUF));
  OBUF mixer_out_OBUF_inst
       (.I(mixer_out_OBUF),
        .O(mixer_out));
  IBUF ref_c1_IBUF_inst
       (.I(ref_c1),
        .O(ref_c1_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
