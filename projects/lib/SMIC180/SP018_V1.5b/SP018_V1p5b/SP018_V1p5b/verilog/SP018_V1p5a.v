
//********************************************************************************//
//********** 		(C) Copyright 2009 SMIC Inc.			**********//
//**********   		    SMIC Verilog Models       			**********//
//********************************************************************************//
//	 FileName   : SP018_V1p5a.v	  					  //
//	 Function   : Verilog Models (zero timing)	  			  //
//	 Version    : 1.5a	  						  //
//	 Author     : Elliv Liu	  						  //
//	 CreateDate : Aug-6-2009	  					  //
//********************************************************************************//
////////////////////////////////////////////////////////////////////////////////////
//DISCLAIMER                                                                      //
//                                                                                //
//   SMIC hereby provides the quality information to you but makes no claims,     //
// promises or guarantees about the accuracy, completeness, or adequacy of the    //
// information herein. The information contained herein is provided on an "AS IS" //
// basis without any warranty, and SMIC assumes no obligation to provide support  //
// of any kind or otherwise maintain the information.                             //
//   SMIC disclaims any representation that the information does not infringe any //
// intellectual property rights or proprietary rights of any third parties.SMIC   //
// makes no other warranty, whether express, implied or statutory as to any       //
// matter whatsoever,including but not limited to the accuracy or sufficiency of  //
// any information or the merchantability and fitness for a particular purpose.   //
// Neither SMIC nor any of its representatives shall be liable for any cause of   //
// action incurred to connect to this service.                                    //
//                                                                                //
// STATEMENT OF USE AND CONFIDENTIALITY                                           //
//                                                                                //
//   The following/attached material contains confidential and proprietary        //
// information of SMIC. This material is based upon information which SMIC        //
// considers reliable, but SMIC neither represents nor warrants that such         //
// information is accurate or complete, and it must not be relied upon as such.   //
// This information was prepared for informational purposes and is for the use    //
// by SMIC's customer only. SMIC reserves the right to make changes in the        //
// information at any time without notice.                                        //
//   No part of this information may be reproduced, transmitted, transcribed,     //
// stored in a retrieval system, or translated into any human or computer         //
// language, in any form or by any means, electronic, mechanical, magnetic,       //
// optical, chemical, manual, or otherwise, without the prior written consent of  //
// SMIC. Any unauthorized use or disclosure of this material is strictly          //
// prohibited and may be unlawful. By accepting this material, the receiving      //
// party shall be deemed to have acknowledged, accepted, and agreed to be bound   //
// by the foregoing limitations and restrictions. Thank you.                      //
////////////////////////////////////////////////////////////////////////////////////

// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pana1ap.v
// Description  	: antenna pad
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PANA1AP (PAD);
inout PAD;


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pana1ap1.v
// Description  	: antenna pad
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PANA1AP1 (PAD);
inout PAD;


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pana2ap.v
// Description  	: antenna pad
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PANA2AP (PAD);
inout PAD;


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pana2ap1.v
// Description  	: antenna pad
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PANA2AP1 (PAD);
inout PAD;


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pana3ap.v
// Description  	: antenna pad
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PANA3AP (PAD);
inout PAD;


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pana4ap.v
// Description  	: antenna pad
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PANA4AP (PAD);
inout PAD;


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pb12.v
// Description  	: CMOS I/O Buffer, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PB12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_cin_lh=0,pad_hl_cin_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_cin_lh,pad_hl_cin_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pb16.v
// Description  	: 3-state Output Pad with Input,5v - Tolerant, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PB16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_cin_lh=0,pad_hl_cin_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_cin_lh,pad_hl_cin_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --       SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pb2.v
// Description  	: CMOS I/O Buffer, 2X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PB2 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_cin_lh=0,pad_hl_cin_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_cin_lh,pad_hl_cin_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pb24.v
// Description  	: 3-state Output Pad with Input,5v - Tolerant, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PB24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_cin_lh=0,pad_hl_cin_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_cin_lh,pad_hl_cin_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pb4.v
// Description  	: 3-state Output Pad with Input,5v - Tolerant, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PB4 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_cin_lh=0,pad_hl_cin_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_cin_lh,pad_hl_cin_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pb8.v
// Description  	: 3-state Output Pad with Input,5v - Tolerant, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PB8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_cin_lh=0,pad_hl_cin_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_cin_lh,pad_hl_cin_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcd12.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-down,5V - Tolerant, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCD12 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcd16.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-down,5V - Tolerant, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCD16 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcd2.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-down,5V - Tolerant, 2X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCD2 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcd24.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-down,5V - Tolerant, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCD24 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcd4.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-down,5V - Tolerant, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCD4 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcd8.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-down,5V - Tolerant, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCD8 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcdl12.v
// Description  	: 3-state Output Pad with Input,Limited Slew Rate and Controllable Pull-down,5V - Tolerant, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCDL12 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcdl16.v
// Description  	: 3-state Output Pad with Input,Limited Slew Rate and Controllable Pull-down,5V - Tolerant, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCDL16 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcdl24.v
// Description  	: 3-state Output Pad with Input,Limited Slew Rate and Controllable Pull-down,5V - Tolerant, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCDL24 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcdl8.v
// Description  	: 3-state Output Pad with Input,Limited Slew Rate and Controllable Pull-down,5V - Tolerant, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCDL8 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcu12.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-up,5V - Tolerant, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCU12 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcu16.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-up,5V - Tolerant, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCU16 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcu2.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-up,5V - Tolerant, 2X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCU2 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcu24.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-up,5V - Tolerant, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCU24 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcu4.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-up,5V - Tolerant, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCU4 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcu8.v
// Description  	: 3-state Output Pad with Input and Controllable Pull-up,5V - Tolerant, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCU8 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcul12.v
// Description  	: 3-state Output Pad with Input,Limited Slew Rate and Controllable Pull-up,5V - Tolerant, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCUL12 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcul16.v
// Description  	: 3-state Output Pad with Input,Limited Slew Rate and Controllable Pull-up,5V - Tolerant, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCUL16 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcul24.v
// Description  	: 3-state Output Pad with Input,Limited Slew Rate and Controllable Pull-up,5V - Tolerant, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCUL24 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
 

// ****** (C) Copyright 2008 SMIC Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbcul8.v
// Description  	: 3-state Output Pad with Input,Limited Slew Rate and Controllable Pull-up,5V - Tolerant, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBCUL8 (PAD,OEN,REN,I,C);

