`timescale 1ns/1ns
module MAC16 (CLK, CE, C15, C14, C13, C12, C11, C10, C9, C8, C7, C6, C5, C4, C3, C2, C1, C0, A15, A14, A13, A12, A11, A10, A9, A8, A7, A6, A5, A4, A3, A2, A1, A0, B15, B14, B13, B12, B11, B10, B9, B8, B7, B6, B5, B4, B3, B2, B1, B0, D15, D14, D13, D12, D11, D10, D9, D8, D7, D6, D5, D4, D3, D2, D1, D0, AHOLD, BHOLD, CHOLD, DHOLD, IRSTTOP, IRSTBOT, ORSTTOP, ORSTBOT, OLOADTOP, OLOADBOT, ADDSUBTOP, ADDSUBBOT, OHOLDTOP, OHOLDBOT, CI, ACCUMCI, SIGNEXTIN, O31, O30, O29, O28, O27, O26, O25, O24, O23, O22, O21, O20, O19, O18, O17, O16, O15, O14, O13, O12, O11, O10, O9, O8, O7, O6, O5, O4, O3, O2, O1, O0, CO, ACCUMCO, SIGNEXTOUT);

	//Port Type List [Expanded Bus/Bit]
	input CLK;
	input CE;
	input C15;
	input C14;
	input C13;
	input C12;
	input C11;
	input C10;
	input C9;
	input C8;
	input C7;
	input C6;
	input C5;
	input C4;
	input C3;
	input C2;
	input C1;
	input C0;
	input A15;
	input A14;
	input A13;
	input A12;
	input A11;
	input A10;
	input A9;
	input A8;
	input A7;
	input A6;
	input A5;
	input A4;
	input A3;
	input A2;
	input A1;
	input A0;
	input B15;
	input B14;
	input B13;
	input B12;
	input B11;
	input B10;
	input B9;
	input B8;
	input B7;
	input B6;
	input B5;
	input B4;
	input B3;
	input B2;
	input B1;
	input B0;
	input D15;
	input D14;
	input D13;
	input D12;
	input D11;
	input D10;
	input D9;
	input D8;
	input D7;
	input D6;
	input D5;
	input D4;
	input D3;
	input D2;
	input D1;
	input D0;
	input AHOLD;
	input BHOLD;
	input CHOLD;
	input DHOLD;
	input IRSTTOP;
	input IRSTBOT;
	input ORSTTOP;
	input ORSTBOT;
	input OLOADTOP;
	input OLOADBOT;
	input ADDSUBTOP;
	input ADDSUBBOT;
	input OHOLDTOP;
	input OHOLDBOT;
	input CI;
	input ACCUMCI;
	input SIGNEXTIN;
	output O31;
	output O30;
	output O29;
	output O28;
	output O27;
	output O26;
	output O25;
	output O24;
	output O23;
	output O22;
	output O21;
	output O20;
	output O19;
	output O18;
	output O17;
	output O16;
	output O15;
	output O14;
	output O13;
	output O12;
	output O11;
	output O10;
	output O9;
	output O8;
	output O7;
	output O6;
	output O5;
	output O4;
	output O3;
	output O2;
	output O1;
	output O0;
	output CO;
	output ACCUMCO;
	output SIGNEXTOUT;


	//Assigning input IP Ports to corresponding SW bit ports [Inputs]
	wire [15:0] C;
	assign C = {C15, C14, C13, C12, C11, C10, C9, C8, C7, C6, C5, C4, C3, C2, C1, C0};
	wire [15:0] A;
	assign A = {A15, A14, A13, A12, A11, A10, A9, A8, A7, A6, A5, A4, A3, A2, A1, A0};
	wire [15:0] B;
	assign B = {B15, B14, B13, B12, B11, B10, B9, B8, B7, B6, B5, B4, B3, B2, B1, B0};
	wire [15:0] D;
	assign D = {D15, D14, D13, D12, D11, D10, D9, D8, D7, D6, D5, D4, D3, D2, D1, D0};
	//Fanning IP Bus Output to Individual SW Bit [Outputs]
	wire [31:0] O;
	assign O0 = O[0];
	assign O1 = O[1];
	assign O2 = O[2];
	assign O3 = O[3];
	assign O4 = O[4];
	assign O5 = O[5];
	assign O6 = O[6];
	assign O7 = O[7];
	assign O8 = O[8];
	assign O9 = O[9];
	assign O10 = O[10];
	assign O11 = O[11];
	assign O12 = O[12];
	assign O13 = O[13];
	assign O14 = O[14];
	assign O15 = O[15];
	assign O16 = O[16];
	assign O17 = O[17];
	assign O18 = O[18];
	assign O19 = O[19];
	assign O20 = O[20];
	assign O21 = O[21];
	assign O22 = O[22];
	assign O23 = O[23];
	assign O24 = O[24];
	assign O25 = O[25];
	assign O26 = O[26];
	assign O27 = O[27];
	assign O28 = O[28];
	assign O29 = O[29];
	assign O30 = O[30];
	assign O31 = O[31];

	//IP Ports Tied Off for Simulation
	//Attribute List
	parameter NEG_TRIGGER = "0b0";
	parameter A_REG = "0b0";
	parameter B_REG = "0b0";
	parameter C_REG = "0b0";
	parameter D_REG = "0b0";
	parameter TOP_8x8_MULT_REG = "0b0";
	parameter BOT_8x8_MULT_REG = "0b0";
	parameter PIPELINE_16x16_MULT_REG1 = "0b0";
	parameter PIPELINE_16x16_MULT_REG2 = "0b0";
	parameter TOPOUTPUT_SELECT = "0b00";
	parameter TOPADDSUB_LOWERINPUT = "0b00";
	parameter TOPADDSUB_UPPERINPUT = "0b0";
	parameter TOPADDSUB_CARRYSELECT = "0b00";
	parameter BOTOUTPUT_SELECT = "0b00";
	parameter BOTADDSUB_LOWERINPUT = "0b00";
	parameter BOTADDSUB_UPPERINPUT = "0b0";
	parameter BOTADDSUB_CARRYSELECT = "0b00";
	parameter MODE_8x8 = "0b0";
	parameter A_SIGNED = "0b0";
	parameter B_SIGNED = "0b0";
	`include "convertDeviceString.v"
	//Converted Attribute List [For Device Binary / Hex String]
	localparam CONVERTED_NEG_TRIGGER = convertDeviceString(NEG_TRIGGER);
	localparam CONVERTED_A_REG = convertDeviceString(A_REG);
	localparam CONVERTED_B_REG = convertDeviceString(B_REG);
	localparam CONVERTED_C_REG = convertDeviceString(C_REG);
	localparam CONVERTED_D_REG = convertDeviceString(D_REG);
	localparam CONVERTED_TOP_8x8_MULT_REG = convertDeviceString(TOP_8x8_MULT_REG);
	localparam CONVERTED_BOT_8x8_MULT_REG = convertDeviceString(BOT_8x8_MULT_REG);
	localparam CONVERTED_PIPELINE_16x16_MULT_REG1 = convertDeviceString(PIPELINE_16x16_MULT_REG1);
	localparam CONVERTED_PIPELINE_16x16_MULT_REG2 = convertDeviceString(PIPELINE_16x16_MULT_REG2);
	localparam CONVERTED_TOPOUTPUT_SELECT = convertDeviceString(TOPOUTPUT_SELECT);
	localparam CONVERTED_TOPADDSUB_LOWERINPUT = convertDeviceString(TOPADDSUB_LOWERINPUT);
	localparam CONVERTED_TOPADDSUB_UPPERINPUT = convertDeviceString(TOPADDSUB_UPPERINPUT);
	localparam CONVERTED_TOPADDSUB_CARRYSELECT = convertDeviceString(TOPADDSUB_CARRYSELECT);
	localparam CONVERTED_BOTOUTPUT_SELECT = convertDeviceString(BOTOUTPUT_SELECT);
	localparam CONVERTED_BOTADDSUB_LOWERINPUT = convertDeviceString(BOTADDSUB_LOWERINPUT);
	localparam CONVERTED_BOTADDSUB_UPPERINPUT = convertDeviceString(BOTADDSUB_UPPERINPUT);
	localparam CONVERTED_BOTADDSUB_CARRYSELECT = convertDeviceString(BOTADDSUB_CARRYSELECT);
	localparam CONVERTED_MODE_8x8 = convertDeviceString(MODE_8x8);
	localparam CONVERTED_A_SIGNED = convertDeviceString(A_SIGNED);
	localparam CONVERTED_B_SIGNED = convertDeviceString(B_SIGNED);

	MAC16_SIM DSP_inst(.CLK(CLK), .CE(CE), .C(C), .A(A), .B(B), .D(D), .AHOLD(AHOLD), .BHOLD(BHOLD), .CHOLD(CHOLD), .DHOLD(DHOLD), .IRSTTOP(IRSTTOP), .IRSTBOT(IRSTBOT), .ORSTTOP(ORSTTOP), .ORSTBOT(ORSTBOT), .OLOADTOP(OLOADTOP), .OLOADBOT(OLOADBOT), .ADDSUBTOP(ADDSUBTOP), .ADDSUBBOT(ADDSUBBOT), .OHOLDTOP(OHOLDTOP), .OHOLDBOT(OHOLDBOT), .CI(CI), .ACCUMCI(ACCUMCI), .SIGNEXTIN(SIGNEXTIN), .O(O), .CO(CO), .ACCUMCO(ACCUMCO), .SIGNEXTOUT(SIGNEXTOUT));
	defparam DSP_inst.NEG_TRIGGER = CONVERTED_NEG_TRIGGER[0];
	defparam DSP_inst.A_REG = CONVERTED_A_REG[0];
	defparam DSP_inst.B_REG = CONVERTED_B_REG[0];
	defparam DSP_inst.C_REG = CONVERTED_C_REG[0];
	defparam DSP_inst.D_REG = CONVERTED_D_REG[0];
	defparam DSP_inst.TOP_8x8_MULT_REG = CONVERTED_TOP_8x8_MULT_REG[0];
	defparam DSP_inst.BOT_8x8_MULT_REG = CONVERTED_BOT_8x8_MULT_REG[0];
	defparam DSP_inst.PIPELINE_16x16_MULT_REG1 = CONVERTED_PIPELINE_16x16_MULT_REG1[0];
	defparam DSP_inst.PIPELINE_16x16_MULT_REG2 = CONVERTED_PIPELINE_16x16_MULT_REG2[0];
	defparam DSP_inst.TOPOUTPUT_SELECT = CONVERTED_TOPOUTPUT_SELECT[1:0];
	defparam DSP_inst.TOPADDSUB_LOWERINPUT = CONVERTED_TOPADDSUB_LOWERINPUT[1:0];
	defparam DSP_inst.TOPADDSUB_UPPERINPUT = CONVERTED_TOPADDSUB_UPPERINPUT[0];
	defparam DSP_inst.TOPADDSUB_CARRYSELECT = CONVERTED_TOPADDSUB_CARRYSELECT[1:0];
	defparam DSP_inst.BOTOUTPUT_SELECT = CONVERTED_BOTOUTPUT_SELECT[1:0];
	defparam DSP_inst.BOTADDSUB_LOWERINPUT = CONVERTED_BOTADDSUB_LOWERINPUT[1:0];
	defparam DSP_inst.BOTADDSUB_UPPERINPUT = CONVERTED_BOTADDSUB_UPPERINPUT[0];
	defparam DSP_inst.BOTADDSUB_CARRYSELECT = CONVERTED_BOTADDSUB_CARRYSELECT[1:0];
	defparam DSP_inst.MODE_8x8 = CONVERTED_MODE_8x8[0];
	defparam DSP_inst.A_SIGNED = CONVERTED_A_SIGNED[0];
	defparam DSP_inst.B_SIGNED = CONVERTED_B_SIGNED[0];


endmodule
