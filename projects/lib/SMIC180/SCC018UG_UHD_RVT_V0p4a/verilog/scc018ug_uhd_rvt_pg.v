/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AD1UHDV1 ( CO, S, A, B, CI, VDD, VSS, VNW, VPW); 
input A, B, CI;
inout VDD, VSS, VNW, VPW;
output CO, S;
wire CO_temp;
wire S_temp;

  xor I0(S_temp, A, B, CI );
  and I1(a_and_b, A, B );
  and I2(a_and_ci, A, CI );
  and I3(b_and_ci, B, CI );
  or  I4(CO_temp, a_and_b, a_and_ci, b_and_ci );
  assign CO = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? CO_temp : 1'bx;
  assign S = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? S_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AD1UHDV2 ( CO, S, A, B, CI, VDD, VSS, VNW, VPW); 
input A, B, CI;
inout VDD, VSS, VNW, VPW;
output CO, S;
wire CO_temp;
wire S_temp;

  xor I0(S_temp, A, B, CI );
  and I1(a_and_b, A, B );
  and I2(a_and_ci, A, CI );
  and I3(b_and_ci, B, CI );
  or  I4(CO_temp, a_and_b, a_and_ci, b_and_ci );
  assign CO = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? CO_temp : 1'bx;
  assign S = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? S_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> CO 
	 (CI => CO) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b0 && CI==1'b0) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(B==1'b1 && CI==1'b1) 
	// arc A --> S 
	 (A => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && CI==1'b0) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b1 && CI==1'b1) 
	// arc B --> S 
	 (B => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b0) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b1) 
	// arc CI --> S 
	 (CI => S) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module ADH1UHDV1 ( CO, S, A, B, VDD, VSS, VNW, VPW); 
input A, B;
inout VDD, VSS, VNW, VPW;
output CO, S;
wire CO_temp;
wire S_temp;

  xor I0(S_temp, A, B );
  and I1(CO_temp, A, B );
  assign CO = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? CO_temp : 1'bx;
  assign S = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? S_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module ADH1UHDV2 ( CO, S, A, B, VDD, VSS, VNW, VPW); 
input A, B;
inout VDD, VSS, VNW, VPW;
output CO, S;
wire CO_temp;
wire S_temp;

  xor I0(S_temp, A, B );
  and I1(CO_temp, A, B );
  assign CO = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? CO_temp : 1'bx;
  assign S = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? S_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module ADH1UHDV3 ( CO, S, A, B, VDD, VSS, VNW, VPW); 