output  C;
input   OEN,I,REN;
inout   PAD;

  supply1 my1;
  supply0 my0;
  bufif0  (C_buf, I, OEN);
  pmos    (PAD,C_buf,my0);
  buf     (C,PAD);
  rpmos   #0.01 (C_buf,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0,
 ren_hl_pad_hl=0,ren_lh_pad_hz=0,ren_lh_pad_lz=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
 (        REN  => PAD) = (ren_lh_pad_lz,ren_lh_pad_hz,ren_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 





// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbd12.v
// Description  	: CMOS 3-state Output Pad with Input and  Pull-down, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBD12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbd16.v
// Description  	: CMOS 3-state Output Pad with Input and  Pull-down, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBD16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbd2.v
// Description  	: CMOS 3-state Output Pad with Input and  Pull-down, 2X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBD2 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbd24.v
// Description  	: CMOS 3-state Output Pad with Input and  Pull-down, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBD24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbd4.v
// Description  	: CMOS 3-state Output Pad with Input and  Pull-down, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBD4 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbd8.v
// Description  	: CMOS 3-state Output Pad with Input and  Pull-down, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBD8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbdl12.v
// Description  	: CMOS 3-state Output Pad with Input,Limited Slew Rate and  Pull-down, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBDL12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbdl16.v
// Description  	: CMOS 3-state Output Pad with Input,Limited Slew Rate and  Pull-down, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBDL16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbdl24.v
// Description  	: CMOS 3-state Output Pad with Input,Limited Slew Rate and  Pull-down, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBDL24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbdl8.v
// Description  	: CMOS 3-state Output Pad with Input,Limited Slew Rate and  Pull-down, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBDL8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbl12.v
// Description  	: CMOS 3-state Output Pad with Input and Limited Slew Rate, 5V-Tolerant, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBL12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbl16.v
// Description  	: CMOS 3-state Output Pad with Input and Limited Slew Rate, 5V-Tolerant, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBL16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbl24.v
// Description  	: CMOS 3-state Output Pad with Input and Limited Slew Rate, 5V-Tolerant, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBL24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbl8.v
// Description  	: CMOS 3-state Output Pad with Input and Limited Slew Rate, 5V-Tolerant, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBL8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbs12.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input , 5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBS12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbs16.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input , 5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBS16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbs2.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input , 5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBS2 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbs24.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input , 5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBS24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbs4.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input , 5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBS4 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbs8.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input , 5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBS8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd12.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and  Pull-down, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd16.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and  Pull-down, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd2.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and  Pull-down, 2X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD2 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd24.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and  Pull-down, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd4.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and  Pull-down, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD4 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsd8.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and  Pull-down, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSD8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsdl12.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input, Pull-down and Limited Slew Rate, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSDL12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsdl16.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input, Pull-down and Limited Slew Rate, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSDL16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsdl24.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input, Pull-down and Limited Slew Rate, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSDL24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsdl8.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input, Pull-down and Limited Slew Rate, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSDL8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b0, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b0) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsl12.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and Limited Slew Rate, 5V-Tolerant, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSL12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsl16.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and Limited Slew Rate, 5V-Tolerant, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSL16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsl24.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and Limited Slew Rate, 5V-Tolerant, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSL24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsl8.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and Limited Slew Rate, 5V-Tolerant, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSL8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu12.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and Pull-up, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu16.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and Pull-up, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu2.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and Pull-up, 2X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU2 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu24.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and Pull-up, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu4.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and Pull-up, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU4 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsu8.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input and Pull-up, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSU8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsul12.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input,Limited Slew Rate and Pull-up, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSUL12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsul16.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input,Limited Slew Rate and Pull-up, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSUL16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsul24.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input,Limited Slew Rate and Pull-up, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSUL24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbsul8.v
// Description  	: CMOS 3-state Output Pad with Schmitt Trigger Input,Limited Slew Rate and Pull-up, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBSUL8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end


`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbu12.v
// Description  	: CMOS 3-state Output Pad with Input and Pull-up, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBU12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbu16.v
// Description  	: CMOS 3-state Output Pad with Input and Pull-up, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBU16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbu2.v
// Description  	: CMOS 3-state Output Pad with Input and Pull-up, 2X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBU2 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbu24.v
// Description  	: CMOS 3-state Output Pad with Input and Pull-up, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBU24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbu4.v
// Description  	: CMOS 3-state Output Pad with Input and Pull-up, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBU4 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbu8.v
// Description  	: CMOS 3-state Output Pad with Input and Pull-up, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBU8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbul12.v
// Description  	: CMOS 3-state Output Pad with Input,Limited Slew Rate and Pull-up, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBUL12 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbul16.v
// Description  	: CMOS 3-state Output Pad with Input,Limited Slew Rate and Pull-up, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBUL16 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbul24.v
// Description  	: CMOS 3-state Output Pad with Input,Limited Slew Rate and Pull-up, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBUL24 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pbul8.v
// Description  	: CMOS 3-state Output Pad with Input,Limited Slew Rate and Pull-up, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PBUL8 (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

  parameter PullTime = 0.01;
 
  reg lastPAD, pull;
  bufif1 (weak0,weak1) (C_buf, 1'b1, pull);
  buf    (C, C_buf);
  bufif0 (PAD, I, OEN);
  pmos   (C_buf, PAD, 1'b0);

  always @(PAD) begin

    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
        $countdrivers(PAD))
       $display("%t --BUS CONFLICT-- : %m", $realtime);

    if (PAD === 1'bz ) begin
       if (lastPAD === 1'b1) pull=1;
       else pull <= #PullTime 1;
    end
    else pull=0;

    lastPAD=PAD;

  end
`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pci3b.v
// Description  	: 3-state Output 33MHz PCI Buffer Pad with Input and Limited Slew Rate,5V Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PCI3B (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pci3bs.v
// Description  	: 3-state Output 33MHz PCI Buffer Pad with Schmitt Trigger Input and Limited Slew Rate,5V Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PCI3BS (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pci6b.v
// Description  	: 3-state Output 66MHz PCI Buffer Pad with Input and Limited Slew Rate,5V Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PCI6B (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pci6bs.v
// Description  	: 3-state Output 33MHz PCI Buffer Pad with Schmitt Trigger Input and Limited Slew Rate,5V Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PCI6BS (PAD,OEN,I,C);

output  C;
input   OEN,I;
inout   PAD;

buf #0.01 (C,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pdiode.v
// Description  	: power cut
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PDIODE (VDD1,VDD2,VSS1,VSS2);

inout VDD1;
inout VDD2;
inout VSS1;
inout VSS2;

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pdiode8.v
// Description  	: power cut for high voltage
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PDIODE8 (VSS1,VSS2);

inout VSS1;
inout VSS2;

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pi.v
// Description  	: Input Pad,5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PI (PAD,C);

output  C;
input   PAD;

buf #0.01 (C,PAD);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0;
// Delays
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2008 SMIC  Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : picd.v
// Description          : Input Pad with Controllable Pull-down
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif


module PICD (PAD,REN,C);

output  C;
input   PAD,REN;

  supply0 my0;
  buf     (C,PAD);
  rpmos   #0.01 (PAD,my0,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0;
// Delays
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults


// ****** (C) Copyright 2008 SMIC  Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
//
// Model type           : zero timing
// Filename             : picu.v
// Description          : Input Pad with Controllable Pull-up
//
//
`celldefine
`suppress_faults
`enable_portfaults


`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif


module PICU (PAD,REN,C);

output  C;
input   PAD,REN;

  supply1 my1;
  buf     (C,PAD);
  rpmos   #0.01 (PAD,my1,REN);

   always @(PAD) begin
     if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") &&
         $countdrivers(PAD))
        $display("%t --BUS CONFLICT-- : %m", $realtime);
   end

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0;
// Delays
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults


 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pid.v 
