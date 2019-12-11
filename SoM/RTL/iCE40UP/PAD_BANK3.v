`timescale 10ps/1ps
module PAD_BANK3(PAD, PADIN, PADOUT, PADOEN);
inout PAD;
input PADOUT, PADOEN;
output PADIN;
parameter IO_STANDARD = "SB_LVCMOS25_8"; // SB_SSTL2_CLASS_2, SB_SSTL2_CLASS_1, SB_SSTL18_FULL, SB_SSTL18_HALF, SB_MDDR10, SB_MDDR8, SB_MDDR4, SB_MDDR2

assign PAD = (~PADOEN) ? PADOUT : 1'bz;
assign PADIN = PAD ;


endmodule