input A, B;
inout VDD, VSS, VNW, VPW;
output CO, S;
wire CO_temp;
wire S_temp;

  xor I0(S_temp, A, B );
  and I1(CO_temp, A, B );
  assign CO = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? CO_temp : 1'bx;
  assign S = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? S_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A --> CO 
	 (A => CO) = (1.0,1.0); 
 
	// arc B --> CO 
	 (B => CO) = (1.0,1.0); 
 
	// arc posedge A --> (S:A) 
	 (posedge A => (S:A)) = (1.0,1.0); 
 
	// arc negedge A --> (S:A) 
	 (negedge A => (S:A)) = (1.0,1.0); 
 
	// arc posedge B --> (S:B) 
	 (posedge B => (S:B)) = (1.0,1.0); 
 
	// arc negedge B --> (S:B) 
	 (negedge B => (S:B)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND2UHDV0P4 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND2UHDV0P7 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND2UHDV1 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND2UHDV2 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND2UHDV3 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND2UHDV4 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND2UHDV6 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND2UHDV8 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND3UHDV0P7 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and (Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND3UHDV1 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and (Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND3UHDV2 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and (Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND3UHDV3 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and (Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND3UHDV4 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and (Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND4UHDV0P7 ( Z, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and (Z_temp, A1, A2, A3, A4 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND4UHDV1 ( Z, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and (Z_temp, A1, A2, A3, A4 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND4UHDV2 ( Z, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and (Z_temp, A1, A2, A3, A4 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AND4UHDV3 ( Z, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and (Z_temp, A1, A2, A3, A4 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO112UHDV0P4 ( Z, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    or I1(Z_temp, B, C, OUT0 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO112UHDV0P7 ( Z, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    or I1(Z_temp, B, C, OUT0 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO112UHDV1 ( Z, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    or I1(Z_temp, B, C, OUT0 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO112UHDV2 ( Z, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    or I1(Z_temp, B, C, OUT0 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO112UHDV3 ( Z, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    or I1(Z_temp, B, C, OUT0 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO12UHDV0P4 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    buf I1(OUT1, B );
    or I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO12UHDV0P7 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    buf I1(OUT1, B );
    or I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO12UHDV1 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    buf I1(OUT1, B );
    or I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO12UHDV2 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    buf I1(OUT1, B );
    or I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO12UHDV3 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    buf I1(OUT1, B );
    or I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO12UHDV4 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    buf I1(OUT1, B );
    or I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO21BUHDV0P4 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    not I1(OUT1, B );
    or I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO21BUHDV0P7 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    not I1(OUT1, B );
    or I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO21BUHDV1 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    not I1(OUT1, B );
    or I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO21BUHDV2 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    not I1(OUT1, B );
    or I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO21BUHDV3 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and I0(OUT0, A1, A2 );
    not I1(OUT1, B );
    or I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO221UHDV0P4 ( Z, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, C, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO221UHDV0P7 ( Z, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, C, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO221UHDV1 ( Z, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, C, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO221UHDV2 ( Z, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, C, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO221UHDV3 ( Z, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, C, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO222UHDV0P4 ( Z, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   and I2(OUT2, C1, C2 );
   or  I3(Z_temp, OUT0, OUT1, OUT2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO222UHDV0P7 ( Z, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   and I2(OUT2, C1, C2 );
   or  I3(Z_temp, OUT0, OUT1, OUT2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO222UHDV1 ( Z, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   and I2(OUT2, C1, C2 );
   or  I3(Z_temp, OUT0, OUT1, OUT2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO222UHDV2 ( Z, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   and I2(OUT2, C1, C2 );
   or  I3(Z_temp, OUT0, OUT1, OUT2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO222UHDV3 ( Z, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   and I2(OUT2, C1, C2 );
   or  I3(Z_temp, OUT0, OUT1, OUT2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO22UHDV0P4 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO22UHDV0P7 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO22UHDV1 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO22UHDV2 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO22UHDV3 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO22UHDV4 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO22UHDV6 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2 );
   and I1(OUT1, B1, B2 );
   or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO31UHDV0P4 ( Z, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2, A3 );
   or  I1(Z_temp, B, OUT0 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO31UHDV0P7 ( Z, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2, A3 );
   or  I1(Z_temp, B, OUT0 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO31UHDV1 ( Z, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2, A3 );
   or  I1(Z_temp, B, OUT0 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO31UHDV2 ( Z, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   and I0(OUT0, A1, A2, A3 );
   or  I1(Z_temp, B, OUT0 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO32UHDV0P7 ( Z, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and I0(OUT0, A1, A2, A3 );
  and I1(OUT1, B1, B2 );
  or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO32UHDV1 ( Z, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and I0(OUT0, A1, A2, A3 );
  and I1(OUT1, B1, B2 );
  or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO32UHDV2 ( Z, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and I0(OUT0, A1, A2, A3 );
  and I1(OUT1, B1, B2 );
  or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO32UHDV3 ( Z, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and I0(OUT0, A1, A2, A3 );
  and I1(OUT1, B1, B2 );
  or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO32UHDV4 ( Z, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and I0(OUT0, A1, A2, A3 );
  and I1(OUT1, B1, B2 );
  or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO33UHDV0P7 ( Z, A1, A2, A3, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and I0(OUT0, A1, A2, A3 );
  and I1(OUT1, B1, B2, B3 );
  or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO33UHDV1 ( Z, A1, A2, A3, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and I0(OUT0, A1, A2, A3 );
  and I1(OUT1, B1, B2, B3 );
  or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO33UHDV2 ( Z, A1, A2, A3, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and I0(OUT0, A1, A2, A3 );
  and I1(OUT1, B1, B2, B3 );
  or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO33UHDV3 ( Z, A1, A2, A3, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and I0(OUT0, A1, A2, A3 );
  and I1(OUT1, B1, B2, B3 );
  or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AO33UHDV4 ( Z, A1, A2, A3, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  and I0(OUT0, A1, A2, A3 );
  and I1(OUT1, B1, B2, B3 );
  or  I2(Z_temp, OUT0, OUT1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI211UHDV0P4 ( ZN, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(out0, A1, A2 );
  nor I1(ZN_temp, B, C, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI211UHDV0P7 ( ZN, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(out0, A1, A2 );
  nor I1(ZN_temp, B, C, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI211UHDV1 ( ZN, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(out0, A1, A2 );
  nor I1(ZN_temp, B, C, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI211UHDV2 ( ZN, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(out0, A1, A2 );
  nor I1(ZN_temp, B, C, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI211UHDV3 ( ZN, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(out0, A1, A2 );
  nor I1(ZN_temp, B, C, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI21BUHDV0P4 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    and SMC_I0(OUT0, B1, B2 );
    not SMC_I1(OUT1, A );
    nor	SMC_I2(ZN_temp, OUT0, OUT1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI21BUHDV0P7 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    and SMC_I0(OUT0, B1, B2 );
    not SMC_I1(OUT1, A );
    nor	SMC_I2(ZN_temp, OUT0, OUT1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI21BUHDV1 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    and SMC_I0(OUT0, B1, B2 );
    not SMC_I1(OUT1, A );
    nor	SMC_I2(ZN_temp, OUT0, OUT1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI21BUHDV2 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    and SMC_I0(OUT0, B1, B2 );
    not SMC_I1(OUT1, A );
    nor	SMC_I2(ZN_temp, OUT0, OUT1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI21UHDV0P4 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    and SMC_I0(OUT0, A1, A2 );
    nor SMC_I1(ZN_temp, OUT0, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI21UHDV0P7 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    and SMC_I0(OUT0, A1, A2 );
    nor SMC_I1(ZN_temp, OUT0, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI21UHDV1 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    and SMC_I0(OUT0, A1, A2 );
    nor SMC_I1(ZN_temp, OUT0, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI21UHDV2 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    and SMC_I0(OUT0, A1, A2 );
    nor SMC_I1(ZN_temp, OUT0, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI21UHDV3 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    and SMC_I0(OUT0, A1, A2 );
    nor SMC_I1(ZN_temp, OUT0, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI21UHDV4 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    and SMC_I0(OUT0, A1, A2 );
    nor SMC_I1(ZN_temp, OUT0, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI21UHDV6 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    and SMC_I0(OUT0, A1, A2 );
    nor SMC_I1(ZN_temp, OUT0, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI221UHDV0P4 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(out0, A2, A1 );
  and I1(out1, B2, B1 );
  nor I2(ZN_temp, C, out1, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI221UHDV0P7 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(out0, A2, A1 );
  and I1(out1, B2, B1 );
  nor I2(ZN_temp, C, out1, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI221UHDV1 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(out0, A2, A1 );
  and I1(out1, B2, B1 );
  nor I2(ZN_temp, C, out1, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI221UHDV2 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(out0, A2, A1 );
  and I1(out1, B2, B1 );
  nor I2(ZN_temp, C, out1, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI221UHDV3 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(out0, A2, A1 );
  and I1(out1, B2, B1 );
  nor I2(ZN_temp, C, out1, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI221UHDV4 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(out0, A2, A1 );
  and I1(out1, B2, B1 );
  nor I2(ZN_temp, C, out1, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI222UHDV0P4 ( ZN, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  and I2(outC, C2, C1 );
  nor I3(ZN_temp, outA, outB, outC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI222UHDV0P7 ( ZN, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  and I2(outC, C2, C1 );
  nor I3(ZN_temp, outA, outB, outC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI222UHDV1 ( ZN, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  and I2(outC, C2, C1 );
  nor I3(ZN_temp, outA, outB, outC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI222UHDV2 ( ZN, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  and I2(outC, C2, C1 );
  nor I3(ZN_temp, outA, outB, outC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI222UHDV3 ( ZN, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  and I2(outC, C2, C1 );
  nor I3(ZN_temp, outA, outB, outC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22BBUHDV0P4 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not I3(outA1, A1 );
  not I4(outA2, A2 );
  and I0(outA, outA2, outA1 );
  and I1(outB, B2, B1 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22BBUHDV0P7 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not I3(outA1, A1 );
  not I4(outA2, A2 );
  and I0(outA, outA2, outA1 );
  and I1(outB, B2, B1 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22BBUHDV1 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not I3(outA1, A1 );
  not I4(outA2, A2 );
  and I0(outA, outA2, outA1 );
  and I1(outB, B2, B1 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22BBUHDV2 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not I3(outA1, A1 );
  not I4(outA2, A2 );
  and I0(outA, outA2, outA1 );
  and I1(outB, B2, B1 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22UHDV0P4 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22UHDV0P7 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22UHDV1 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22UHDV2 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22UHDV3 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22UHDV4 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22UHDV6 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A2, A1 );
  and I1(outB, B2, B1 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22XBUHDV0P4 ( ZN, A1, A2, B1, B2N, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2N;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0(B2, B2N );
    and SMC_I1(OUT1, B1, B2 );
    and SMC_I2(OUT2, A1, A2 );
    nor	SMC_I3(ZN_temp, OUT1, OUT2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 // specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 

 	 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22XBUHDV0P7 ( ZN, A1, A2, B1, B2N, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2N;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0(B2, B2N );
    and SMC_I1(OUT1, B1, B2 );
    and SMC_I2(OUT2, A1, A2 );
    nor	SMC_I3(ZN_temp, OUT1, OUT2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 // specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 

 	 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22XBUHDV1 ( ZN, A1, A2, B1, B2N, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2N;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0(B2, B2N );
    and SMC_I1(OUT1, B1, B2 );
    and SMC_I2(OUT2, A1, A2 );
    nor	SMC_I3(ZN_temp, OUT1, OUT2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 // specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 

 	 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22XBUHDV2 ( ZN, A1, A2, B1, B2N, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2N;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0(B2, B2N );
    and SMC_I1(OUT1, B1, B2 );
    and SMC_I2(OUT2, A1, A2 );
    nor	SMC_I3(ZN_temp, OUT1, OUT2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 // specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 

 	 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI22XBUHDV4 ( ZN, A1, A2, B1, B2N, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2N;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0(B2, B2N );
    and SMC_I1(OUT1, B1, B2 );
    and SMC_I2(OUT2, A1, A2 );
    nor	SMC_I3(ZN_temp, OUT1, OUT2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 // specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 

 	 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI2XB11UHDV0P4 ( ZN, A1, A2N, B, C, VDD, VSS, VNW, VPW); 
input A1, A2N, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not I2(A2, A2N );
  and I0(out0, A1, A2 );
  nor I1(ZN_temp, B, C, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 // specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 

 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI2XB11UHDV0P7 ( ZN, A1, A2N, B, C, VDD, VSS, VNW, VPW); 
input A1, A2N, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not I2(A2, A2N );
  and I0(out0, A1, A2 );
  nor I1(ZN_temp, B, C, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 // specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 

 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI2XB11UHDV1 ( ZN, A1, A2N, B, C, VDD, VSS, VNW, VPW); 
input A1, A2N, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not I2(A2, A2N );
  and I0(out0, A1, A2 );
  nor I1(ZN_temp, B, C, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 // specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 

 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI2XB11UHDV2 ( ZN, A1, A2N, B, C, VDD, VSS, VNW, VPW); 
input A1, A2N, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not I2(A2, A2N );
  and I0(out0, A1, A2 );
  nor I1(ZN_temp, B, C, out0 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 // specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 

 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI2XB1UHDV0P4 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I3(OUT3, B2 );
    and SMC_I0(OUT0, B1, OUT3 );
    nor	SMC_I2(ZN_temp, OUT0, A );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI2XB1UHDV0P7 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I3(OUT3, B2 );
    and SMC_I0(OUT0, B1, OUT3 );
    nor	SMC_I2(ZN_temp, OUT0, A );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI2XB1UHDV1 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I3(OUT3, B2 );
    and SMC_I0(OUT0, B1, OUT3 );
    nor	SMC_I2(ZN_temp, OUT0, A );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI2XB1UHDV2 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I3(OUT3, B2 );
    and SMC_I0(OUT0, B1, OUT3 );
    nor	SMC_I2(ZN_temp, OUT0, A );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI2XB1UHDV4 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I3(OUT3, B2 );
    and SMC_I0(OUT0, B1, OUT3 );
    nor	SMC_I2(ZN_temp, OUT0, A );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI31UHDV0P4 ( ZN, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A1, A2, A3 );
  nor I1(ZN_temp, B, outA );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI31UHDV0P7 ( ZN, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A1, A2, A3 );
  nor I1(ZN_temp, B, outA );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI31UHDV1 ( ZN, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A1, A2, A3 );
  nor I1(ZN_temp, B, outA );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI31UHDV2 ( ZN, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A1, A2, A3 );
  nor I1(ZN_temp, B, outA );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI31UHDV3 ( ZN, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A1, A2, A3 );
  nor I1(ZN_temp, B, outA );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI32UHDV0P4 ( ZN, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A1, A2, A3 );
  and I1(outB, B1, B2 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI32UHDV0P7 ( ZN, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A1, A2, A3 );
  and I1(outB, B1, B2 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI32UHDV1 ( ZN, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A1, A2, A3 );
  and I1(outB, B1, B2 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI32UHDV2 ( ZN, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A1, A2, A3 );
  and I1(outB, B1, B2 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module AOI32UHDV3 ( ZN, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  and I0(outA, A1, A2, A3 );
  and I1(outB, B1, B2 );
  nor I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUFUHDV0P4 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUFUHDV0P7 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUFUHDV1 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUFUHDV16 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUFUHDV2 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUFUHDV20 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUFUHDV24 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUFUHDV3 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUFUHDV4 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUFUHDV6 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUFUHDV8 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module BUSHOLDUHD ( Z , VDD, VSS, VNW, VPW); 
inout Z, VDD, VSS, VNW, VPW;
wire io_wire;

  buf(weak0,weak1) I0(Z, io_wire);
  buf              I1(io_wire, Z);

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKAND2UHDV0P7 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKAND2UHDV1 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKAND2UHDV2 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKAND2UHDV3 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKAND2UHDV4 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKAND2UHDV6 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKAND2UHDV8 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    and SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKBUFUHDV1 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKBUFUHDV16 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKBUFUHDV2 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKBUFUHDV20 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKBUFUHDV24 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKBUFUHDV3 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKBUFUHDV4 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKBUFUHDV6 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKBUFUHDV8 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKINUHDV1 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0 (ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKINUHDV16 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0 (ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKINUHDV2 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0 (ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKINUHDV20 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0 (ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKINUHDV24 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0 (ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKINUHDV3 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0 (ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKINUHDV4 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0 (ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKINUHDV6 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0 (ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKINUHDV8 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not SMC_I0 (ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc I --> ZN
	 (I => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNAND2UHDV0P7 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand SMC_I0 (ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNAND2UHDV1 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand SMC_I0 (ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNAND2UHDV2 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand SMC_I0 (ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNAND2UHDV3 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand SMC_I0 (ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNAND2UHDV4 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand SMC_I0 (ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNAND2UHDV6 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand SMC_I0 (ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNAND2UHDV8 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand SMC_I0 (ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNOR2UHDV0P7 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNOR2UHDV1 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNOR2UHDV2 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNOR2UHDV3 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNOR2UHDV4 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNOR2UHDV6 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKNOR2UHDV8 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKOR2UHDV0P7 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKOR2UHDV1 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKOR2UHDV2 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKOR2UHDV3 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKOR2UHDV4 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKOR2UHDV6 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKOR2UHDV8 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKXOR2UHDV0P7 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    xor SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKXOR2UHDV1 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    xor SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKXOR2UHDV2 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    xor SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKXOR2UHDV4 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    xor SMC_I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DEL1UHDV1 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DEL1UHDV2 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DEL2UHDV1 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DEL2UHDV2 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DEL4UHDV1 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DEL4UHDV2 ( Z, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	buf SMC_I0(Z_temp, I );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

	// arc I --> Z
	 (I => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module F_DIODENUHD2 ( A, VDD, VSS, VNW, VPW); 
input A;
inout VDD, VSS, VNW, VPW;


   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module F_DIODEUHD2 ( A, VDD, VSS, VNW, VPW); 
input A;
inout VDD, VSS, VNW, VPW;


   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module INUHDV0P4 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I0(ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module INUHDV0P7 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I0(ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module INUHDV1 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I0(ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module INUHDV16 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I0(ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module INUHDV2 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I0(ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module INUHDV20 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I0(ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module INUHDV24 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I0(ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module INUHDV3 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I0(ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module INUHDV4 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I0(ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module INUHDV6 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I0(ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module INUHDV8 ( ZN, I, VDD, VSS, VNW, VPW); 
input I;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I0(ZN_temp, I );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> ZN 
	 (I => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MAJ23UHDV0P4 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	and SMC_I0(Z_row1, A1, A2 );
	and SMC_I1(Z_row2, A1, A3 );
	and SMC_I2(Z_row3, A2, A3 );
	or SMC_I3(Z_temp, Z_row1, Z_row2, Z_row3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MAJ23UHDV0P7 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	and SMC_I0(Z_row1, A1, A2 );
	and SMC_I1(Z_row2, A1, A3 );
	and SMC_I2(Z_row3, A2, A3 );
	or SMC_I3(Z_temp, Z_row1, Z_row2, Z_row3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MAJ23UHDV1 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	and SMC_I0(Z_row1, A1, A2 );
	and SMC_I1(Z_row2, A1, A3 );
	and SMC_I2(Z_row3, A2, A3 );
	or SMC_I3(Z_temp, Z_row1, Z_row2, Z_row3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MAJ23UHDV2 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	and SMC_I0(Z_row1, A1, A2 );
	and SMC_I1(Z_row2, A1, A3 );
	and SMC_I2(Z_row3, A2, A3 );
	or SMC_I3(Z_temp, Z_row1, Z_row2, Z_row3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MAJ23UHDV3 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	and SMC_I0(Z_row1, A1, A2 );
	and SMC_I1(Z_row2, A1, A3 );
	and SMC_I2(Z_row3, A2, A3 );
	or SMC_I3(Z_temp, Z_row1, Z_row2, Z_row3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

	if(A2==1'b0 && A3==1'b1)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A2==1'b1 && A3==1'b0)
	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1==1'b0 && A3==1'b1)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b1 && A3==1'b0)
	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MAOI222UHDV0P4 ( ZN, A, B, C, VDD, VSS, VNW, VPW); 
input A, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   and I0(outAB, A, B );
   and I1(outBC, B, C );
   and I2(outAC, A, C );
   nor I3(ZN_temp, outAB, outBC, outAC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MAOI222UHDV0P7 ( ZN, A, B, C, VDD, VSS, VNW, VPW); 
input A, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   and I0(outAB, A, B );
   and I1(outBC, B, C );
   and I2(outAC, A, C );
   nor I3(ZN_temp, outAB, outBC, outAC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MAOI222UHDV1 ( ZN, A, B, C, VDD, VSS, VNW, VPW); 
input A, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   and I0(outAB, A, B );
   and I1(outBC, B, C );
   and I2(outAC, A, C );
   nor I3(ZN_temp, outAB, outBC, outAC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MAOI222UHDV2 ( ZN, A, B, C, VDD, VSS, VNW, VPW); 
input A, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   and I0(outAB, A, B );
   and I1(outBC, B, C );
   and I2(outAC, A, C );
   nor I3(ZN_temp, outAB, outBC, outAC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MAOI222UHDV3 ( ZN, A, B, C, VDD, VSS, VNW, VPW); 
input A, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   and I0(outAB, A, B );
   and I1(outBC, B, C );
   and I2(outAC, A, C );
   nor I3(ZN_temp, outAB, outBC, outAC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B==1'b0 && C==1'b1) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(B==1'b1 && C==1'b0) 
	// arc A --> ZN 
	 (A => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && C==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && C==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A==1'b0 && B==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A==1'b1 && B==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MOAI222UHDV0P4 ( ZN, A, B, C , VDD, VSS, VNW, VPW); 
   input A, B, C;
inout VDD, VSS, VNW, VPW;
   output ZN;
wire ZN_temp;

   or   I0(outAB, A, B );
   or   I1(outBC, B, C );
   or   I2(outAC, A, C );
   nand I3(ZN_temp, outAB, outBC, outAC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MOAI222UHDV0P7 ( ZN, A, B, C , VDD, VSS, VNW, VPW); 
   input A, B, C;
inout VDD, VSS, VNW, VPW;
   output ZN;
wire ZN_temp;

   or   I0(outAB, A, B );
   or   I1(outBC, B, C );
   or   I2(outAC, A, C );
   nand I3(ZN_temp, outAB, outBC, outAC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MOAI222UHDV1 ( ZN, A, B, C , VDD, VSS, VNW, VPW); 
   input A, B, C;
inout VDD, VSS, VNW, VPW;
   output ZN;
wire ZN_temp;

   or   I0(outAB, A, B );
   or   I1(outBC, B, C );
   or   I2(outAC, A, C );
   nand I3(ZN_temp, outAB, outBC, outAC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MOAI222UHDV2 ( ZN, A, B, C , VDD, VSS, VNW, VPW); 
   input A, B, C;
inout VDD, VSS, VNW, VPW;
   output ZN;
wire ZN_temp;

   or   I0(outAB, A, B );
   or   I1(outBC, B, C );
   or   I2(outAC, A, C );
   nand I3(ZN_temp, outAB, outBC, outAC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MOAI222UHDV3 ( ZN, A, B, C , VDD, VSS, VNW, VPW); 
   input A, B, C;
inout VDD, VSS, VNW, VPW;
   output ZN;
wire ZN_temp;

   or   I0(outAB, A, B );
   or   I1(outBC, B, C );
   or   I2(outAC, A, C );
   nand I3(ZN_temp, outAB, outBC, outAC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //

  specify


	if(B==1'b0 && C==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B==1'b1 && C==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(A==1'b0 && C==1'b1)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b1 && C==1'b0)
	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A==1'b0 && B==1'b1)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A==1'b1 && B==1'b0)
	// arc C --> ZN
	 (C => ZN) = (1.0,1.0);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2UHDV0P4 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2UHDV0P7 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2UHDV1 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2UHDV2 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2UHDV3 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2UHDV4 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2UHDV6 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2UHDV8 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nand I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2XBUHDV0P4 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  I1(OUT0, A1 );
    nand I0(ZN_temp, OUT0, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2XBUHDV0P7 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  I1(OUT0, A1 );
    nand I0(ZN_temp, OUT0, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2XBUHDV1 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  I1(OUT0, A1 );
    nand I0(ZN_temp, OUT0, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2XBUHDV2 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  I1(OUT0, A1 );
    nand I0(ZN_temp, OUT0, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2XBUHDV4 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  I1(OUT0, A1 );
    nand I0(ZN_temp, OUT0, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2XBUHDV6 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  I1(OUT0, A1 );
    nand I0(ZN_temp, OUT0, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND2XBUHDV8 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  I1(OUT0, A1 );
    nand I0(ZN_temp, OUT0, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND3BBUHDV0P7 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

      not  I1(A1_inv, A1 );
      not  I2(A2_inv, A2 );
      and  I3(OUT0, A1_inv, A2_inv );
      nand I0(ZN_temp, OUT0, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND3BBUHDV1 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

      not  I1(A1_inv, A1 );
      not  I2(A2_inv, A2 );
      and  I3(OUT0, A1_inv, A2_inv );
      nand I0(ZN_temp, OUT0, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND3BBUHDV2 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

      not  I1(A1_inv, A1 );
      not  I2(A2_inv, A2 );
      and  I3(OUT0, A1_inv, A2_inv );
      nand I0(ZN_temp, OUT0, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	// arc B --> ZN
	 (B => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND3BUHDV0P7 ( ZN, A1, B1, B2, VDD, VSS, VNW, VPW); 
input A1, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

      not  I1(A1_inv, A1 );
      nand I0(ZN_temp, A1_inv, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND3BUHDV1 ( ZN, A1, B1, B2, VDD, VSS, VNW, VPW); 
input A1, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

      not  I1(A1_inv, A1 );
      nand I0(ZN_temp, A1_inv, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND3BUHDV2 ( ZN, A1, B1, B2, VDD, VSS, VNW, VPW); 
input A1, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

      not  I1(A1_inv, A1 );
      nand I0(ZN_temp, A1_inv, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND3UHDV0P4 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

      nand I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND3UHDV0P7 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

      nand I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND3UHDV1 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

      nand I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND3UHDV2 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

      nand I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND4BUHDV0P7 ( ZN, A1, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I1(A1_inv, A1 );
   nand I0(ZN_temp, A1_inv, B1, B2, B3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND4BUHDV1 ( ZN, A1, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I1(A1_inv, A1 );
   nand I0(ZN_temp, A1_inv, B1, B2, B3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND4BUHDV2 ( ZN, A1, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I1(A1_inv, A1 );
   nand I0(ZN_temp, A1_inv, B1, B2, B3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	// arc B3 --> ZN
	 (B3 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND4UHDV0P7 ( ZN, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nand I0(ZN_temp, A1, A2, A3, A4 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND4UHDV1 ( ZN, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nand I0(ZN_temp, A1, A2, A3, A4 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND4UHDV2 ( ZN, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nand I0(ZN_temp, A1, A2, A3, A4 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND4XXBBUHDV0P7 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not (A1x, A1 );
  not (A2x, A2 );
  nand (ZN_temp, A1x, A2x, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND4XXBBUHDV1 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not (A1x, A1 );
  not (A2x, A2 );
  nand (ZN_temp, A1x, A2x, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND4XXBBUHDV2 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not (A1x, A1 );
  not (A2x, A2 );
  nand (ZN_temp, A1x, A2x, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NAND4XXBBUHDV3 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not (A1x, A1 );
  not (A2x, A2 );
  nand (ZN_temp, A1x, A2x, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2UHDV0P4 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2UHDV0P7 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2UHDV1 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2UHDV2 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2UHDV3 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2UHDV4 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2UHDV6 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2UHDV8 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    nor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2XBUHDV0P4 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I1(A1_inv, A1 );
    nor I0(ZN_temp, A1_inv, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2XBUHDV0P7 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I1(A1_inv, A1 );
    nor I0(ZN_temp, A1_inv, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2XBUHDV1 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I1(A1_inv, A1 );
    nor I0(ZN_temp, A1_inv, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2XBUHDV2 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I1(A1_inv, A1 );
    nor I0(ZN_temp, A1_inv, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2XBUHDV3 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I1(A1_inv, A1 );
    nor I0(ZN_temp, A1_inv, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2XBUHDV4 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I1(A1_inv, A1 );
    nor I0(ZN_temp, A1_inv, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2XBUHDV6 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I1(A1_inv, A1 );
    nor I0(ZN_temp, A1_inv, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR2XBUHDV8 ( ZN, A1, B1, VDD, VSS, VNW, VPW); 
input A1, B1;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not I1(A1_inv, A1 );
    nor I0(ZN_temp, A1_inv, B1 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR3BUHDV0P7 ( ZN, A1, B1, B2, VDD, VSS, VNW, VPW); 
input A1, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I1(A1_inv, A1 );
   nor  I0(ZN_temp, A1_inv, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR3BUHDV1 ( ZN, A1, B1, B2, VDD, VSS, VNW, VPW); 
input A1, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I1(A1_inv, A1 );
   nor  I0(ZN_temp, A1_inv, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR3BUHDV2 ( ZN, A1, B1, B2, VDD, VSS, VNW, VPW); 
input A1, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I1(A1_inv, A1 );
   nor  I0(ZN_temp, A1_inv, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR3BUHDV3 ( ZN, A1, B1, B2, VDD, VSS, VNW, VPW); 
input A1, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I1(A1_inv, A1 );
   nor  I0(ZN_temp, A1_inv, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR3BUHDV4 ( ZN, A1, B1, B2, VDD, VSS, VNW, VPW); 
input A1, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I1(A1_inv, A1 );
   nor  I0(ZN_temp, A1_inv, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR3UHDV0P4 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nor  I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR3UHDV0P7 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nor  I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR3UHDV1 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nor  I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR3UHDV2 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nor  I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR3UHDV3 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nor  I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR3UHDV4 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nor  I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR4UHDV0P7 ( ZN, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nor I0(ZN_temp, A1, A2, A3, A4 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR4UHDV1 ( ZN, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nor I0(ZN_temp, A1, A2, A3, A4 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR4UHDV2 ( ZN, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nor I0(ZN_temp, A1, A2, A3, A4 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR4UHDV3 ( ZN, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   nor I0(ZN_temp, A1, A2, A3, A4 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	// arc A4 --> ZN 
	 (A4 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR4XXBBUHDV0P7 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not (A1x, A1 );
  not (A2x, A2 );
  nor (ZN_temp, A1x, A2x, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR4XXBBUHDV1 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not (A1x, A1 );
  not (A2x, A2 );
  nor (ZN_temp, A1x, A2x, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR4XXBBUHDV2 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not (A1x, A1 );
  not (A2x, A2 );
  nor (ZN_temp, A1x, A2x, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR4XXBBUHDV3 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not (A1x, A1 );
  not (A2x, A2 );
  nor (ZN_temp, A1x, A2x, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NOR4XXBBUHDV4 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not (A1x, A1 );
  not (A2x, A2 );
  nor (ZN_temp, A1x, A2x, B1, B2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA112UHDV0P4 ( Z, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or   I0(outA, A1, A2 );
   and  I1(Z_temp, B, C, outA );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA112UHDV0P7 ( Z, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or   I0(outA, A1, A2 );
   and  I1(Z_temp, B, C, outA );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA112UHDV1 ( Z, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or   I0(outA, A1, A2 );
   and  I1(Z_temp, B, C, outA );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA112UHDV2 ( Z, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or   I0(outA, A1, A2 );
   and  I1(Z_temp, B, C, outA );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA112UHDV3 ( Z, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or   I0(outA, A1, A2 );
   and  I1(Z_temp, B, C, outA );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA12UHDV0P4 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  and I1(Z_temp, outA, B );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA12UHDV0P7 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  and I1(Z_temp, outA, B );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA12UHDV1 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  and I1(Z_temp, outA, B );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA12UHDV2 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  and I1(Z_temp, outA, B );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA12UHDV3 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  and I1(Z_temp, outA, B );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA12UHDV4 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  and I1(Z_temp, outA, B );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA21BUHDV0P4 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  not I2(B_inv, B );
  and I1(Z_temp, outA, B_inv );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA21BUHDV0P7 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  not I2(B_inv, B );
  and I1(Z_temp, outA, B_inv );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA21BUHDV1 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  not I2(B_inv, B );
  and I1(Z_temp, outA, B_inv );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA21BUHDV2 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  not I2(B_inv, B );
  and I1(Z_temp, outA, B_inv );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA21BUHDV3 ( Z, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  not I2(B_inv, B );
  and I1(Z_temp, outA, B_inv );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// arc B --> Z
	 (B => Z) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA221UHDV0P4 ( Z, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   and I2(Z_temp, outA, outB, C );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA221UHDV0P7 ( Z, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   and I2(Z_temp, outA, outB, C );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA221UHDV1 ( Z, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   and I2(Z_temp, outA, outB, C );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA221UHDV2 ( Z, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   and I2(Z_temp, outA, outB, C );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA221UHDV3 ( Z, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   and I2(Z_temp, outA, outB, C );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> Z 
	 (C => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA222UHDV0P4 ( Z, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   or  I2(outC, C1, C2 );
   and I3(Z_temp, outA, outB, outC );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA222UHDV0P7 ( Z, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   or  I2(outC, C1, C2 );
   and I3(Z_temp, outA, outB, outC );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA222UHDV1 ( Z, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   or  I2(outC, C1, C2 );
   and I3(Z_temp, outA, outB, outC );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA222UHDV2 ( Z, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   or  I2(outC, C1, C2 );
   and I3(Z_temp, outA, outB, outC );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA222UHDV3 ( Z, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   or  I2(outC, C1, C2 );
   and I3(Z_temp, outA, outB, outC );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> Z 
	 (C1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> Z 
	 (C2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA22UHDV0P4 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA22UHDV0P7 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA22UHDV1 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA22UHDV2 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA22UHDV3 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA22UHDV4 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA22UHDV6 ( Z, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA31UHDV0P4 ( Z, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or  I0(outA, A1, A2, A3 );
    and I1(Z_temp, outA, B );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA31UHDV0P7 ( Z, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or  I0(outA, A1, A2, A3 );
    and I1(Z_temp, outA, B );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA31UHDV1 ( Z, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or  I0(outA, A1, A2, A3 );
    and I1(Z_temp, outA, B );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA31UHDV2 ( Z, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or  I0(outA, A1, A2, A3 );
    and I1(Z_temp, outA, B );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> Z 
	 (B => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA32UHDV0P7 ( Z, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2, A3 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA32UHDV1 ( Z, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2, A3 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA32UHDV2 ( Z, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2, A3 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA32UHDV3 ( Z, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2, A3 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA32UHDV4 ( Z, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  or  I0(outA, A1, A2, A3 );
  or  I1(outB, B1, B2 );
  and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA33UHDV0P7 ( Z, A1, A2, A3, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or  I0(outA, A1, A2, A3 );
    or  I1(outB, B1, B2, B3 );
    and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA33UHDV1 ( Z, A1, A2, A3, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or  I0(outA, A1, A2, A3 );
    or  I1(outB, B1, B2, B3 );
    and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA33UHDV2 ( Z, A1, A2, A3, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or  I0(outA, A1, A2, A3 );
    or  I1(outB, B1, B2, B3 );
    and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA33UHDV3 ( Z, A1, A2, A3, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or  I0(outA, A1, A2, A3 );
    or  I1(outB, B1, B2, B3 );
    and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OA33UHDV4 ( Z, A1, A2, A3, B1, B2, B3, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2, B3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or  I0(outA, A1, A2, A3 );
    or  I1(outB, B1, B2, B3 );
    and I2(Z_temp, outA, outB );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && B3==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> Z 
	 (B1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> Z 
	 (B2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B3 --> Z 
	 (B3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI211UHDV0P4 ( ZN, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI211UHDV0P7 ( ZN, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI211UHDV1 ( ZN, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI211UHDV2 ( ZN, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI211UHDV3 ( ZN, A1, A2, B, C, VDD, VSS, VNW, VPW); 
input A1, A2, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI21BUHDV0P4 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outB, B1, B2 );
  not  I2(A_inv, A );
  nand I1(ZN_temp, outB, A_inv );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI21BUHDV0P7 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outB, B1, B2 );
  not  I2(A_inv, A );
  nand I1(ZN_temp, outB, A_inv );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI21BUHDV1 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outB, B1, B2 );
  not  I2(A_inv, A );
  nand I1(ZN_temp, outB, A_inv );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI21BUHDV2 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outB, B1, B2 );
  not  I2(A_inv, A );
  nand I1(ZN_temp, outB, A_inv );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI21UHDV0P4 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI21UHDV0P7 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI21UHDV1 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI21UHDV2 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI21UHDV3 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI21UHDV4 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI21UHDV6 ( ZN, A1, A2, B, VDD, VSS, VNW, VPW); 
input A1, A2, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  or   I0(outA, A1, A2 );
  nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI221UHDV0P4 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI221UHDV0P7 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI221UHDV1 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI221UHDV2 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI221UHDV3 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI221UHDV4 ( ZN, A1, A2, B1, B2, C, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or  I0(outA, A1, A2 );
   or  I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C --> ZN 
	 (C => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI222UHDV0P4 ( ZN, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   or   I2(outC, C1, C2 );
   nand I3(ZN_temp, outA, outB, outC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI222UHDV0P7 ( ZN, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   or   I2(outC, C1, C2 );
   nand I3(ZN_temp, outA, outB, outC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI222UHDV1 ( ZN, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   or   I2(outC, C1, C2 );
   nand I3(ZN_temp, outA, outB, outC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI222UHDV2 ( ZN, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   or   I2(outC, C1, C2 );
   nand I3(ZN_temp, outA, outB, outC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI222UHDV3 ( ZN, A1, A2, B1, B2, C1, C2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2, C1, C2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   or   I2(outC, C1, C2 );
   nand I3(ZN_temp, outA, outB, outC );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b0 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && C1==1'b1 && C2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C1 --> ZN 
	 (C1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b0 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b0) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && B1==1'b1 && B2==1'b1) 
	// arc C2 --> ZN 
	 (C2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22BBUHDV0P4 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I3(A1_inv, A1 );
   not  I4(A2_inv, A2 );
   or   I0(outA, A1_inv, A2_inv );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22BBUHDV0P7 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I3(A1_inv, A1 );
   not  I4(A2_inv, A2 );
   or   I0(outA, A1_inv, A2_inv );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22BBUHDV1 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I3(A1_inv, A1 );
   not  I4(A2_inv, A2 );
   or   I0(outA, A1_inv, A2_inv );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22BBUHDV2 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   not  I3(A1_inv, A1 );
   not  I4(A2_inv, A2 );
   or   I0(outA, A1_inv, A2_inv );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22UHDV0P4 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22UHDV0P7 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22UHDV1 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22UHDV2 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22UHDV3 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22UHDV4 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22UHDV6 ( ZN, A1, A2, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22XBUHDV0P4 ( ZN, A1, A2, B1, B2N, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2N;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  SMC_I0(OUT0, B2N );
    or   SMC_I1(OUT1, OUT0, B1 );
    or   SMC_I2(OUT2, A1, A2 );
    nand SMC_I3(ZN_temp, OUT1, OUT2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 	// specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 
  
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22XBUHDV0P7 ( ZN, A1, A2, B1, B2N, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2N;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  SMC_I0(OUT0, B2N );
    or   SMC_I1(OUT1, OUT0, B1 );
    or   SMC_I2(OUT2, A1, A2 );
    nand SMC_I3(ZN_temp, OUT1, OUT2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 	// specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 
  
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22XBUHDV1 ( ZN, A1, A2, B1, B2N, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2N;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  SMC_I0(OUT0, B2N );
    or   SMC_I1(OUT1, OUT0, B1 );
    or   SMC_I2(OUT2, A1, A2 );
    nand SMC_I3(ZN_temp, OUT1, OUT2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 	// specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 
  
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22XBUHDV2 ( ZN, A1, A2, B1, B2N, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2N;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  SMC_I0(OUT0, B2N );
    or   SMC_I1(OUT1, OUT0, B1 );
    or   SMC_I2(OUT2, A1, A2 );
    nand SMC_I3(ZN_temp, OUT1, OUT2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 	// specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 
  
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI22XBUHDV4 ( ZN, A1, A2, B1, B2N, VDD, VSS, VNW, VPW); 
input A1, A2, B1, B2N;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    not  SMC_I0(OUT0, B2N );
    or   SMC_I1(OUT1, OUT0, B1 );
    or   SMC_I2(OUT2, A1, A2 );
    nand SMC_I3(ZN_temp, OUT1, OUT2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 	// specify_block_begin 

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	if(B1==1'b0 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b0)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2N==1'b1)
	// comb arc A2 --> ZN
	 (A2 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b0)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2==1'b1)
	// comb arc B2N --> ZN
	 (B2N => ZN) = (1.0,1.0);

	// specify_block_end 
  
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI2XB11UHDV0P4 ( ZN, A1, A2N, B, C, VDD, VSS, VNW, VPW); 
input A1, A2N, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not  I0(a2nn, A2N );
  or   I2(outA, A1, a2nn );
  nand I4(ZN_temp, outA, B, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

// specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 




	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI2XB11UHDV0P7 ( ZN, A1, A2N, B, C, VDD, VSS, VNW, VPW); 
input A1, A2N, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not  I0(a2nn, A2N );
  or   I2(outA, A1, a2nn );
  nand I4(ZN_temp, outA, B, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

// specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 




	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI2XB11UHDV1 ( ZN, A1, A2N, B, C, VDD, VSS, VNW, VPW); 
input A1, A2N, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not  I0(a2nn, A2N );
  or   I2(outA, A1, a2nn );
  nand I4(ZN_temp, outA, B, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

// specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 




	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI2XB11UHDV2 ( ZN, A1, A2N, B, C, VDD, VSS, VNW, VPW); 
input A1, A2N, B, C;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not  I0(a2nn, A2N );
  or   I2(outA, A1, a2nn );
  nand I4(ZN_temp, outA, B, C );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 

// specify_block_begin 

	// comb arc A1 --> ZN
	 (A1 => ZN) = (1.0,1.0);

	// comb arc A2N --> ZN
	 (A2N => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc B --> ZN
	 (B => ZN) = (1.0,1.0);

	if(A1==1'b0 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b0)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	if(A1==1'b1 && A2N==1'b1)
	// comb arc C --> ZN
	 (C => ZN) = (1.0,1.0);

	// specify_block_end 




	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI2XB1UHDV0P4 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not  I2(B2_inv, B2 );
  or   I0(outB, B1, B2_inv );
  nand I1(ZN_temp, A, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI2XB1UHDV0P7 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not  I2(B2_inv, B2 );
  or   I0(outB, B1, B2_inv );
  nand I1(ZN_temp, A, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI2XB1UHDV1 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not  I2(B2_inv, B2 );
  or   I0(outB, B1, B2_inv );
  nand I1(ZN_temp, A, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI2XB1UHDV2 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not  I2(B2_inv, B2 );
  or   I0(outB, B1, B2_inv );
  nand I1(ZN_temp, A, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI2XB1UHDV4 ( ZN, A, B1, B2, VDD, VSS, VNW, VPW); 
input A, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  not  I2(B2_inv, B2 );
  or   I0(outB, B1, B2_inv );
  nand I1(ZN_temp, A, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	if(B1==1'b0 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b0)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	if(B1==1'b1 && B2==1'b1)
	// arc A --> ZN
	 (A => ZN) = (1.0,1.0);

	// arc B1 --> ZN
	 (B1 => ZN) = (1.0,1.0);

	// arc B2 --> ZN
	 (B2 => ZN) = (1.0,1.0);
	 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI31UHDV0P4 ( ZN, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2, A3 );
   nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI31UHDV0P7 ( ZN, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2, A3 );
   nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI31UHDV1 ( ZN, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2, A3 );
   nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI31UHDV2 ( ZN, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2, A3 );
   nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI31UHDV3 ( ZN, A1, A2, A3, B, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2, A3 );
   nand I1(ZN_temp, outA, B );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B --> ZN 
	 (B => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI32UHDV0P4 ( ZN, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2, A3 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI32UHDV0P7 ( ZN, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2, A3 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI32UHDV1 ( ZN, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2, A3 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI32UHDV2 ( ZN, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2, A3 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OAI32UHDV3 ( ZN, A1, A2, A3, B1, B2, VDD, VSS, VNW, VPW); 
input A1, A2, A3, B1, B2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   or   I0(outA, A1, A2, A3 );
   or   I1(outB, B1, B2 );
   nand I2(ZN_temp, outA, outB );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(B1==1'b0 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(B1==1'b1 && B2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B1 --> ZN 
	 (B1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b0) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1 && A3==1'b1) 
	// arc B2 --> ZN 
	 (B2 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR2UHDV0P4 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR2UHDV0P7 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR2UHDV1 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR2UHDV2 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR2UHDV3 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR2UHDV4 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR2UHDV6 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR2UHDV8 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR3UHDV0P7 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR3UHDV1 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR3UHDV2 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR3UHDV3 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR3UHDV4 ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    or (Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR4UHDV0P7 ( Z, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(OUT0, A4 );
    buf I1(OUT1, A2 );
    buf I2(OUT2, A3 );
    buf I3(OUT3, A1 );
    or  I4(Z_temp, OUT0, OUT1, OUT2, OUT3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR4UHDV1 ( Z, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(OUT0, A4 );
    buf I1(OUT1, A2 );
    buf I2(OUT2, A3 );
    buf I3(OUT3, A1 );
    or  I4(Z_temp, OUT0, OUT1, OUT2, OUT3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module OR4UHDV2 ( Z, A1, A2, A3, A4, VDD, VSS, VNW, VPW); 
input A1, A2, A3, A4;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    buf I0(OUT0, A4 );
    buf I1(OUT1, A2 );
    buf I2(OUT2, A3 );
    buf I3(OUT3, A1 );
    or  I4(Z_temp, OUT0, OUT1, OUT2, OUT3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	// arc A4 --> Z 
	 (A4 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module PULLUHD0 ( Z, VDD, VSS, VNW, VPW); 
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	assign Z_temp = 1'b0; 
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module PULLUHD1 ( Z, VDD, VSS, VNW, VPW); 
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

	assign Z_temp = 1'b1; 
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
   `ifdef functional  //  functional //

   `else




   specify

   endspecify

  `endif // functional //

endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module TBUFUHDV0P7 ( Z, I, OE, VDD, VSS, VNW, VPW); 
input I, OE;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  bufif1 I0(Z_temp, I, OE );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module TBUFUHDV1 ( Z, I, OE, VDD, VSS, VNW, VPW); 
input I, OE;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  bufif1 I0(Z_temp, I, OE );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module TBUFUHDV12 ( Z, I, OE, VDD, VSS, VNW, VPW); 
input I, OE;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  bufif1 I0(Z_temp, I, OE );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module TBUFUHDV16 ( Z, I, OE, VDD, VSS, VNW, VPW); 
input I, OE;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  bufif1 I0(Z_temp, I, OE );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module TBUFUHDV2 ( Z, I, OE, VDD, VSS, VNW, VPW); 
input I, OE;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  bufif1 I0(Z_temp, I, OE );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module TBUFUHDV24 ( Z, I, OE, VDD, VSS, VNW, VPW); 
input I, OE;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  bufif1 I0(Z_temp, I, OE );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module TBUFUHDV3 ( Z, I, OE, VDD, VSS, VNW, VPW); 
input I, OE;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  bufif1 I0(Z_temp, I, OE );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module TBUFUHDV4 ( Z, I, OE, VDD, VSS, VNW, VPW); 
input I, OE;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  bufif1 I0(Z_temp, I, OE );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module TBUFUHDV6 ( Z, I, OE, VDD, VSS, VNW, VPW); 
input I, OE;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  bufif1 I0(Z_temp, I, OE );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module TBUFUHDV8 ( Z, I, OE, VDD, VSS, VNW, VPW); 
input I, OE;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  bufif1 I0(Z_temp, I, OE );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc I --> Z 
	 (I => Z) = (1.0,1.0); 
 
	// arc OE --> Z 
	 (OE => Z) = (1.0,1.0,1.0,1.0,1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XNOR2UHDV0P4 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    xnor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (ZN:A1) 
	 (posedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (ZN:A1) 
	 (negedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (ZN:A2) 
	 (posedge A2 => (ZN:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (ZN:A2) 
	 (negedge A2 => (ZN:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XNOR2UHDV0P7 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    xnor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (ZN:A1) 
	 (posedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (ZN:A1) 
	 (negedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (ZN:A2) 
	 (posedge A2 => (ZN:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (ZN:A2) 
	 (negedge A2 => (ZN:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XNOR2UHDV1 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    xnor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (ZN:A1) 
	 (posedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (ZN:A1) 
	 (negedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (ZN:A2) 
	 (posedge A2 => (ZN:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (ZN:A2) 
	 (negedge A2 => (ZN:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XNOR2UHDV2 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    xnor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (ZN:A1) 
	 (posedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (ZN:A1) 
	 (negedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (ZN:A2) 
	 (posedge A2 => (ZN:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (ZN:A2) 
	 (negedge A2 => (ZN:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XNOR2UHDV4 ( ZN, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

    xnor I0(ZN_temp, A1, A2 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (ZN:A1) 
	 (posedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (ZN:A1) 
	 (negedge A1 => (ZN:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (ZN:A2) 
	 (posedge A2 => (ZN:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (ZN:A2) 
	 (negedge A2 => (ZN:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XNOR3UHDV0P7 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   xnor I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(A2==1'b0 && A3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b0 && A3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XNOR3UHDV1 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   xnor I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(A2==1'b0 && A3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b0 && A3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XNOR3UHDV2 ( ZN, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

   xnor I0(ZN_temp, A1, A2, A3 );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(A2==1'b0 && A3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b0 && A3==1'b1) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b0) 
	// arc A1 --> ZN 
	 (A1 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b1) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b0) 
	// arc A2 --> ZN 
	 (A2 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc A3 --> ZN 
	 (A3 => ZN) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XOR2UHDV0P4 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    xor I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XOR2UHDV0P7 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    xor I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XOR2UHDV1 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    xor I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XOR2UHDV2 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    xor I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XOR2UHDV4 ( Z, A1, A2, VDD, VSS, VNW, VPW); 
input A1, A2;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

    xor I0(Z_temp, A1, A2 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc posedge A1 --> (Z:A1) 
	 (posedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc negedge A1 --> (Z:A1) 
	 (negedge A1 => (Z:A1)) = (1.0,1.0); 
 
	// arc posedge A2 --> (Z:A2) 
	 (posedge A2 => (Z:A2)) = (1.0,1.0); 
 
	// arc negedge A2 --> (Z:A2) 
	 (negedge A2 => (Z:A2)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XOR3UHDV0P7T ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   xor I0(Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(A2==1'b0 && A3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b0 && A3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XOR3UHDV1T ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   xor I0(Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(A2==1'b0 && A3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b0 && A3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module XOR3UHDV2T ( Z, A1, A2, A3, VDD, VSS, VNW, VPW); 
input A1, A2, A3;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

   xor I0(Z_temp, A1, A2, A3 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(A2==1'b0 && A3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b0 && A3==1'b0) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A2==1'b1 && A3==1'b1) 
	// arc A1 --> Z 
	 (A1 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A3==1'b0) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A3==1'b1) 
	// arc A2 --> Z 
	 (A2 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b0 && A2==1'b0) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
	if(A1==1'b1 && A2==1'b1) 
	// arc A3 --> Z 
	 (A3 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHAQUHDV1 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER );
  not      I5 (cond0, n1 );
  not      I6 (nTE, TE );
  and      I7 (n0, nTE, cond0 );
  or       I8 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHAQUHDV2 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER );
  not      I5 (cond0, n1 );
  not      I6 (nTE, TE );
  and      I7 (n0, nTE, cond0 );
  or       I8 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHAQUHDV3 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER );
  not      I5 (cond0, n1 );
  not      I6 (nTE, TE );
  and      I7 (n0, nTE, cond0 );
  or       I8 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHAQUHDV4 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER );
  not      I5 (cond0, n1 );
  not      I6 (nTE, TE );
  and      I7 (n0, nTE, cond0 );
  or       I8 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHAQUHDV6 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER );
  not      I5 (cond0, n1 );
  not      I6 (nTE, TE );
  and      I7 (n0, nTE, cond0 );
  or       I8 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHAQUHDV8 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE; 
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  udp_tlat I4 (n1, xE, nclk, xRN, xSN, NOTIFIER );
  not      I5 (cond0, n1 );
  not      I6 (nTE, TE );
  and      I7 (n0, nTE, cond0 );
  or       I8 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
   specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(posedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-HL
	$setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1), 1.0, 1.0, NOTIFIER);


	// mpw CK_lh 
	$width(posedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
   endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHQUHDV1 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  or       I4 (n0, xE, xTE );
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER );
  not      I6 (cond0, n1 );
  or       I7 (Q_temp, cond0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHQUHDV2 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  or       I4 (n0, xE, xTE );
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER );
  not      I6 (cond0, n1 );
  or       I7 (Q_temp, cond0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHQUHDV3 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  or       I4 (n0, xE, xTE );
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER );
  not      I6 (cond0, n1 );
  or       I7 (Q_temp, cond0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHQUHDV4 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  or       I4 (n0, xE, xTE );
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER );
  not      I6 (cond0, n1 );
  or       I7 (Q_temp, cond0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHQUHDV6 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  or       I4 (n0, xE, xTE );
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER );
  not      I6 (cond0, n1 );
  or       I7 (Q_temp, cond0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLAHQUHDV8 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  not      I3 (nclk, CK );
  or       I4 (n0, xE, xTE );
  udp_tlat I5 (n1, n0, nclk, xRN, xSN, NOTIFIER );
  not      I6 (cond0, n1 );
  or       I7 (Q_temp, cond0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q 
	 (posedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANAQUHDV1 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER );
  or       I4 (n0, n1, xTE );
  and      I5 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANAQUHDV2 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER );
  or       I4 (n0, n1, xTE );
  and      I5 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANAQUHDV3 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER );
  or       I4 (n0, n1, xTE );
  and      I5 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANAQUHDV4 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER );
  or       I4 (n0, n1, xTE );
  and      I5 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANAQUHDV6 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER );
  or       I4 (n0, n1, xTE );
  and      I5 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANAQUHDV8 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  udp_tlat I3 (n1, xE, clk, xRN, xSN, NOTIFIER );
  or       I4 (n0, n1, xTE );
  and      I5 (Q_temp, n0, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 	// specify_block_begin 

	if(E==1'b0 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b0)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b1 && TE==1'b1)
	// comb arc CK --> Q
	 (CK => Q) = (1.0,1.0);

	if(E==1'b0 && TE==1'b0)
	// comb arc CK --> Q
	(negedge CK => (Q:1'bx)) = (1.0,1.0);

	if(E==1'b0)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	if(E==1'b1)
	// comb arc TE --> Q
	 (TE => Q) = (1.0,1.0);

	// setuphold E-HL CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		negedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);

	// setuphold E-LH CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1),
		posedge E &&& (ENABLE_NOT_TE == 1'b1),1.0, 1.0, NOTIFIER);


	// mpw CK_hl 
	$width(negedge CK,1.0,0,NOTIFIER);

	// specify_block_end 

 
 
   endspecify 
  `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANQUHDV1 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  or       I3 (n0, xE, xTE );
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER );
  and      I5 (Q_temp, n1, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANQUHDV2 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  or       I3 (n0, xE, xTE );
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER );
  and      I5 (Q_temp, n1, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANQUHDV3 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  or       I3 (n0, xE, xTE );
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER );
  and      I5 (Q_temp, n1, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANQUHDV4 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  or       I3 (n0, xE, xTE );
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER );
  and      I5 (Q_temp, n1, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANQUHDV6 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  or       I3 (n0, xE, xTE );
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER );
  and      I5 (Q_temp, n1, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKLANQUHDV8 ( Q, CK, E, TE, VDD, VSS, VNW, VPW); 
input CK, E, TE;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
wire ENABLE_NOT_TE;
wire ENABLE_NOT_E;
assign ENABLE_NOT_TE = (!TE) ? 1'b1:1'b0;
assign ENABLE_NOT_E = (!E) ? 1'b1:1'b0;
  buf      I0 (clk, CK );
  buf      I1 (xTE, TE );
  buf      I2 (xE, E );
  or       I3 (n0, xE, xTE );
  udp_tlat I4 (n1, n0, clk, xRN, xSN, NOTIFIER );
  and      I5 (Q_temp, n1, clk );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
 
   specify 
 
 
	if(E==1'b0 && TE==1'b0) 
	// arc CK --> Q
         (negedge CK => (Q:1'bx)) = (1.0,1.0); 

	if(E==1'b0 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b0) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0); 
 
	if(E==1'b1 && TE==1'b1) 
	// arc CK --> Q 
	 (CK => Q) = (1.0,1.0);	
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), negedge E, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_TE == 1'b1), posedge E, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), negedge TE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_E == 1'b1), posedge TE, 1.0, 1.0, NOTIFIER); 
 
 
 
 
        endspecify 
       `endif 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKMUX2UHDV0P7 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKMUX2UHDV1 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKMUX2UHDV2 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKMUX2UHDV3 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKMUX2UHDV4 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKMUX2UHDV6 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module CLKMUX2UHDV8 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DGRNQNUHDV0P7 ( QN, CK, D, RN, VDD, VSS, VNW, VPW); 
input CK, D, RN;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xSN, EN; 
  buf       X0 (xRN, RN );
  buf       IC (clk, CK );
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER );
  not       I2 (QN_temp, n0 );
  and       I4 (Deff, D, xRN );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DGRNQNUHDV1 ( QN, CK, D, RN, VDD, VSS, VNW, VPW); 
input CK, D, RN;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xSN, EN; 
  buf       X0 (xRN, RN );
  buf       IC (clk, CK );
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER );
  not       I2 (QN_temp, n0 );
  and       I4 (Deff, D, xRN );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DGRNQNUHDV2 ( QN, CK, D, RN, VDD, VSS, VNW, VPW); 
input CK, D, RN;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xSN, EN; 
  buf       X0 (xRN, RN );
  buf       IC (clk, CK );
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER );
  not       I2 (QN_temp, n0 );
  and       I4 (Deff, D, xRN );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DGRSNQNUHDV0P7 ( QN, CK, D, RN, SN, VDD, VSS, VNW, VPW); 
input CK, D, RN, SN;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 EN; 
  buf I0 (xRN, RN );
  buf I1 (xSN, SN );
  buf     IC (clk, CK );
  udp_edffts I2 (n0, D, clk, xRN, xSN, EN, NOTIFIER );
  not     I5 (QN_temp, n0 );
  not     I6 (nSN, SN );
  and     I7 (out0, RN, nSN );
  and     I8 (out1, D, RN );
  or      I4 (Deff, out0, out1 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I9(ENABLE_RN, RN); 
 
    buf SMC_I10(ENABLE_RN, RN); 
     
    or  SMC_I11(Deff, out0, out1); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DGRSNQNUHDV1 ( QN, CK, D, RN, SN, VDD, VSS, VNW, VPW); 
input CK, D, RN, SN;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 EN; 
  buf I0 (xRN, RN );
  buf I1 (xSN, SN );
  buf     IC (clk, CK );
  udp_edffts I2 (n0, D, clk, xRN, xSN, EN, NOTIFIER );
  not     I5 (QN_temp, n0 );
  not     I6 (nSN, SN );
  and     I7 (out0, RN, nSN );
  and     I8 (out1, D, RN );
  or      I4 (Deff, out0, out1 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I9(ENABLE_RN, RN); 
 
    buf SMC_I10(ENABLE_RN, RN); 
     
    or  SMC_I11(Deff, out0, out1); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DGRSNQNUHDV2 ( QN, CK, D, RN, SN, VDD, VSS, VNW, VPW); 
input CK, D, RN, SN;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 EN; 
  buf I0 (xRN, RN );
  buf I1 (xSN, SN );
  buf     IC (clk, CK );
  udp_edffts I2 (n0, D, clk, xRN, xSN, EN, NOTIFIER );
  not     I5 (QN_temp, n0 );
  not     I6 (nSN, SN );
  and     I7 (out0, RN, nSN );
  and     I8 (out1, D, RN );
  or      I4 (Deff, out0, out1 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    buf SMC_I9(ENABLE_RN, RN); 
 
    buf SMC_I10(ENABLE_RN, RN); 
     
    or  SMC_I11(Deff, out0, out1); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge D &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge RN, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge RN, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            negedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN == 1'b1), 
            posedge SN &&& (ENABLE_RN == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DQNUHDV0P7 ( QN, CK, D, VDD, VSS, VNW, VPW); 
input CK, D;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  not     I2 (QN_temp, n0 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DQNUHDV1 ( QN, CK, D, VDD, VSS, VNW, VPW); 
input CK, D;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  not     I2 (QN_temp, n0 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DQNUHDV2 ( QN, CK, D, VDD, VSS, VNW, VPW); 
input CK, D;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  not     I2 (QN_temp, n0 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DQUHDV0P7 ( Q, CK, D, VDD, VSS, VNW, VPW); 
input CK, D;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DQUHDV1 ( Q, CK, D, VDD, VSS, VNW, VPW); 
input CK, D;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DQUHDV2 ( Q, CK, D, VDD, VSS, VNW, VPW); 
input CK, D;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DQUHDV3 ( Q, CK, D, VDD, VSS, VNW, VPW); 
input CK, D;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DRNQUHDV0P7 (D, RDN, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  buf   XX0 (xRN, RDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DRNQUHDV1 (D, RDN, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  buf   XX0 (xRN, RDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DRNQUHDV2 (D, RDN, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  buf   XX0 (xRN, RDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DRNQUHDV3 (D, RDN, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  buf   XX0 (xRN, RDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DRQUHDV0P7 (D, RD, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RD, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  not   XX0 (xRN, RD );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DRQUHDV1 (D, RD, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RD, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  not   XX0 (xRN, RD );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DRQUHDV2 (D, RD, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RD, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  not   XX0 (xRN, RD );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DRQUHDV3 (D, RD, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RD, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  not   XX0 (xRN, RD );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_RD,RD);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge D &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D == 1'b1), negedge RD &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DSNQUHDV0P7 (D, SDN, CK, Q, VDD, VSS, VNW, VPW); 
  input D, SDN, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  buf   XX0 (xSN, SDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);



        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DSNQUHDV1 (D, SDN, CK, Q, VDD, VSS, VNW, VPW); 
  input D, SDN, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  buf   XX0 (xSN, SDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);



        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DSNQUHDV2 (D, SDN, CK, Q, VDD, VSS, VNW, VPW); 
  input D, SDN, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  buf   XX0 (xSN, SDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);



        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DSNQUHDV3 (D, SDN, CK, Q, VDD, VSS, VNW, VPW); 
  input D, SDN, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  buf   XX0 (xSN, SDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_SDN,SDN);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);



        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge D &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D == 1'b1), posedge SDN &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DSRNQUHDV1 (D, RDN, SDN, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SDN, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;
  buf   XX0 (xSN, SDN );
  buf   XX1 (xRN, RDN );
  buf     IC (clk, CK );
  udp_dff_rdn_pre_sdn I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify

// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);
		

  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module DSRNQUHDV2 (D, RDN, SDN, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SDN, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;
  buf   XX0 (xSN, SDN );
  buf   XX1 (xRN, RDN );
  buf     IC (clk, CK );
  udp_dff_rdn_pre_sdn I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    and SMC_I6(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I7(ENABLE_SDN,SDN);

    buf SMC_I8(ENABLE_RDN,RDN);


  specify

// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);
		

  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHQUHDV0P7 ( Q, D, E, VDD, VSS, VNW, VPW); 
input D, E;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  not I3(clk, E );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc E --> Q 
	(posedge E => (Q : D))  = (1.0,1.0); 
 
 
        $setuphold(negedge E, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge E, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(posedge E,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHQUHDV1 ( Q, D, E, VDD, VSS, VNW, VPW); 
input D, E;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  not I3(clk, E );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc E --> Q 
	(posedge E => (Q : D))  = (1.0,1.0); 
 
 
        $setuphold(negedge E, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge E, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(posedge E,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHQUHDV2 ( Q, D, E, VDD, VSS, VNW, VPW); 
input D, E;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  not I3(clk, E );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc E --> Q 
	(posedge E => (Q : D))  = (1.0,1.0); 
 
 
        $setuphold(negedge E, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge E, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(posedge E,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHQUHDV3 ( Q, D, E, VDD, VSS, VNW, VPW); 
input D, E;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  not I3(clk, E );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc E --> Q 
	(posedge E => (Q : D))  = (1.0,1.0); 
 
 
        $setuphold(negedge E, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge E, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(posedge E,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHRNQUHDV0P7 (D, RDN, E, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, E;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
not      I3(clk, E );
buf      XX0 (xRN, RDN );
udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
buf      I1 (Q_temp, n0 );
assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHRNQUHDV1 (D, RDN, E, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, E;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
not      I3(clk, E );
buf      XX0 (xRN, RDN );
udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
buf      I1 (Q_temp, n0 );
assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHRNQUHDV2 (D, RDN, E, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, E;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
not      I3(clk, E );
buf      XX0 (xRN, RDN );
udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
buf      I1 (Q_temp, n0 );
assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHRNQUHDV3 (D, RDN, E, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, E;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
not      I3(clk, E );
buf      XX0 (xRN, RDN );
udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
buf      I1 (Q_temp, n0 );
assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I5(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && E==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHSQUHDV0P7 (D, SD, E, Q, VDD, VSS, VNW, VPW); 
  input D, SD, E;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  not      I3 (clk, E );
  not      XX0 (xSDN, SD );
  udp_tlat I0 (n0, D, clk, xRN, xSDN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_SD,SD);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            negedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            posedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D == 1'b1), negedge SD &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge SD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHSQUHDV1 (D, SD, E, Q, VDD, VSS, VNW, VPW); 
  input D, SD, E;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  not      I3 (clk, E );
  not      XX0 (xSDN, SD );
  udp_tlat I0 (n0, D, clk, xRN, xSDN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_SD,SD);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            negedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            posedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D == 1'b1), negedge SD &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge SD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHSQUHDV2 (D, SD, E, Q, VDD, VSS, VNW, VPW); 
  input D, SD, E;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  not      I3 (clk, E );
  not      XX0 (xSDN, SD );
  udp_tlat I0 (n0, D, clk, xRN, xSDN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_SD,SD);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            negedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            posedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D == 1'b1), negedge SD &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge SD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LAHSQUHDV3 (D, SD, E, Q, VDD, VSS, VNW, VPW); 
  input D, SD, E;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  not      I3 (clk, E );
  not      XX0 (xSDN, SD );
  udp_tlat I0 (n0, D, clk, xRN, xSDN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I5(ENABLE_NOT_SD,SD);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc E --> Q
	(posedge E => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b0 && E==1'b1)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && E==1'b0)
	// arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);


        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            negedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_SD == 1'b1),
            posedge D &&& (ENABLE_NOT_SD == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(posedge E,1.0,0,NOTIFIER);

        $setuphold(negedge E &&& (ENABLE_NOT_D == 1'b1), negedge SD &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge SD,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALQUHDV0P7 ( Q, D, EN, VDD, VSS, VNW, VPW); 
input D, EN;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  buf      I3 (clk, EN );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc EN --> Q 
	(negedge EN => (Q : D))  = (1.0,1.0); 
 
 
        $setuphold(posedge EN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge EN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(negedge EN,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALQUHDV1 ( Q, D, EN, VDD, VSS, VNW, VPW); 
input D, EN;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  buf      I3 (clk, EN );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc EN --> Q 
	(negedge EN => (Q : D))  = (1.0,1.0); 
 
 
        $setuphold(posedge EN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge EN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(negedge EN,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALQUHDV2 ( Q, D, EN, VDD, VSS, VNW, VPW); 
input D, EN;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  buf      I3 (clk, EN );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc EN --> Q 
	(negedge EN => (Q : D))  = (1.0,1.0); 
 
 
        $setuphold(posedge EN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge EN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(negedge EN,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALQUHDV3 ( Q, D, EN, VDD, VSS, VNW, VPW); 
input D, EN;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  buf      I3 (clk, EN );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc D --> Q 
	 (D => Q) = (1.0,1.0); 
 
	// arc EN --> Q 
	(negedge EN => (Q : D))  = (1.0,1.0); 
 
 
        $setuphold(posedge EN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge EN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
        $width(negedge EN,1.0,0,NOTIFIER); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALRNQUHDV0P7 (D, RDN, EN, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, EN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  buf      I3 (clk, EN );
  buf       XX0 (xRN, RDN );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);


        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALRNQUHDV1 (D, RDN, EN, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, EN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  buf      I3 (clk, EN );
  buf       XX0 (xRN, RDN );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);


        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALRNQUHDV2 (D, RDN, EN, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, EN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  buf      I3 (clk, EN );
  buf       XX0 (xRN, RDN );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);


        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALRNQUHDV3 (D, RDN, EN, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, EN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D;
  buf      I3 (clk, EN );
  buf       XX0 (xRN, RDN );
  udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_D= (D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    buf SMC_I6(ENABLE_RDN,RDN);


  specify


	// arc D --> Q
	 (D => Q) = (1.0,1.0);

	// arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);


        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            negedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_RDN == 1'b1),
            posedge D &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $width(negedge EN,1.0,0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_D == 1'b1), posedge RDN &&& (ENABLE_D == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALSQUHDV0P7 (D, SD, EN, Q, VDD, VSS, VNW, VPW); 
  input D, SD, EN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  buf      I3 (clk, EN );
  not      XX0 (xSDN, SD );
  udp_tlat I0 (n0, D, clk, xRN, xSDN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not MGM_G0(ENABLE_NOT_SD,SD);


	not MGM_G1(ENABLE_NOT_D,D);




  specify


// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// seq arc SD --> Q
	(SD => Q)  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// seq arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// seq arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	
	

		$setuphold(posedge EN &&& (ENABLE_NOT_SD == 1'b1),
		negedge D &&& (ENABLE_NOT_SD == 1'b1),1.0,1.0,NOTIFIER);

		$setuphold(posedge EN &&& (ENABLE_NOT_SD == 1'b1),
		posedge D &&& (ENABLE_NOT_SD == 1'b1),1.0,1.0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D == 1'b1),
          negedge  SD &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);

	
	// mpw EN_hl 
	$width(negedge EN,1.0,0,NOTIFIER);

	// mpw SD_lh 
	$width(posedge SD,1.0,0,NOTIFIER);

	// specify_block_end 


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALSQUHDV1 (D, SD, EN, Q, VDD, VSS, VNW, VPW); 
  input D, SD, EN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  buf      I3 (clk, EN );
  not      XX0 (xSDN, SD );
  udp_tlat I0 (n0, D, clk, xRN, xSDN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not MGM_G0(ENABLE_NOT_SD,SD);


	not MGM_G1(ENABLE_NOT_D,D);




  specify


// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// seq arc SD --> Q
	(SD => Q)  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// seq arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// seq arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	
	

		$setuphold(posedge EN &&& (ENABLE_NOT_SD == 1'b1),
		negedge D &&& (ENABLE_NOT_SD == 1'b1),1.0,1.0,NOTIFIER);

		$setuphold(posedge EN &&& (ENABLE_NOT_SD == 1'b1),
		posedge D &&& (ENABLE_NOT_SD == 1'b1),1.0,1.0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D == 1'b1),
          negedge  SD &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);

	
	// mpw EN_hl 
	$width(negedge EN,1.0,0,NOTIFIER);

	// mpw SD_lh 
	$width(posedge SD,1.0,0,NOTIFIER);

	// specify_block_end 


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALSQUHDV2 (D, SD, EN, Q, VDD, VSS, VNW, VPW); 
  input D, SD, EN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  buf      I3 (clk, EN );
  not      XX0 (xSDN, SD );
  udp_tlat I0 (n0, D, clk, xRN, xSDN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not MGM_G0(ENABLE_NOT_SD,SD);


	not MGM_G1(ENABLE_NOT_D,D);




  specify


// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// seq arc SD --> Q
	(SD => Q)  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// seq arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// seq arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	
	

		$setuphold(posedge EN &&& (ENABLE_NOT_SD == 1'b1),
		negedge D &&& (ENABLE_NOT_SD == 1'b1),1.0,1.0,NOTIFIER);

		$setuphold(posedge EN &&& (ENABLE_NOT_SD == 1'b1),
		posedge D &&& (ENABLE_NOT_SD == 1'b1),1.0,1.0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D == 1'b1),
          negedge  SD &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);

	
	// mpw EN_hl 
	$width(negedge EN,1.0,0,NOTIFIER);

	// mpw SD_lh 
	$width(posedge SD,1.0,0,NOTIFIER);

	// specify_block_end 


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module LALSQUHDV3 (D, SD, EN, Q, VDD, VSS, VNW, VPW); 
  input D, SD, EN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D;
  buf      I3 (clk, EN );
  not      XX0 (xSDN, SD );
  udp_tlat I0 (n0, D, clk, xRN, xSDN, NOTIFIER );
  buf      I1 (Q_temp, n0 );
  assign ENABLE_NOT_D= (!D) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not MGM_G0(ENABLE_NOT_SD,SD);


	not MGM_G1(ENABLE_NOT_D,D);




  specify


// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc EN --> Q
	(negedge EN => (Q : D))  = (1.0,1.0);

	if(D==1'b0 && EN==1'b0)
	// seq arc SD --> Q
	(SD => Q)  = (1.0,1.0);

	if(D==1'b0 && EN==1'b1)
	// seq arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	if(D==1'b1 && EN==1'b1)
	// seq arc SD --> Q
	(posedge SD => (Q : 1'b1))  = (1.0,1.0);

	
	

		$setuphold(posedge EN &&& (ENABLE_NOT_SD == 1'b1),
		negedge D &&& (ENABLE_NOT_SD == 1'b1),1.0,1.0,NOTIFIER);

		$setuphold(posedge EN &&& (ENABLE_NOT_SD == 1'b1),
		posedge D &&& (ENABLE_NOT_SD == 1'b1),1.0,1.0,NOTIFIER);

        $setuphold(posedge EN &&& (ENABLE_NOT_D == 1'b1),
          negedge  SD &&& (ENABLE_NOT_D == 1'b1), 1.0, 1.0, NOTIFIER);

	
	// mpw EN_hl 
	$width(negedge EN,1.0,0,NOTIFIER);

	// mpw SD_lh 
	$width(posedge SD,1.0,0,NOTIFIER);

	// specify_block_end 


  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX2NUHDV0P4 ( ZN, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  udp_mux2 I00(z, I0, I1, S );
  not      I01(ZN_temp, z );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 	
	ifnone
	(I0 => ZN) = (1.0,1.0);	
 
	if(I0==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	(I1 => ZN) = (1.0,1.0);	
 
	// arc posedge S --> (ZN:S) 
	 (posedge S => (ZN:S)) = (1.0,1.0); 
 
	// arc negedge S --> (ZN:S) 
	 (negedge S => (ZN:S)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX2NUHDV0P7 ( ZN, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  udp_mux2 I00(z, I0, I1, S );
  not      I01(ZN_temp, z );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 	
	ifnone
	(I0 => ZN) = (1.0,1.0);	
 
	if(I0==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	(I1 => ZN) = (1.0,1.0);	
 
	// arc posedge S --> (ZN:S) 
	 (posedge S => (ZN:S)) = (1.0,1.0); 
 
	// arc negedge S --> (ZN:S) 
	 (negedge S => (ZN:S)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX2NUHDV1 ( ZN, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  udp_mux2 I00(z, I0, I1, S );
  not      I01(ZN_temp, z );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 	
	ifnone
	(I0 => ZN) = (1.0,1.0);	
 
	if(I0==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	(I1 => ZN) = (1.0,1.0);	
 
	// arc posedge S --> (ZN:S) 
	 (posedge S => (ZN:S)) = (1.0,1.0); 
 
	// arc negedge S --> (ZN:S) 
	 (negedge S => (ZN:S)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX2NUHDV2 ( ZN, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output ZN;
wire ZN_temp;

  udp_mux2 I00(z, I0, I1, S );
  not      I01(ZN_temp, z );
  assign ZN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? ZN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 
	if(I1==1'b1) 
	// arc I0 --> ZN 
	 (I0 => ZN) = (1.0,1.0); 
 	
	ifnone
	(I0 => ZN) = (1.0,1.0);	
 
	if(I0==1'b0) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> ZN 
	 (I1 => ZN) = (1.0,1.0); 

	ifnone
	(I1 => ZN) = (1.0,1.0);	
 
	// arc posedge S --> (ZN:S) 
	 (posedge S => (ZN:S)) = (1.0,1.0); 
 
	// arc negedge S --> (ZN:S) 
	 (negedge S => (ZN:S)) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX2UHDV0P4 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX2UHDV0P7 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX2UHDV1 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX2UHDV2 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX2UHDV3 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX2UHDV6 ( Z, I0, I1, S, VDD, VSS, VNW, VPW); 
input I0, I1, S;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_temp, I0, I1, S );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 

	if(I1==1'b0)
	// arc I0 --> Z
	 (I0 => Z) = (1.0,1.0);
 
	if(I1==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

 	ifnone
	(I0 => Z) = (1.0,1.0);	
  
	if(I0==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

 	ifnone
	(I1 => Z) = (1.0,1.0);	
 
	// arc posedge S --> (Z:S) 
	 (posedge S => (Z:S)) = (1.0,1.0); 
 
	// arc negedge S --> (Z:S) 
	 (negedge S => (Z:S)) = (1.0,1.0);
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX3UHDV0P7 ( Z, I0, I1, I2, S0, S1, VDD, VSS, VNW, VPW); 
input I0, I1, I2, S0, S1;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux4 u0 (Z_temp, I0, I1, I2, I2, S0, S1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

	ifnone
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

	ifnone
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 

	ifnone
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX3UHDV1 ( Z, I0, I1, I2, S0, S1, VDD, VSS, VNW, VPW); 
input I0, I1, I2, S0, S1;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux4 u0 (Z_temp, I0, I1, I2, I2, S0, S1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

	ifnone
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

	ifnone
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 

	ifnone
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUX3UHDV2 ( Z, I0, I1, I2, S0, S1, VDD, VSS, VNW, VPW); 
input I0, I1, I2, S0, S1;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux4 u0 (Z_temp, I0, I1, I2, I2, S0, S1 );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	if(I1==1'b0 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b0 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b0) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 
 
	if(I1==1'b1 && I2==1'b1) 
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 

	ifnone
	// arc I0 --> Z 
	 (I0 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b0) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I2==1'b1) 
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 

	ifnone
	// arc I1 --> Z 
	 (I1 => Z) = (1.0,1.0); 




 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 

	ifnone
	// arc I2 --> Z 
	 (I2 => Z) = (1.0,1.0); 




 
	if(I2==1'b0) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b0) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc posedge S0 --> (Z:S0) 
	 (posedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I2==1'b1) 
	// arc negedge S0 --> (Z:S0) 
	 (negedge S0 => (Z:S0)) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b1 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b0 && I1==1'b1 && S0==1'b0) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
	if(I0==1'b1 && I1==1'b0 && S0==1'b1) 
	// arc S1 --> Z 
	 (S1 => Z) = (1.0,1.0); 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUXINOR2UHDV0P7 ( Z, I0, I1, S, EN, VDD, VSS, VNW, VPW); 
input I0, I1, S, EN;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_bar, I0, I1, S );
  not (EN_bar, EN );
  and (Z_temp, Z_bar, EN_bar );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
        if(I0==1'b0 && I1==1'b1 && S==1'b1)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I0==1'b1 && I1==1'b0 && S==1'b0)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I0==1'b1 && I1==1'b1 && S==1'b0)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I0==1'b1 && I1==1'b1 && S==1'b1)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I1==1'b0)
        // arc I0 --> Z
         (I0 => Z) = (1.0,1.0);

        if(I1==1'b1)
        // arc I0 --> Z
         (I0 => Z) = (1.0,1.0);

        if(I0==1'b0)
        // arc I1 --> Z
         (I1 => Z) = (1.0,1.0);

        if(I0==1'b1)
        // arc I1 --> Z
         (I1 => Z) = (1.0,1.0);

        // arc posedge S --> (Z:S)
         (posedge S => (Z:S)) = (1.0,1.0);

        // arc negedge S --> (Z:S)
         (negedge S => (Z:S)) = (1.0,1.0);
 

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUXINOR2UHDV1 ( Z, I0, I1, S, EN, VDD, VSS, VNW, VPW); 
input I0, I1, S, EN;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_bar, I0, I1, S );
  not (EN_bar, EN );
  and (Z_temp, Z_bar, EN_bar );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
        if(I0==1'b0 && I1==1'b1 && S==1'b1)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I0==1'b1 && I1==1'b0 && S==1'b0)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I0==1'b1 && I1==1'b1 && S==1'b0)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I0==1'b1 && I1==1'b1 && S==1'b1)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I1==1'b0)
        // arc I0 --> Z
         (I0 => Z) = (1.0,1.0);

        if(I1==1'b1)
        // arc I0 --> Z
         (I0 => Z) = (1.0,1.0);

        if(I0==1'b0)
        // arc I1 --> Z
         (I1 => Z) = (1.0,1.0);

        if(I0==1'b1)
        // arc I1 --> Z
         (I1 => Z) = (1.0,1.0);

        // arc posedge S --> (Z:S)
         (posedge S => (Z:S)) = (1.0,1.0);

        // arc negedge S --> (Z:S)
         (negedge S => (Z:S)) = (1.0,1.0);
 

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module MUXINOR2UHDV2 ( Z, I0, I1, S, EN, VDD, VSS, VNW, VPW); 
input I0, I1, S, EN;
inout VDD, VSS, VNW, VPW;
output Z;
wire Z_temp;

  udp_mux2 (Z_bar, I0, I1, S );
  not (EN_bar, EN );
  and (Z_temp, Z_bar, EN_bar );
  assign Z = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Z_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
        if(I0==1'b0 && I1==1'b1 && S==1'b1)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I0==1'b1 && I1==1'b0 && S==1'b0)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I0==1'b1 && I1==1'b1 && S==1'b0)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I0==1'b1 && I1==1'b1 && S==1'b1)
        // arc EN --> Z
         (EN => Z) = (1.0,1.0);

        if(I1==1'b0)
        // arc I0 --> Z
         (I0 => Z) = (1.0,1.0);

        if(I1==1'b1)
        // arc I0 --> Z
         (I0 => Z) = (1.0,1.0);

        if(I0==1'b0)
        // arc I1 --> Z
         (I1 => Z) = (1.0,1.0);

        if(I0==1'b1)
        // arc I1 --> Z
         (I1 => Z) = (1.0,1.0);

        // arc posedge S --> (Z:S)
         (posedge S => (Z:S)) = (1.0,1.0);

        // arc negedge S --> (Z:S)
         (negedge S => (Z:S)) = (1.0,1.0);
 

 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NDQUHDV0P7 ( Q, CKN, D, VDD, VSS, VNW, VPW); 
input CKN, D;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
  not     IC (clk, CKN );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NDQUHDV1 ( Q, CKN, D, VDD, VSS, VNW, VPW); 
input CKN, D;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
  not     IC (clk, CKN );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NDQUHDV2 ( Q, CKN, D, VDD, VSS, VNW, VPW); 
input CKN, D;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
  not     IC (clk, CKN );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NDQUHDV3 ( Q, CKN, D, VDD, VSS, VNW, VPW); 
input CKN, D;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xSN,xRN; 
  not     IC (clk, CKN );
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN, negedge D, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge D, 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NDSRNQUHDV1 (D, RDN, SDN, CKN, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SDN, CKN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;
  buf   XX0 (xSN, SDN );
  buf   XX1 (xRN, RDN );
  not     IC (clk, CKN );
  udp_dff_rdn_pre_sdn I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    and SMC_I7(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I8(ENABLE_SDN,SDN);

    buf SMC_I9(ENABLE_RDN,RDN);


  specify

	// seq arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);	

  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module NDSRNQUHDV2 (D, RDN, SDN, CKN, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SDN, CKN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
wire ENABLE_D_AND_SDN;
wire ENABLE_NOT_D_AND_RDN;
  buf   XX0 (xSN, SDN );
  buf   XX1 (xRN, RDN );
  not     IC (clk, CKN );
  udp_dff_rdn_pre_sdn I0 (n0, D, clk, xRN, xSN, NOTIFIER );
  buf     I1 (Q_temp, n0 );
  assign ENABLE_D_AND_SDN = ( D & SDN )? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN = ( !D & RDN ) ? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    and SMC_I7(ENABLE_RDN_AND_SDN,RDN,SDN);

    buf SMC_I8(ENABLE_SDN,SDN);

    buf SMC_I9(ENABLE_RDN,RDN);


  specify

	// seq arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_SDN == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_D_AND_RDN == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);	

  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDGRNQNUHDV0P7 ( QN, CK, D, RN, SE, SI, VDD, VSS, VNW, VPW); 
input CK, D, RN, SE, SI;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xSN; 
  buf   XX0 (xRN, RN );
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER );
  not        I2 (QN_temp, n0 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(ENABLE_NOT_SE, SE); 
 
    buf SMC_I11(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDGRNQNUHDV1 ( QN, CK, D, RN, SE, SI, VDD, VSS, VNW, VPW); 
input CK, D, RN, SE, SI;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xSN; 
  buf   XX0 (xRN, RN );
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER );
  not        I2 (QN_temp, n0 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(ENABLE_NOT_SE, SE); 
 
    buf SMC_I11(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDGRNQNUHDV2 ( QN, CK, D, RN, SE, SI, VDD, VSS, VNW, VPW); 
input CK, D, RN, SE, SI;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xSN; 
  buf   XX0 (xRN, RN );
  udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER );
  not        I2 (QN_temp, n0 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(ENABLE_NOT_SE, SE); 
 
    buf SMC_I11(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDGRSNQNUHDV0P7 ( QN, CK, D, RN, SE, SI, SN, VDD, VSS, VNW, VPW); 
input CK, D, RN, SE, SI, SN;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  buf   XX0 (xRN, RN );
  not   XX1 (xSN, SN );
  not   XX2 (xSE, SE );
  buf   XX3 (clk, CK );
  or    I0 (n0, D, xSN );
  and   I1 (n1, SE, SI );
  and   I2 (n2, n0, xSE, xRN );
  or    I3 (n3, n1, n2 );
  udp_dff I4 (n4, n3, clk, 1'b1, 1'b1, NOTIFIER );
  not     I6 (QN_temp, n4 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(SE_bar, SE); 
 
    and SMC_I11(ENABLE_RN_AND_NOT_SE, RN, SE_bar); 
 
    not SMC_I12(ENABLE_NOT_SE, SE); 
 
    buf SMC_I13(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDGRSNQNUHDV1 ( QN, CK, D, RN, SE, SI, SN, VDD, VSS, VNW, VPW); 
input CK, D, RN, SE, SI, SN;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  buf   XX0 (xRN, RN );
  not   XX1 (xSN, SN );
  not   XX2 (xSE, SE );
  buf   XX3 (clk, CK );
  or    I0 (n0, D, xSN );
  and   I1 (n1, SE, SI );
  and   I2 (n2, n0, xSE, xRN );
  or    I3 (n3, n1, n2 );
  udp_dff I4 (n4, n3, clk, 1'b1, 1'b1, NOTIFIER );
  not     I6 (QN_temp, n4 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(SE_bar, SE); 
 
    and SMC_I11(ENABLE_RN_AND_NOT_SE, RN, SE_bar); 
 
    not SMC_I12(ENABLE_NOT_SE, SE); 
 
    buf SMC_I13(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDGRSNQNUHDV2 ( QN, CK, D, RN, SE, SI, SN, VDD, VSS, VNW, VPW); 
input CK, D, RN, SE, SI, SN;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  buf   XX0 (xRN, RN );
  not   XX1 (xSN, SN );
  not   XX2 (xSE, SE );
  buf   XX3 (clk, CK );
  or    I0 (n0, D, xSN );
  and   I1 (n1, SE, SI );
  and   I2 (n2, n0, xSE, xRN );
  or    I3 (n3, n1, n2 );
  udp_dff I4 (n4, n3, clk, 1'b1, 1'b1, NOTIFIER );
  not     I6 (QN_temp, n4 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I10(SE_bar, SE); 
 
    and SMC_I11(ENABLE_RN_AND_NOT_SE, RN, SE_bar); 
 
    not SMC_I12(ENABLE_NOT_SE, SE); 
 
    buf SMC_I13(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge RN &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            negedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 
            posedge SN &&& (ENABLE_RN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDQNUHDV0P7 ( QN, CK, D, SE, SI, VDD, VSS, VNW, VPW); 
input CK, D, SE, SI;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  not     I3 (QN_temp, n0 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I6(ENABLE_NOT_SE, SE); 
 
    buf SMC_I7(ENABLE_SE, SE); 
 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDQNUHDV1 ( QN, CK, D, SE, SI, VDD, VSS, VNW, VPW); 
input CK, D, SE, SI;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  not     I3 (QN_temp, n0 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I6(ENABLE_NOT_SE, SE); 
 
    buf SMC_I7(ENABLE_SE, SE); 
 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDQNUHDV2 ( QN, CK, D, SE, SI, VDD, VSS, VNW, VPW); 
input CK, D, SE, SI;
inout VDD, VSS, VNW, VPW;
output QN;
wire QN_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  not     I3 (QN_temp, n0 );
  assign QN = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? QN_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I6(ENABLE_NOT_SE, SE); 
 
    buf SMC_I7(ENABLE_SE, SE); 
 
 
  specify 
 
 

	// arc CK --> QN 
	(posedge CK => (QN : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDQUHDV0P7 ( Q, CK, D, SE, SI, VDD, VSS, VNW, VPW); 
input CK, D, SE, SI;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I4(ENABLE_NOT_SE, SE); 
 
    buf SMC_I5(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDQUHDV1 ( Q, CK, D, SE, SI, VDD, VSS, VNW, VPW); 
input CK, D, SE, SI;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I4(ENABLE_NOT_SE, SE); 
 
    buf SMC_I5(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDQUHDV2 ( Q, CK, D, SE, SI, VDD, VSS, VNW, VPW); 
input CK, D, SE, SI;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I4(ENABLE_NOT_SE, SE); 
 
    buf SMC_I5(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDQUHDV3 ( Q, CK, D, SE, SI, VDD, VSS, VNW, VPW); 
input CK, D, SE, SI;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I4(ENABLE_NOT_SE, SE); 
 
    buf SMC_I5(ENABLE_SE, SE); 
 
 
  specify 
 
 
	// arc CK --> Q 
	(posedge CK => (Q : D))  = (1.0,1.0); 
 
        $width(negedge CK,1.0,0,NOTIFIER); 
 
        $width(posedge CK,1.0,0,NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(posedge CK &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDRNQUHDV0P7 (D, RDN, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;
  buf   XX0 (xRN, RDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_RDN_AND_NOT_SE,RDN, SE_bar);

    buf SMC_I6(ENABLE_RDN,RDN);

    and SMC_I7(ENABLE_RDN_AND_SE,RDN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), posedge RDN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDRNQUHDV1 (D, RDN, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;
  buf   XX0 (xRN, RDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_RDN_AND_NOT_SE,RDN, SE_bar);

    buf SMC_I6(ENABLE_RDN,RDN);

    and SMC_I7(ENABLE_RDN_AND_SE,RDN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), posedge RDN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDRNQUHDV2 (D, RDN, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;
  buf   XX0 (xRN, RDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_RDN_AND_NOT_SE,RDN, SE_bar);

    buf SMC_I6(ENABLE_RDN,RDN);

    and SMC_I7(ENABLE_RDN_AND_SE,RDN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), posedge RDN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDRNQUHDV3 (D, RDN, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;
  buf   XX0 (xRN, RDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_RDN_AND_NOT_SE,RDN, SE_bar);

    buf SMC_I6(ENABLE_RDN,RDN);

    and SMC_I7(ENABLE_RDN_AND_SE,RDN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RDN --> Q
	(negedge RDN => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), posedge RDN &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            negedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN == 1'b1),
            posedge SE &&& (ENABLE_RDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDRQUHDV0P7 (D, RD, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RD, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;
  not   XX0 (xRN, RD );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_NOT_RD_AND_NOT_SE,ENABLE_NOT_RD, SE_bar);

    not SMC_I6(ENABLE_NOT_RD,RD);

    and SMC_I7(ENABLE_NOT_RD_AND_SE,ENABLE_NOT_RD,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), negedge RD &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDRQUHDV1 (D, RD, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RD, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;
  not   XX0 (xRN, RD );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_NOT_RD_AND_NOT_SE,ENABLE_NOT_RD, SE_bar);

    not SMC_I6(ENABLE_NOT_RD,RD);

    and SMC_I7(ENABLE_NOT_RD_AND_SE,ENABLE_NOT_RD,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), negedge RD &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDRQUHDV2 (D, RD, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RD, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;
  not   XX0 (xRN, RD );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_NOT_RD_AND_NOT_SE,ENABLE_NOT_RD, SE_bar);

    not SMC_I6(ENABLE_NOT_RD,RD);

    and SMC_I7(ENABLE_NOT_RD_AND_SE,ENABLE_NOT_RD,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), negedge RD &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDRQUHDV3 (D, RD, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RD, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xSN;
wire ENABLE_D_AND_NOT_SE_OR_SE_AND_SI;
  not   XX0 (xRN, RD );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_NOT_SE_OR_SE_AND_SI=(D&!SE | SE&SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I4(SE_bar,SE);
    and SMC_I5(ENABLE_NOT_RD_AND_NOT_SE,ENABLE_NOT_RD, SE_bar);

    not SMC_I6(ENABLE_NOT_RD,RD);

    and SMC_I7(ENABLE_NOT_RD_AND_SE,ENABLE_NOT_RD,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc RD --> Q
	(posedge RD => (Q : 1'b0))  = (1.0,1.0);

        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_NOT_RD_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), negedge RD &&& (ENABLE_D_AND_NOT_SE_OR_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(posedge RD,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            negedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD == 1'b1),
            posedge SE &&& (ENABLE_NOT_RD == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_RD_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_NOT_RD_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDSNQUHDV0P7 (D, SDN, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, SDN, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI;
  buf   XX0 (xSN, SDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI=(!D&!SE|SE&!SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I6(SE_bar,SE);

    and SMC_I7(ENABLE_SDN_AND_NOT_SE,SDN, SE_bar);

    buf SMC_I8(ENABLE_SDN,SDN);

    and SMC_I9(ENABLE_SDN_AND_SE,SDN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);


        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI == 1'b1), posedge SDN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge SE &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge SE &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDSNQUHDV1 (D, SDN, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, SDN, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI;
  buf   XX0 (xSN, SDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI=(!D&!SE|SE&!SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I6(SE_bar,SE);

    and SMC_I7(ENABLE_SDN_AND_NOT_SE,SDN, SE_bar);

    buf SMC_I8(ENABLE_SDN,SDN);

    and SMC_I9(ENABLE_SDN_AND_SE,SDN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);


        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI == 1'b1), posedge SDN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge SE &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge SE &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDSNQUHDV2 (D, SDN, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, SDN, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI;
  buf   XX0 (xSN, SDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI=(!D&!SE|SE&!SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I6(SE_bar,SE);

    and SMC_I7(ENABLE_SDN_AND_NOT_SE,SDN, SE_bar);

    buf SMC_I8(ENABLE_SDN,SDN);

    and SMC_I9(ENABLE_SDN_AND_SE,SDN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);


        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI == 1'b1), posedge SDN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge SE &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge SE &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDSNQUHDV3 (D, SDN, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, SDN, SE, SI, CK;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
  supply1 xRN;
wire ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI;
  buf   XX0 (xSN, SDN );
  buf     IC (clk, CK );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI=(!D&!SE|SE&!SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I6(SE_bar,SE);

    and SMC_I7(ENABLE_SDN_AND_NOT_SE,SDN, SE_bar);

    buf SMC_I8(ENABLE_SDN,SDN);

    and SMC_I9(ENABLE_SDN_AND_SE,SDN,SE);


  specify


	// arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// arc SDN --> Q
	(negedge SDN => (Q : 1'b1))  = (1.0,1.0);


        $width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI == 1'b1), posedge SDN &&& (ENABLE_NOT_D_AND_NOT_SE_OR_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            negedge SE &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN == 1'b1),
            posedge SE &&& (ENABLE_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_SDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_SDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);




  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDSRNQUHDV1 (D, RDN, SDN, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SDN, SE, SI, CK;
inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
wire ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI;
wire ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI;
  buf   XX0 (xRN, RDN );
  buf   XX1 (xSN, SDN );
  buf     IC (clk, CK );
  udp_dff_rdn_pre_sdn I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI=(D&SDN&!SE|SDN&SE&SI)? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI=(!D&RDN&!SE|RDN&SE&!SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I7(SE_bar,SE);

    and SMC_I8(ENABLE_RDN_AND_SDN_AND_NOT_SE,RDN,SDN, SE_bar);

    buf SMC_I9(ENABLE_SDN,SDN);

    buf SMC_I10(ENABLE_RDN,RDN);

    and SMC_I11(ENABLE_RDN_AND_SDN,RDN,SDN);

    and SMC_I12(ENABLE_RDN_AND_SDN_AND_SE,RDN,SDN,SE);


  specify


	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);



  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SDSRNQUHDV2 (D, RDN, SDN, SE, SI, CK, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SDN, SE, SI, CK;
inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
wire ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI;
wire ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI;
  buf   XX0 (xRN, RDN );
  buf   XX1 (xSN, SDN );
  buf     IC (clk, CK );
  udp_dff_rdn_pre_sdn I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI=(D&SDN&!SE|SDN&SE&SI)? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI=(!D&RDN&!SE|RDN&SE&!SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I7(SE_bar,SE);

    and SMC_I8(ENABLE_RDN_AND_SDN_AND_NOT_SE,RDN,SDN, SE_bar);

    buf SMC_I9(ENABLE_SDN,SDN);

    buf SMC_I10(ENABLE_RDN,RDN);

    and SMC_I11(ENABLE_RDN_AND_SDN,RDN,SDN);

    and SMC_I12(ENABLE_RDN_AND_SDN_AND_SE,RDN,SDN,SE);


  specify


	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CK==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CK,1.0,0,NOTIFIER);

        $width(posedge CK,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(posedge CK &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);



  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SNDQUHDV0P7 ( Q, CKN, D, SE, SI, VDD, VSS, VNW, VPW); 
input CKN, D, SE, SI;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  not     IC (clk, CKN );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I7(ENABLE_NOT_SE,SE); 
 
    buf SMC_I8(ENABLE_SE,SE); 
 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CKN, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SNDQUHDV1 ( Q, CKN, D, SE, SI, VDD, VSS, VNW, VPW); 
input CKN, D, SE, SI;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  not     IC (clk, CKN );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I7(ENABLE_NOT_SE,SE); 
 
    buf SMC_I8(ENABLE_SE,SE); 
 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CKN, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SNDQUHDV2 ( Q, CKN, D, SE, SI, VDD, VSS, VNW, VPW); 
input CKN, D, SE, SI;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  not     IC (clk, CKN );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I7(ENABLE_NOT_SE,SE); 
 
    buf SMC_I8(ENABLE_SE,SE); 
 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CKN, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SNDQUHDV3 ( Q, CKN, D, SE, SI, VDD, VSS, VNW, VPW); 
input CKN, D, SE, SI;
inout VDD, VSS, VNW, VPW;
output Q;
wire Q_temp;

  reg NOTIFIER; 
  supply1 xRN, xSN; 
  not     IC (clk, CKN );
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional // 
 
  `else // functional // 
    not SMC_I7(ENABLE_NOT_SE,SE); 
 
    buf SMC_I8(ENABLE_SE,SE); 
 
 
  specify 
 
 
	// arc CKN --> Q 
	(negedge CKN => (Q : D))  = (1.0,1.0); 
 
 
        $width(negedge CKN,1.0,0,NOTIFIER); 
 
        $width(posedge CKN,1.0,0,NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), 
            negedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_NOT_SE == 1'b1), 
            posedge D &&& (ENABLE_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CKN, negedge SE, 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN, posedge SE, 1.0, 1.0, NOTIFIER); 
 
 
 
        $setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), 
            negedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
        $setuphold(negedge CKN &&& (ENABLE_SE == 1'b1), 
            posedge SI &&& (ENABLE_SE == 1'b1), 1.0, 1.0, NOTIFIER); 
 
 
 
 
  endspecify 
 
  `endif // functional // 
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SNDSRNQUHDV1 (D, RDN, SDN, SE, SI, CKN, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SDN, SE, SI, CKN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
wire ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI;
wire ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI;
  buf   XX0 (xRN, RDN );
  buf   XX1 (xSN, SDN );
  not     IC (clk, CKN );
  udp_dff_rdn_pre_sdn I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI=(D&SDN&!SE|SDN&SE&SI)? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI=(!D&RDN&!SE|RDN&SE&!SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I8(SE_bar,SE);

    and SMC_I9(ENABLE_RDN_AND_SDN_AND_NOT_SE,RDN,SDN, SE_bar);

    buf SMC_I10(ENABLE_SDN,SDN);

    buf SMC_I11(ENABLE_RDN,RDN);

    and SMC_I12(ENABLE_RDN_AND_SDN,RDN,SDN);

    and SMC_I13(ENABLE_RDN_AND_SDN_AND_SE,RDN,SDN,SE);


  specify


	// seq arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);



  endspecify

  `endif // functional //
endmodule
`endcelldefine
/*****************************************************************************/
`timescale 10 ps / 1 ps

`ifdef functional
                                // none
`else
        `define SMC_NFORCE 1    // Flag to force output to x if notifer changes
`endif

`celldefine 
module SNDSRNQUHDV2 (D, RDN, SDN, SE, SI, CKN, Q, VDD, VSS, VNW, VPW); 
  input D, RDN, SDN, SE, SI, CKN;

inout VDD, VSS, VNW, VPW;
  output Q;
wire Q_temp;

  reg NOTIFIER;
wire ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI;
wire ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI;
  buf   XX0 (xRN, RDN );
  buf   XX1 (xSN, SDN );
  not     IC (clk, CKN );
  udp_dff_rdn_pre_sdn I0 (n0, n1, clk, xRN, xSN, NOTIFIER );
  udp_mux I1 (n1, D, SI, SE );
  buf     I2 (Q_temp, n0 );
  assign ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI=(D&SDN&!SE|SDN&SE&SI)? 1'b1:1'b0;
  assign ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI=(!D&RDN&!SE|RDN&SE&!SI)? 1'b1:1'b0;
  assign Q = ((VDD === 1'b1) && (VSS === 1'b0) && (VNW === 1'b1) && (VPW === 1'b0)) ? Q_temp : 1'bx;
  `ifdef functional // functional //

  `else // functional //
    not SMC_I8(SE_bar,SE);

    and SMC_I9(ENABLE_RDN_AND_SDN_AND_NOT_SE,RDN,SDN, SE_bar);

    buf SMC_I10(ENABLE_SDN,SDN);

    buf SMC_I11(ENABLE_RDN,RDN);

    and SMC_I12(ENABLE_RDN_AND_SDN,RDN,SDN);

    and SMC_I13(ENABLE_RDN_AND_SDN_AND_SE,RDN,SDN,SE);


  specify


	// seq arc CKN --> Q
	(negedge CKN => (Q : D))  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(RDN => Q)  = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SDN==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc RDN --> Q
	(negedge RDN *> (Q +: 1'b0)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b0 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b0 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SE==1'b0 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b0)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	if(CKN==1'b1 && D==1'b1 && SE==1'b1 && SI==1'b1)
	// seq arc SDN --> Q
	(negedge SDN *> (Q +: 1'b1)) = (1.0,1.0);

	$width(negedge CKN,1.0,0,NOTIFIER);

        $width(posedge CKN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            negedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1),
            posedge D &&& (ENABLE_RDN_AND_SDN_AND_NOT_SE == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1),
            posedge RDN &&& (ENABLE_D_AND_SDN_AND_NOT_SE_OR_SDN_AND_SE_AND_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $width(negedge RDN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1),
            posedge SDN &&& (ENABLE_NOT_D_AND_RDN_AND_NOT_SE_OR_RDN_AND_SE_AND_NOT_SI == 1'b1), 1.0, 1.0, NOTIFIER);


        $setuphold(posedge RDN, posedge SDN, 1.0, 1.0, NOTIFIER);


        $width(negedge SDN,1.0,0,NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            negedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN == 1'b1),
            posedge SE &&& (ENABLE_RDN_AND_SDN == 1'b1), 1.0, 1.0, NOTIFIER);



        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            negedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);

        $setuphold(negedge CKN &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1),
            posedge SI &&& (ENABLE_RDN_AND_SDN_AND_SE == 1'b1), 1.0, 1.0, NOTIFIER);



  endspecify

  `endif // functional //
endmodule
`endcelldefine
// $Id: udp_dff.v
// verilog UDP for d flip-flops 
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
primitive udp_dff (out, in, clk, clr_, set_, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  NOT  : Qt : Qt+1
//
   0  r   ?   1   ?   : ?  :  0  ; // clock in 0
   1  r   1   ?   ?   : ?  :  1  ; // clock in 1
   1  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   ?  f   ?   ?   ?   : ?  :  -  ; // no changes on negedge clk
   *  b   ?   ?   ?   : ?  :  -  ; // no changes when in switches
   ?  ?   ?   0   ?   : ?  :  1  ; // set output
   ?  b   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   1  x   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?   0   1   ?   : ?  :  0  ; // reset output
   ?  b   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  x   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_dff

// $Id: udp_dff_rdn_pre_sdn.v
// verilog UDP for d flip-flops 
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
primitive udp_dff_rdn_pre_sdn (out, in, clk, clr_, set_, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  NOT  : Qt : Qt+1
//
   0  r   ?   1   ?   : ?  :  0  ; // clock in 0
   1  r   1   ?   ?   : ?  :  1  ; // clock in 1
   1  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   ?  f   ?   ?   ?   : ?  :  -  ; // no changes on negedge clk
   *  b   ?   ?   ?   : ?  :  -  ; // no changes when in switches
   ?  ?   1   0   ?   : ?  :  1  ; // set output
   ?  b   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   1  x   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?   0   ?   ?   : ?  :  0  ; // reset output
   ?  b   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  x   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_dff_rdn_pre_sdn


// $Id: udp_edff.v
// verilog UDP for d flip-flops with enable
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_edff (out, in, clk, clr_, set_, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, en, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  en  NOT  : Qt : Qt+1
//
   0   r    ?      1     1   ?    : ?  :  0  ; // clock in 0
   1   r    1      ?     1   ?    : ?  :  1  ; // clock in 1
   ?   *    1      ?     0   ?    : ?  :  -  ; // no changes, not enabled
   *   ?    1      ?     0   ?    : ?  :  -  ; // no changes, not enabled
   1   *    1      ?     ?   ?    : 1  :  1  ; // reduce pessimism
   0   *    ?      1     ?   ?    : 0  :  0  ; // reduce pessimism
   ?   f    ?      ?     ?   ?    : ?  :  -  ; // no changes on negedge clk
   *   b    ?      ?     ?   ?    : ?  :  -  ; // no changes when in switches
   1   x    1      ?     ?   ?    : 1  :  1  ; // no changes when in switches
   0   x    ?      1     ?   ?    : 0  :  0  ; // no changes when in switches
   ?   b    ?      ?     *   ?    : ?  :  -  ; // no changes when en switches
   ?   x    1      1     0   ?    : ?  :  -  ; // no changes when en is disabled
   ?   ?    ?      0     ?   ?    : ?  :  1  ; // set output
   ?   b    1      *     ?   ?    : 1  :  1  ; // cover all transistions on set_
   ?   ?    1      *     0   ?    : 1  :  1  ; // cover all transistions on set_
   ?   ?    0      1     ?   ?    : ?  :  0  ; // reset output
   ?   b    *      1     ?   ?    : 0  :  0  ; // cover all transistions on clr_
   ?   ?    *      1     0   ?    : 0  :  0  ; // cover all transistions on clr_
   ?   ?    ?      ?     ?   *    : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_edff

// $Id: udp_edfft.v
// verilog UDP for d flip-flops with enable
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_edfft (out, in, clk, clr_, set_, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, en, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  en  NOT  : Qt : Qt+1
//
   ?   r    0      1     ?   ?    : ?  :  0  ; // clock in 0
   0   r    ?      1     1   ?    : ?  :  0  ; // clock in 0
   ?   r    ?      0     ?   ?    : ?  :  1  ; // clock in 1
   1   r    1      ?     1   ?    : ?  :  1  ; // clock in 1
   ?   *    1      1     0   ?    : ?  :  -  ; // no changes, not enabled
   ?   *    ?      1     0   ?    : 0  :  0  ; // no changes, not enabled
   ?   *    1      ?     0   ?    : 1  :  1  ; // no changes, not enabled
   ?  (x0)  ?      ?     ?   ?    : ?  :  -  ; // no changes
   ?  (x1)  ?      0     ?   ?    : 1  :  1  ; // no changes
   1   *    1      ?     ?   ?    : 1  :  1  ; // reduce pessimism
   0   *    ?      1     ?   ?    : 0  :  0  ; // reduce pessimism
   ?   f    ?      ?     ?   ?    : ?  :  -  ; // no changes on negedge clk
   *   b    ?      ?     ?   ?    : ?  :  -  ; // no changes when in switches
   1   x    1      ?     ?   ?    : 1  :  1  ; // no changes when in switches
   ?   x    1      ?     0   ?    : 1  :  1  ; // no changes when in switches
   0   x    ?      1     ?   ?    : 0  :  0  ; // no changes when in switches
   ?   x    ?      1     0   ?    : 0  :  0  ; // no changes when in switches
   ?   b    ?      ?     *   ?    : ?  :  -  ; // no changes when en switches
   ?   b    *      ?     ?   ?    : ?  :  -  ; // no changes when clr_ switches
   ?   x    0      1     ?   ?    : 0  :  0  ; // no changes when clr_ switches
   ?   b    ?      *     ?   ?    : ?  :  -  ; // no changes when set_ switches
   ?   x    ?      0     ?   ?    : 1  :  1  ; // no changes when set_ switches
   ?   ?    ?      ?     ?   *    : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_edfft

// $Id: udp_edffts.v
//
// verilog UDP for d flip-flops with enable
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_edffts (out, in, clk, clr_, set_, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, en, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  en  NOT  : Qt : Qt+1
//
   ?   r    0      ?     ?   ?    : ?  :  0  ; // clock in 0
   0   r    ?      1     1   ?    : ?  :  0  ; // clock in 0
   ?   r    1      0     ?   ?    : ?  :  1  ; // clock in 1
   1   r    1      ?     1   ?    : ?  :  1  ; // clock in 1
   ?   *    1      1     0   ?    : ?  :  -  ; // no changes, not enabled
   ?   *    ?      1     0   ?    : 0  :  0  ; // no changes, not enabled
   ?   *    1      ?     0   ?    : 1  :  1  ; // no changes, not enabled
   ?  (x0)  ?      ?     ?   ?    : ?  :  -  ; // no changes
   ?  (x1)  ?      0     ?   ?    : 1  :  1  ; // no changes
   1   *    1      ?     ?   ?    : 1  :  1  ; // reduce pessimism
   0   *    ?      1     ?   ?    : 0  :  0  ; // reduce pessimism
   ?   f    ?      ?     ?   ?    : ?  :  -  ; // no changes on negedge clk
   *   b    ?      ?     ?   ?    : ?  :  -  ; // no changes when in switches
   1   x    1      ?     ?   ?    : 1  :  1  ; // no changes when in switches
   ?   x    1      ?     0   ?    : 1  :  1  ; // no changes when in switches
   0   x    ?      1     ?   ?    : 0  :  0  ; // no changes when in switches
   ?   x    ?      1     0   ?    : 0  :  0  ; // no changes when in switches
   ?   b    ?      ?     *   ?    : ?  :  -  ; // no changes when en switches
   ?   b    *      ?     ?   ?    : ?  :  -  ; // no changes when clr_ switches
   ?   x    0      1     ?   ?    : 0  :  0  ; // no changes when clr_ switches
   ?   b    ?      *     ?   ?    : ?  :  -  ; // no changes when set_ switches
   ?   x    ?      0     ?   ?    : 1  :  1  ; // no changes when set_ switches
   ?   ?    ?      ?     ?   *    : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_edffts

// $Id: udp_jkff.v
//
// verilog UDP for jk flip-flps
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_jkff (out, j, k, clk, clr_, set_, NOTIFIER);
   output out;  
   input  j, k, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

// j  k  clk  clr_   set_  NOT  : Qt : Qt+1
//       
   0  0  r   1   1   ?   : ?  :  -  ; // output remains same
   0  1  r   ?   1   ?   : ?  :  0  ; // clock in 0
   1  0  r   1   ?   ?   : ?  :  1  ; // clock in 1
//   1  1  r   ?   1   ?   : 1  :  0  ; // clock in 0
   ?  1  r   ?   1   ?   : 1  :  0  ; // clock in 0
//   1  1  r   1   ?   ?   : 0  :  1  ; // clock in 1
   1  ?  r   1   ?   ?   : 0  :  1  ; // clock in 1
   ?  0  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  ?  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   ?  ?  f   ?   ?   ?   : ?  :  -  ; // no changes on negedge clk
   *  ?  b   ?   ?   ?   : ?  :  -  ; // no changes when j switches
   *  0  x   1   ?   ?   : 1  :  1  ; // no changes when j switches
   ?  *  b   ?   ?   ?   : ?  :  -  ; // no changes when k switches
   0  *  x   ?   1   ?   : 0  :  0  ; // no changes when k switches
   ?  ?  ?   ?   0   ?   : ?  :  1  ; // set output
   ?  ?  b   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  0  x   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?  ?   0   1   ?   : ?  :  0  ; // reset output
   ?  ?  b   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  ?  x   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?  ?   ?   ?   *   : ?  :  x  ; // any NOTIFIER change

   endtable
endprimitive // udp_jkff

// $Id: udp_sedff.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
 primitive udp_sedff (out, in, clk, clr_, si, se, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  clr_  si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   *  : ?  :  x; // any NOTIFIER changed
      ?    ?    0     ?   ?   ?   ?  : ?  :  0;     
      ?    r    ?     0   1   ?   ?  : ?  :  0;     
      ?    r    1     1   1   ?   ?  : ?  :  1;
      ?    b    1     ?   *   ?   ?  : ?  :  -; // no changes when se switches
      ?    b    1     *   ?   ?   ?  : ?  :  -; // no changes when si switches
      *    b    1     ?   ?   ?   ?  : ?  :  -; // no changes when in switches
      *    ?    ?     ?   0   0   ?  : 0  :  0; // no changes when in switches
      ?    ?    ?     *   0   0   ?  : 0  :  0; // no changes when in switches
      ?    b    1     ?   ?   *   ?  : ?  :  -; // no changes when en switches
      ?    b    *     ?   ?   ?   ?  : 0  :  0; // no changes when en switches
      ?    ?    *     ?   0   0   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     ?   ?   *   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     ?   *   ?   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     *   ?   ?   ?  : 0  :  0; // no changes when en switches
      *    b    ?     ?   ?   ?   ?  : 0  :  0; // no changes when en switches
      ?  (10)   ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      ?    *    1     1   1   ?   ?  : 1  :  1;
      ?    x    1     1   1   ?   ?  : 1  :  1;
      ?    *    1     1   ?   0   ?  : 1  :  1;
      ?    x    1     1   ?   0   ?  : 1  :  1;
      ?    *    ?     0   1   ?   ?  : 0  :  0;
      ?    x    ?     0   1   ?   ?  : 0  :  0;
      ?    *    ?     0   ?   0   ?  : 0  :  0;
      ?    x    ?     0   ?   0   ?  : 0  :  0;
      0    r    ?     0   ?   1   ?  : ?  :  0 ; 
      0    *    ?     0   ?   ?   ?  : 0  :  0 ; 
      0    x    ?     0   ?   ?   ?  : 0  :  0 ; 
      1    r    1     1   ?   1   ?  : ?  :  1 ; 
      1    *    1     1   ?   ?   ?  : 1  :  1 ; 
      1    x    1     1   ?   ?   ?  : 1  :  1 ; 
      ?  (x0)   ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   0   1   ?  : ?  :  1;
      0    r    ?     ?   0   1   ?  : ?  :  0;
      ?    *    ?     ?   0   0   ?  : ?  :  -;
      ?    x    1     ?   0   0   ?  : ?  :  -;
      1    x    1     ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    x    ?     ?   0   0   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive  /* udp_sedff */

// $Id: udp_sedfft.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
 primitive udp_sedfft (out, in, clk, clr_, si, se, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  clr_  si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   *  : ?  :  x; // any NOTIFIER changed
      ?    r    ?     0   1   ?   ?  : ?  :  0;     
      ?    r    ?     1   1   ?   ?  : ?  :  1;
      ?    b    ?     ?   *   ?   ?  : ?  :  -; // no changes when se switches
      ?    b    ?     *   ?   ?   ?  : ?  :  -; // no changes when si switches
      *    b    ?     ?   ?   ?   ?  : ?  :  -; // no changes when in switches
      ?    b    ?     ?   ?   *   ?  : ?  :  -; // no changes when en switches
      ?    b    *     ?   ?   ?   ?  : ?  :  -; // no changes when clr switches
      0    r    ?     0   ?   1   ?  : ?  :  0 ; 
      1    r    1     1   ?   1   ?  : ?  :  1 ; 
      ?    r    ?     0   ?   0   ?  : 0  :  0;
      ?    x    ?     0   ?   0   ?  : 0  :  0;
      ?    r    1     1   ?   0   ?  : 1  :  1;
      ?    x    1     1   ?   0   ?  : 1  :  1;
      ?    *    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     1   1   ?   ?  : 1  :  1;
      1    *    1     1   ?   ?   ?  : 1  :  1;
      ?    *    ?     0   1   ?   ?  : 0  :  0;
      ?    *    0     0   ?   ?   ?  : 0  :  0;
      0    *    ?     0   ?   ?   ?  : 0  :  0;
      ?    x    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     1   1   ?   ?  : 1  :  1;
      1    x    1     1   ?   ?   ?  : 1  :  1;
      ?    x    ?     0   1   ?   ?  : 0  :  0;
      ?    x    0     0   ?   ?   ?  : 0  :  0;
      0    x    ?     0   ?   ?   ?  : 0  :  0;
      ?    r    0     0   ?   ?   ?  : ?  :  0 ; 
      ?   (?0)  ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   0   1   ?  : ?  :  1;
      0    r    ?     ?   0   1   ?  : ?  :  0;
      ?    r    0     ?   0   ?   ?  : ?  :  0;
      ?    x    0     ?   0   ?   ?  : 0  :  0;
      1    x    1     ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive  /* udp_sedfft */

/*
// $Id: udp_sedffts.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
 primitive udp_sedffts (out, in, clk, set_, si, se, en, NOTIFIER);
   output out;  
   input  in, clk, set_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  set_  si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   *  : ?  :  x; // any NOTIFIER changed
      ?    r    ?     0   1   ?   ?  : ?  :  0;     
      ?    r    ?     1   1   ?   ?  : ?  :  1;
      ?    b    ?     ?   *   ?   ?  : ?  :  -; // no changes when se switches
      ?    b    ?     *   ?   ?   ?  : ?  :  -; // no changes when si switches
      *    b    ?     ?   ?   ?   ?  : ?  :  -; // no changes when in switches
      ?    b    ?     ?   ?   *   ?  : ?  :  -; // no changes when en switches
      ?    b    *     ?   ?   ?   ?  : ?  :  -; // no changes when clr switches
      0    r    ?     0   ?   1   ?  : ?  :  0 ; 
      1    r    1     1   ?   1   ?  : ?  :  1 ; 
      ?    r    ?     0   ?   0   ?  : 0  :  0;
      ?    x    ?     0   ?   0   ?  : 0  :  0;
      ?    r    1     1   ?   0   ?  : 1  :  1;
      ?    x    1     1   ?   0   ?  : 1  :  1;
      ?    *    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     1   1   ?   ?  : 1  :  1;
      1    *    1     1   ?   ?   ?  : 1  :  1;
      ?    *    ?     0   1   ?   ?  : 0  :  0;
      ?    *    0     0   ?   ?   ?  : 0  :  1;
      0    *    ?     0   ?   ?   ?  : 0  :  0;
      ?    x    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     1   1   ?   ?  : 1  :  1;
      1    x    1     1   ?   ?   ?  : 1  :  1;
      ?    x    ?     0   1   ?   ?  : 0  :  0;
      ?    x    0     0   ?   ?   ?  : 0  :  1;
      0    x    ?     0   ?   ?   ?  : 0  :  0;
      ?    r    0     0   ?   ?   ?  : ?  :  1 ; 
      ?   (?0)  ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   0   1   ?  : ?  :  1;
      0    r    ?     ?   0   1   ?  : ?  :  0;
      ?    r    0     ?   0   ?   ?  : ?  :  1;
      ?    x    0     ?   0   ?   ?  : 0  :  0;
      1    x    1     ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive  // udp_sedffts 
*/

// $Id: udp_sedffsr.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//
 primitive udp_sedffsr (out, in, clk, clr_, set_, si, se, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  clr_  set_ si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   ?   *  : ?  :  x; // any NOTIFIER changed
      ?    ?    0     1   ?   ?   ?   ?  : ?  :  0; 
      ?    ?    ?     0   ?   ?   ?   ?  : ?  :  1; 
      ?    r    ?     1   0   1   ?   ?  : ?  :  0;
      ?    r    1     ?   1   1   ?   ?  : ?  :  1;      
      ?    b    ?     1   ?   *   ?   ?  : 0  :  0; // no changes when se switches
      ?    b    1     ?   ?   *   ?   ?  : 1  :  1; // no changes when se switches
      ?    b    ?     1   *   ?   ?   ?  : 0  :  0; // no changes when si switches
      ?    b    1     ?   *   ?   ?   ?  : 1  :  1; // no changes when si switches
      *    b    ?     1   ?   ?   ?   ?  : 0  :  0; // no changes when in switches
      *    b    1     ?   ?   ?   ?   ?  : 1  :  1; // no changes when in switches
      ?    b    ?     1   ?   ?   *   ?  : 0  :  0; // no changes when en switches
      ?    b    1     ?   ?   ?   *   ?  : 1  :  1; // no changes when en switches
      ?    ?    *     1   ?   0   0   ?  : 0  :  0; //new
      ?    x    1     1   ?   0   0   ?  : 0  :  0;
      ?    x    1     1   ?   0   0   ?  : 1  :  1;
      ?    ?    *     1   0   ?   0   ?  : 0  :  0; //new
      0    ?    *     1   ?   0   1   ?  : 0  :  0; //new
      ?    b    *     1   ?   ?   ?   ?  : 0  :  0; //new
      ?    ?    1     *   ?   0   0   ?  : 1  :  1; //new
      ?    ?    1     *   1   ?   0   ?  : 1  :  1; //new
      1    ?    1     *   ?   0   1   ?  : 1  :  1; //new
      ?    b    1     *   ?   ?   ?   ?  : 1  :  1; //new
      ?    *    1     ?   1   1   ?   ?  : 1  :  1;
      ?    x    1     ?   1   1   ?   ?  : 1  :  1;
      ?    x    1     ?   ?   0   0   ?  : 1  :  1;
      ?    x    1     ?   1   ?   0   ?  : 1  :  1;
      ?    *    1     ?   1   ?   0   ?  : 1  :  1;
      ?    *    ?     1   0   1   ?   ?  : 0  :  0;
      ?    x    ?     1   0   1   ?   ?  : 0  :  0;
      ?    x    ?     1   ?   0   0   ?  : 0  :  0;
      ?    x    ?     1   0   ?   0   ?  : 0  :  0;
      ?    *    ?     1   0   ?   0   ?  : 0  :  0;
      0    r    ?     1   0   ?   1   ?  : ?  :  0 ; 
      0    *    ?     1   0   ?   ?   ?  : 0  :  0 ;
      0    x    ?     1   0   ?   ?   ?  : 0  :  0 ; 
      1    r    1     ?   1   ?   1   ?  : ?  :  1 ; 
      1    *    1     ?   1   ?   ?   ?  : 1  :  1 ; 
      1    x    1     ?   1   ?   ?   ?  : 1  :  1 ; 
      ?  (10)   ?     ?   ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      ?  (x0)   ?     ?   ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   ?   0   1   ?  : ?  :  1;
      0    r    ?     1   ?   0   1   ?  : ?  :  0 ; 
      ?    *    ?     1   ?   0   0   ?  : 0  :  0;
      ?    *    1     ?   ?   0   0   ?  : 1  :  1;
      1    x    1     ?   ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     1   ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     1   ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive // udp_sedffsr

// $Id: udp_mux.v
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_mux (out, in, s_in, s_sel);
   output out;  
   input  in, s_in, s_sel;

   table

// in  s_in  s_sel :  out
//
   1  ?   0  :  1 ;
   0  ?   0  :  0 ;
   ?  1   1  :  1 ;
   ?  0   1  :  0 ;
   0  0   x  :  0 ;
   1  1   x  :  1 ;

   endtable
endprimitive // udp_mux

// $Id: udp_mux2.v
//
// verilog UDP for 2-input muxes
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_mux2 (out, in0, in1, sel);
   output out;  
   input  in0, in1, sel;

   table

// in0 in1  sel :  out
//
   1  ?   0  :  1 ;
   0  ?   0  :  0 ;
   ?  1   1  :  1 ;
   ?  0   1  :  0 ;
   0  0   x  :  0 ;
   1  1   x  :  1 ;

   endtable
endprimitive // udp_mux2

// $Id: udp_mux4.v
//
// verilog UDP for 4-input muxes
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_mux4 (out, in0, in1, in2, in3, sel_0, sel_1);
   output out;  
   input  in0, in1, in2, in3, sel_0, sel_1;

   table

// in0 in1 in2 in3 sel_0 sel_1 :  out
//
   0  ?  ?  ?  0  0  :  0;
   1  ?  ?  ?  0  0  :  1;
   ?  0  ?  ?  1  0  :  0;
   ?  1  ?  ?  1  0  :  1;
   ?  ?  0  ?  0  1  :  0;
   ?  ?  1  ?  0  1  :  1;
   ?  ?  ?  0  1  1  :  0;
   ?  ?  ?  1  1  1  :  1;
   0  0  ?  ?  x  0  :  0;
   1  1  ?  ?  x  0  :  1;
   ?  ?  0  0  x  1  :  0;
   ?  ?  1  1  x  1  :  1;
   0  ?  0  ?  0  x  :  0;
   1  ?  1  ?  0  x  :  1;
   ?  0  ?  0  1  x  :  0;
   ?  1  ?  1  1  x  :  1;
   1  1  1  1  x  x  :  1;
   0  0  0  0  x  x  :  0;

   endtable
endprimitive // udp_mux4

// $Id: udp_rslatn_out.v
//
// verilog UDP for the true output of rslatn cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_rslatn_out (out, r_, s_, NOTIFIER);
   output out;  
   input  r_, s_, NOTIFIER;
   reg    out;

   table

// r_  s_  NOT : Qt : Qt+1
// 
  (?1) 1   ?   : ?  :  -  ; // no change
   1  (?1) ?   : ?  :  -  ; // no change
  (?0) 1   ?   : ?  :  0  ; // reset
   0  (?1) ?   : ?  :  0  ; // reset
   ?   0   ?   : ?  :  1  ; // unused state
  (?1) x   ?   : 1  :  1  ; // reduced pessimism
   1  (?x) ?   : 1  :  1  ; // reduced pessimism
  (?x) 1   ?   : 0  :  0  ; // reduced pessimism
   x  (?1) ?   : 0  :  0  ; // reduced pessimism
   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_rslatn_out

// $Id: udp_rslatn_out_.v
//
// verilog UDP for the complementary output of rslatn cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_rslatn_out_ (out_, r_, s_, NOTIFIER);
   output out_;  
   input  r_, s_, NOTIFIER;
   reg    out_;

   table

// r_  s_  NOT : Qt : Qt+1
// 
  (?1) 1   ?   : ?  :  -  ; // no change
   1  (?1) ?   : ?  :  -  ; // no change
   0   ?   ?   : ?  :  1  ; // reset
  (?1) 0   ?   : ?  :  0  ; // set
   1  (?0) ?   : ?  :  0  ; // set
  (?1) x   ?   : 0  :  0  ; // reduced pessimism
   1  (?x) ?   : 0  :  0  ; // reduced pessimism
  (?x) 1   ?   : 1  :  1  ; // reduced pessimism
   x  (?1) ?   : 1  :  1  ; // reduced pessimism
   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_rslatn_out_

// $Id: udp_rslat_out.v
//
// verilog UDP for true output of rslat cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_rslat_out (out, r, s, NOTIFIER);
   output out;  
   input  r, s, NOTIFIER;
   reg    out;

   table

// r   s   NOT : Qt : Qt+1
// 
  (?0) 0   ?   : ?  :  -  ; // no change
   0  (?0) ?   : ?  :  -  ; // no change
   1   ?   ?   : ?  :  0  ; // reset
  (?0) 1   ?   : ?  :  1  ; // set
   0  (?1) ?   : ?  :  1  ; // set
  (?0) x   ?   : 1  :  1  ; // reduced pessimism
   0  (?x) ?   : 1  :  1  ; // reduced pessimism
  (?x) 0   ?   : 0  :  0  ; // reduced pessimism
   x  (?0) ?   : 0  :  0  ; // reduced pessimism
   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_rslat_out

// $Id: udp_rslat_out_.v
//
// verilog UDP for complementary output on rslat cells
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_rslat_out_ (out_, r, s, NOTIFIER);
   output out_;  
   input  r, s, NOTIFIER;
   reg    out_;

   table

// r   s   NOT : Qt : Qt+1
// 
  (?0) 0   ?   : ?  :  -  ; // no change
   0  (?0) ?   : ?  :  -  ; // no change
  (?1) 0   ?   : ?  :  1  ; // reset
   1  (?0) ?   : ?  :  1  ; // reset
   ?   1   ?   : ?  :  0  ; // set
  (?0) x   ?   : 0  :  0  ; // reduced pessimism
   0  (?x) ?   : 0  :  0  ; // reduced pessimism
  (?x) 0   ?   : 1  :  1  ; // reduced pessimism
   x  (?0) ?   : 1  :  1  ; // reduced pessimism
   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_rslat_out_

// $Id: udp_tlat.v
//
// verilog UDP for d latches
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_tlat (out, in, hold, clr_, set_, NOTIFIER);
   output out;  
   input  in, hold, clr_, set_, NOTIFIER;
   reg    out;

   table

// in  hold  clr_   set_  NOT  : Qt : Qt+1
//
   1  0   1   ?   ?   : ?  :  1  ; // 
   0  0   ?   1   ?   : ?  :  0  ; // 
   1  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   *  1   ?   ?   ?   : ?  :  -  ; // no changes when in switches
   ?  ?   ?   0   ?   : ?  :  1  ; // set output
   ?  1   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   1  ?   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?   0   1   ?   : ?  :  0  ; // reset output
   ?  1   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  ?   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?   ?   ?   *   : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_tlat

//$Id udp_xgen.v
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_xgen (out, in, en, e);
   output out;  
   input  in, en, e;

   table

// in  en    e   : out;
//	     	  
   0   0     0    : x  ; // 
   0   0     1    : 0  ; // 
   0   1     0    : 0  ; // 
   0   1     1    : x  ; // 
   1   0     0    : x  ; // 
   1   0     1    : 1  ; // 
   1   1     0    : 1  ; // 
   1   1     1    : x  ; // 

   endtable
endprimitive // udp_xgen

//$Id udp_tlatrf.v
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_tlatrf (out, in, ww, wwn, NOTIFIER);
   output out;  
   input  in, ww, wwn, NOTIFIER;
   reg    out;

   table

// in  ww    wwn  NOT  : Qt : Qt+1
//	     
   1   ?     0    ?    : ?  :  1  ; // 
   1   1     ?    ?    : ?  :  1  ; // 
   0   ?     0    ?    : ?  :  0  ; // 
   0   1     ?    ?    : ?  :  0  ; // 
   1   *     ?    ?    : 1  :  1  ; // reduce pessimism
   1   ?     *    ?    : 1  :  1  ; // reduce pessimism
   0   *     ?    ?    : 0  :  0  ; // reduce pessimism
   0   ?     *    ?    : 0  :  0  ; // reduce pessimism
   *   0     1    ?    : ?  :  -  ; // no changes when in switches
   ?   ?     ?    *    : ?  :  x  ; // any NOTIFIER changed

   endtable
endprimitive // udp_tlatrf

//$Id udp_tlatrf2.v
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_tlatrf2 (out, in1, w1w, in2, w2w, NOTIFIER);
   output out;  
   input  in1, w1w, NOTIFIER;
   input  in2, w2w;
   reg    out;

   table

// in1 ww1 in2 ww2  NOT  : Qt : Qt+1
//	     
   ?   ?    ?   ?    *    : ?  :  x  ; //
   1   1    ?   0    ?    : ?  :  1  ; //
   1   *    ?   0    ?    : 1  :  1  ; //
   0   1    ?   0    ?    : ?  :  0  ; //
   0   *    ?   0    ?    : 0  :  0  ; //
   ?   0    1   1    ?    : ?  :  1  ; //
   ?   0    1   *    ?    : 1  :  1  ; //
   ?   0    0   1    ?    : ?  :  0  ; //
   ?   0    0   *    ?    : 0  :  0  ; //
   *   0    ?   0    ?    : ?  :  -  ; //
   ?   0    *   0    ?    : ?  :  -  ; //
   1   *    1   1    ?    : ?  :  1  ; //
   1   1    1   *    ?    : ?  :  1  ; //
   0   *    0   1    ?    : ?  :  0  ; //
   0   1    0   *    ?    : ?  :  0  ; //


   endtable
endprimitive // udp_tlatrf2

// $Id udp_outrf.v
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_outrf (out, in, rwn, rw);
   output out;  
   input  in, rwn, rw;

   table

// in  rwn   rw   : out;
//	     	  
   0   0     ?    : 1  ; // 
   1   ?     1    : 1  ; // 
   ?   1     0    : 0  ; // 
   1   ?     0    : 0  ; // 
   0   1     ?    : 0  ; // 

   endtable
endprimitive // udp_outrf

//$Id udp_bmx.v
//
// verilog UDP for 4-input muxes
//
//
// Library Service Department
// Design Service Division, SMIC
// Zhangjiang Rd.,Pudong New Area , Shanghai, PR of China 201203 
// (+8621)50802000
//
//
//

primitive udp_bmx (out, x2, a, s, m1, m0);
   output out;  
   input   x2, a, s, m1, m0;

   table

// x2 a  s m1 m0 :  out
//
   0  1  1  ?  ? :  0;
   0  1  0  0  ? :  1;
   0  1  0  1  ? :  0;
   0  0  1  0  ? :  0;
   0  0  1  1  ? :  1;
   0  0  0  ?  ? :  1;
   1  1  1  ?  ? :  0;
   1  1  0  ?  0 :  1;
   1  1  0  ?  1 :  0;
   1  0  1  ?  0 :  0;
   1  0  1  ?  1 :  1;
   1  0  0  ?  ? :  1;

   endtable
endprimitive // udp_bmx

primitive udp_dff_rs_Q(out, in, clk, clr_, set_, NOTIFIER);
   output out;
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

    //  in   clk   clr_  set_ NOT :  Qt  :   Qt+1

        1   (01)    1     1   ?   :   ?   :   1;  // clocked data
        1   (01)    1     x   ?   :   ?   :   1;  // clocked data or be set
        1    ?      1     x   ?   :   1   :   1;  // be set or follow Qt
        0    0      1     x   ?   :   1   :   1;  // be set or follow Qt
        0    x      1   (?x)  ?   :   1   :   1;  // be set or follow Qt
        0    1      1   (?x)  ?   :   1   :   1;  // be set or follow Qt
        x    0      1     x   ?   :   1   :   1;  // be set or follow Qt
        x    x      1   (?x)  ?   :   1   :   1;  // be set or follow Qt
        x    1      1   (?x)  ?   :   1   :   1;  // be set or follow Qt
        0   (01)    1     1   ?   :   ?   :   0;  // clocked data
        0   (01)    x     1   ?   :   ?   :   0;  // clocked data or be set
        0    ?      x     1   ?   :   0   :   0;  // be clear or follow Qt
        1    0      x     1   ?   :   0   :   0;  // be clear or follow Qt
        1    x    (?x)    1   ?   :   0   :   0;  // be clear or follow Qt
        1    1    (?x)    1   ?   :   0   :   0;  // be clear or follow Qt
        x    0      x     1   ?   :   0   :   0;  // be clear or follow Qt
        x    x    (?x)    1   ?   :   0   :   0;  // be clear or follow Qt
        x    1    (?x)    1   ?   :   0   :   0;  // be clear or follow Qt
        ?   ?       0     ?   ?   :   ?   :   0;  // asynchronous clear
        ?   ?       1     0   ?   :   ?   :   1;  // asynchronous set
        ?   (?0)    1     1   ?   :   ?   :   -;  // no change
        ?   (1x)    1     1   ?   :   ?   :   x;  // ignore falling clock
        ?   (0x)    1     1   ?   :   ?   :   x;  // ignore falling clock
        *    ?      ?     ?   ?   :   ?   :   -;  // no change
        ?   ?     (?1)    1   ?   :   ?   :   -;  // ignore the edges on
        ?   ?       ?    (?1) ?   :   ?   :   -;  // set and clear
        ?   ?       ?     ?   *   :   ?   :   x;  // any NOTIFIER changed

    endtable
endprimitive

primitive udp_dff_rs_QN(out, in, clk, clr_, set_, NOTIFIER);
   output out;
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

    //  in   clk   clr_  set_ NOT :  Qtn  :   Qtn+1

        1   (10)    1   1   ?     :   ?   :   0;  // clocked data
        1   (10)    1   x   ?     :   ?   :   0;  // clocked data or set
        1    ?      1   x   ?     :   0   :   0;  // be set or follow Qtn
        0    1      1   x   ?     :   0   :   0;  // be set or follow Qtn
        0    x      1 (?x)  ?     :   0   :   0;  // be set or follow Qtn
        0    0      1 (?x)  ?     :   0   :   0;  // be set or follow Qtn
        x    1      1   x   ?     :   0   :   0;  // be set or follow Qtn
        x    x      1 (?x)  ?     :   0   :   0;  // be set or follow Qtn
        x    0      1 (?x)  ?     :   0   :   0;  // be set or follow Qtn
        0   (10)    1   1   ?     :   ?   :   1;  // clocked data
        0   (10)    x   1   ?     :   ?   :   1;  // clocked data or set
        0    ?      x   1   ?     :   1   :   1;  // be clear or follow Qtn
        1    1      x   1   ?     :   1   :   1;  // be clear or follow Qtn
        1    x    (?x)  1   ?     :   1   :   1;  // be clear or follow Qtn
        1    0    (?x)  1   ?     :   1   :   1;  // be clear or follow Qtn
        x    1      x   1   ?     :   1   :   1;  // be clear or follow Qtn
        x    x    (?x)  1   ?     :   1   :   1;  // be clear or follow Qtn
        x    0    (?x)  1   ?     :   1   :   1;  // be clear or follow Qtn
        ?    ?      0   1   ?     :   ?   :   1;  // asynchronous clear
        ?    ?      ?   0   ?     :   ?   :   0;  // asynchronous set
        ?   (?1)    ?   ?   ?     :   ?   :   -;  // no change
        ?   (0x)    1   1   ?     :   ?   :   x;  // ignore rising clock
        ?   (1x)    1   1   ?     :   ?   :   x;  // ignore rising clock
        *    ?      ?   ?   ?     :   ?   :   -;  // no change
        ?    ?     (?1) ?   ?     :   ?   :   -;  // ignore the edges on
        ?    ?      1  (?1) ?     :   ?   :   -;  // set and clear
        ?    ?      ?   ?   *     :   ?   :   x;  // any NOTIFIER changed

    endtable
endprimitive