// Description  	: CMOS Input Pad with Pull-down, 5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PID (PAD,C);

output  C;
input   PAD;
tri0 PAD;

buf #0.01 (C,PAD);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0;
// Delays
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pis.v
// Description  	: Schmitt Trigger Input Pad,5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PIS (PAD,C);

output  C;
input   PAD;

buf #0.01 (C,PAD);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0;
// Delays
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pisd.v 
// Description  	: Schmitt Trigger Input Pad with Pull-down, 5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PISD (PAD,C);

output  C;
input   PAD;
tri0 PAD;

buf #0.01 (C,PAD);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0;
// Delays
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pisu.v 
// Description  	: Schmitt Trigger Input Pad with Pull-up, 5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PISU (PAD,C);

output  C;
input   PAD;
tri1 PAD;

buf #0.01 (C,PAD);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0;
// Delays
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: piu.v 
// Description  	: CMOS Input Pad with Pull-up, 5V-Tolerant
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PIU (PAD,C);

output  C;
input   PAD;
tri1 PAD;

buf #0.01 (C,PAD);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_c_lh=0,pad_hl_c_hl=0;
// Delays
 (        PAD +=> C) = (pad_lh_c_lh,pad_hl_c_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: po12.v  
// Description  	: CMOS Output Only Pad, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PO12 (PAD,I);

output  PAD;
input   I;

buf #0.01 (PAD,I);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0;
// Delays
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: po16.v  
// Description  	: CMOS Output Only Pad, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PO16 (PAD,I);

output  PAD;
input   I;

buf #0.01 (PAD,I);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0;
// Delays
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: po2.v  
// Description  	: CMOS Output Only Pad, 2X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PO2 (PAD,I);

output  PAD;
input   I;

buf #0.01 (PAD,I);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0;
// Delays
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: po24.v  
// Description  	: CMOS Output Only Pad, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PO24 (PAD,I);

output  PAD;
input   I;

buf #0.01 (PAD,I);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0;
// Delays
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: po4.v  
// Description  	: CMOS Output Only Pad, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PO4 (PAD,I);

output  PAD;
input   I;

buf #0.01 (PAD,I);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0;
// Delays
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: po8.v  
// Description  	: CMOS Output Only Pad, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PO8 (PAD,I);

output  PAD;
input   I;

buf #0.01 (PAD,I);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0;
// Delays
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pol12.v  
// Description  	: CMOS Output Only Pad with Limited Slew Rate, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POL12 (PAD,I);

output  PAD;
input   I;

buf #0.01 (PAD,I);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0;
// Delays
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pol16.v  
// Description  	: CMOS Output Only Pad with Limited Slew Rate, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POL16 (PAD,I);

output  PAD;
input   I;

buf #0.01 (PAD,I);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0;
// Delays
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pol24.v  
// Description  	: CMOS Output Only Pad with Limited Slew Rate, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POL24 (PAD,I);

output  PAD;
input   I;

buf #0.01 (PAD,I);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0;
// Delays
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pol8.v  
// Description  	: CMOS Output Only Pad with Limited Slew Rate, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POL8 (PAD,I);

output  PAD;
input   I;

buf #0.01 (PAD,I);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0;
// Delays
 (        I +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot12.v
// Description  	: CMOS 3-state Output Pad,5V-Tolerant, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT12 (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot16.v
// Description  	: CMOS 3-state Output Pad,5V-Tolerant, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT16 (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot2.v
// Description  	: CMOS 3-state Output Pad,5V-Tolerant, 2X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT2 (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot24.v
// Description  	: CMOS 3-state Output Pad,5V-Tolerant, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT24 (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot4.v
// Description  	: CMOS 3-state Output Pad,5V-Tolerant, 4X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT4 (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pot8.v
// Description  	: CMOS 3-state Output Pad,5V-Tolerant, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POT8 (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: potl12.v
// Description  	: CMOS 3-state Output Pad with Limited Slew Rate,5V-Tolerant, 12X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POTL12 (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: potl16.v
// Description  	: CMOS 3-state Output Pad with Limited Slew Rate,5V-Tolerant, 16X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POTL16 (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: potl24.v
// Description  	: CMOS 3-state Output Pad with Limited Slew Rate,5V-Tolerant, 24X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POTL24 (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: potl8.v
// Description  	: CMOS 3-state Output Pad with Limited Slew Rate,5V-Tolerant, 8X Drive
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module POTL8 (PAD,OEN,I);

output  PAD;
input   OEN,I;

bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam i_lh_pad_lh=0,i_hl_pad_hl=0,oen_lh_pad_lz=0,oen_hl_pad_zh=0,
 oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd1.v
// Description  	: VDD Pad 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD1 (VDD);

   output VDD;
   pullup               G2(VDD);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd1anp.v
// Description  	: Analog power provider for non power-cut cell application
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD1ANP (SVDD1ANP);

   output SVDD1ANP;
   pullup               G2(SVDD1ANP);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd1ap.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD1AP (SVDD1AP);

   output SVDD1AP;
   pullup               G2(SVDD1AP);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd1ap1.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD1AP1 (SVDD1AP1);

   output SVDD1AP1;
   pullup               G2(SVDD1AP1);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd1cap.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD1CAP (SVDD1CAP);

   output SVDD1CAP;
   pullup               G2(SVDD1CAP);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd1cap1.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD1CAP1 (SVDD1CAP1);

   output SVDD1CAP1;
   pullup               G2(SVDD1CAP1);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd2.v
// Description  	: VDD Pad 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD2 ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd2ap.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD2AP ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd3ap.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD3AP (SAVDD);

   output SAVDD;
   pullup               G2(SAVDD);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd3cap.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD3CAP (SAVDD);

   output SAVDD;
   pullup               G2(SAVDD);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd4ap.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD4AP ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvdd5ap.v
// Description  	: analog vdd
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVDD5AP ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss1.v
// Description  	: VSS Pad 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS1 (VSS);

   output VSS;
   pulldown             G2(VSS);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss1anp.v
// Description  	: Analog ground provider for non power-cut cell application
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS1ANP (SVSS1ANP);

   output SVSS1ANP;
   pulldown             G2(SVSS1ANP);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss1ap.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS1AP (SVSS1AP);

   output SVSS1AP;
   pulldown             G2(SVSS1AP);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss1ap1.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS1AP1 (SVSS1AP1);

   output SVSS1AP1;
   pulldown             G2(SVSS1AP1);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss1cap.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS1CAP (SVSS1CAP);

   output SVSS1CAP;
   pulldown             G2(SVSS1CAP);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss1cap1.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS1CAP1 (SVSS1CAP1);

   output SVSS1CAP1;
   pulldown             G2(SVSS1CAP1);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss2.v
// Description  	: VSS Pad 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS2 ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss2ap.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS2AP ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss3.v
// Description  	: VSS Pad 
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS3 (VSS);

   output VSS;
   pulldown             G2(VSS);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss3ap.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS3AP (SAVSS);

   output SAVSS;
   pulldown             G2(SAVSS);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss3cap.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS3CAP (SAVSS);

   output SAVSS;
   pulldown             G2(SAVSS);

   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss4ap.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS4AP ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pvss5ap.v
// Description  	: analog vss
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module PVSS5AP ();


   parameter ExtLoad = 50.0 ;

`ifdef NOTIMING
`else
   specify
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: px1.v 
// Description  	: Crystal Oscillator 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PX1 (XIN,XOUT,XC);

output  XC;
input   XIN;
output	XOUT;

  not   (XOUT,XIN);
  buf   (XC  ,XIN);
`ifdef functional
`else
specify
// Parameter declarations
 specparam xin_lh_xout_hl=0,xin_hl_z_hl=0,xin_hl_xout_lh=0,xin_lh_z_lh=0;
// Delays
 (        XIN -=> XOUT) = (xin_hl_xout_lh,xin_lh_xout_hl);
 (        XIN +=> XC   ) = (xin_lh_z_lh,xin_hl_z_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
`timescale 1ns / 10ps
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: px2.v 
// Description  	: Crystal Oscillator 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PX2 (XIN,XOUT,XC);

output  XC;
input   XIN;
output	XOUT;

  not   (XOUT,XIN);
  buf   (XC  ,XIN);
`ifdef functional
`else
specify
// Parameter declarations
 specparam xin_lh_xout_hl=0,xin_hl_z_hl=0,xin_hl_xout_lh=0,xin_lh_z_lh=0;
// Delays
 (        XIN -=> XOUT) = (xin_hl_xout_lh,xin_lh_xout_hl);
 (        XIN +=> XC   ) = (xin_lh_z_lh,xin_hl_z_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
`timescale 1ns / 10ps
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: px3.v 
// Description  	: Crystal Oscillator 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PX3 (XIN,XOUT,XC);

output  XC;
input   XIN;
output	XOUT;

  not   (XOUT,XIN);
  buf   (XC  ,XIN);
`ifdef functional
`else
specify
// Parameter declarations
 specparam xin_lh_xout_hl=0,xin_hl_z_hl=0,xin_hl_xout_lh=0,xin_lh_z_lh=0;
// Delays
 (        XIN -=> XOUT) = (xin_hl_xout_lh,xin_lh_xout_hl);
 (        XIN +=> XC   ) = (xin_lh_z_lh,xin_hl_z_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
`timescale 1ns / 10ps
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pxwe1.v 
// Description  	: Crystal Oscillator Circuit With High Enable 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PXWE1 (XIN,XOUT,XC,E);

output  XC;
input   XIN,E;
inout	XOUT;

  nand           G2(XOUT,XIN,E);
  and            G5( XC ,XIN,E); 

`ifdef functional
`else
specify
// Parameter declarations
 specparam e_lh_xc_lh_1=0,e_lh_xout_hxc=0,e_hl_xc_hl=0,
 e_hl_xout_xch=0,xin_lh_xout_hl=0,e_lh_xout_lxc=0,
 e_hl_xout_xcl=0,xin_hl_xc_hl=0,xin_hl_xout_lh=0,xin_lh_xc_lh=0;
// Delays
 (        E   => XOUT) = (e_lh_xout_lxc,e_lh_xout_hxc,e_lh_xout_lxc,e_hl_xout_xch,e_lh_xout_hxc,e_hl_xout_xcl);
 (        E  +=> XC   ) = (e_lh_xc_lh_1,e_hl_xc_hl);
 (        XIN -=> XOUT) = (xin_hl_xout_lh,xin_lh_xout_hl);
 (        XIN +=> XC   ) = (xin_lh_xc_lh,xin_hl_xc_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
`timescale 1ns / 10ps
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pxwe2.v 
// Description  	: Crystal Oscillator Circuit With High Enable 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PXWE2 (XIN,XOUT,XC,E);

output  XC;
input   XIN,E;
inout	XOUT;

  nand           G2(XOUT,XIN,E);
  and            G5( XC ,XIN,E); 

`ifdef functional
`else
specify
// Parameter declarations
 specparam e_lh_xc_lh_1=0,e_lh_xout_hxc=0,e_hl_xc_hl=0,
 e_hl_xout_xch=0,xin_lh_xout_hl=0,e_lh_xout_lxc=0,
 e_hl_xout_xcl=0,xin_hl_xc_hl=0,xin_hl_xout_lh=0,xin_lh_xc_lh=0;
// Delays
 (        E   => XOUT) = (e_lh_xout_lxc,e_lh_xout_hxc,e_lh_xout_lxc,e_hl_xout_xch,e_lh_xout_hxc,e_hl_xout_xcl);
 (        E  +=> XC   ) = (e_lh_xc_lh_1,e_hl_xc_hl);
 (        XIN -=> XOUT) = (xin_hl_xout_lh,xin_lh_xout_hl);
 (        XIN +=> XC   ) = (xin_lh_xc_lh,xin_hl_xc_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
`timescale 1ns / 10ps
 
// ****** (C) Copyright 2009 SMIC   Inc. ********
//  --    SMIC   Verilog Models
// **********************************************
// 
// Model type   	: zero timing
// Filename     	: pxwe3.v 
// Description  	: Crystal Oscillator Circuit With High Enable 
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module PXWE3 (XIN,XOUT,XC,E);

output  XC;
input   XIN,E;
inout	XOUT;

  nand           G2(XOUT,XIN,E);
  and            G5( XC ,XIN,E); 

`ifdef functional
`else
specify
// Parameter declarations
 specparam e_lh_xc_lh_1=0,e_lh_xout_hxc=0,e_hl_xc_hl=0,
 e_hl_xout_xch=0,xin_lh_xout_hl=0,e_lh_xout_lxc=0,
 e_hl_xout_xcl=0,xin_hl_xc_hl=0,xin_hl_xout_lh=0,xin_lh_xc_lh=0;
// Delays
 (        E   => XOUT) = (e_lh_xout_lxc,e_lh_xout_hxc,e_lh_xout_lxc,e_hl_xout_xch,e_lh_xout_hxc,e_hl_xout_xcl);
 (        E  +=> XC   ) = (e_lh_xc_lh_1,e_hl_xc_hl);
 (        XIN -=> XOUT) = (xin_hl_xout_lh,xin_lh_xout_hl);
 (        XIN +=> XC   ) = (xin_lh_xc_lh,xin_hl_xc_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
`timescale 1ns / 10ps
 
