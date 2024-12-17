/*
 *      CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARM Physical IP, INC.
 *      
 *      Copyright (c) 1993-2002  ARM Physical IP, Inc.  All  Rights Reserved.
 *      
 *      Use of this Software is subject to the terms and conditions  of the
 *      applicable license agreement with ARM Physical IP, Inc.  In addition,
 *      this Software is protected by patents, copyright law and international
 *      treaties.
 *      
 *      The copyright notice(s) in this Software does not indicate actual or
 *      intended publication of this Software.
 *      
 *      name:			High Speed/Density Single-Port SRAM
 *           			SMIC 0.18um Logic018 Process
 *      version:		2005Q3V1
 *      comment:		
 *      configuration:	 -instname RA1SHD256X64 -words 256 -bits 64 -frequency 20 -ring_width 2 -mux 4 -drive 12 -write_mask on -wp_size 8 -top_layer met6 -power_type rings -horiz met3 -vert met4 -cust_comment "" -left_bus_delim "[" -right_bus_delim "]" -pwr_gnd_rename "VDD:VDD,GND:VSS" -prefix "" -pin_space 0.0 -name_case upper -check_instname on -diodes on -inside_ring_type GND -asvm on
 *
 *      Synopsys model for Synchronous Single-Port Ram
 *
 *      Library Name:   aci
 *      Instance Name:  RA1SHD256X64
 *      Words:          256
 *      Word Width:     64
 *      Mux:            4
 *      Pipeline:       No
 *
 *      Creation Date:  2002-06-03 12:41:48Z
 *      Version:        2005Q3V1
 *
 *      Verified With: Synopsys Primetime
 *
 *      Modeling Assumptions: This library contains a black box description
 *          for a memory element.  At the library level, a
 *          default_max_transition constraint is set to the maximum
 *          characterized input slew.  Each output has a max_capacitance
 *          constraint set to the highest characterized output load.
 *          Different modes are defined in order to disable false path
 *          during the specific mode activation when doing static timing analysis. 
 *
 *
 *      Modeling Limitations: This stamp does not include power information.
 *          Due to limitations of the stamp modeling, some data reduction was
 *          necessary.  When reducing data, minimum values were chosen for the
 *          fast case corner and maximum values were used for the typical and
 *          best case corners.  It is recommended that critical timing and
 *          setup and hold times be checked at all corners.
 *
 *      Known Bugs: None.
 *
 *      Known Work Arounds: N/A
 *
 */

MODEL
MODEL_VERSION "1.0";
DESIGN "RA1SHD256X64";
TRIOUT Q[63:0];
INPUT A[7:0];
INPUT CEN;
INPUT CLK;
INPUT D[63:0];
INPUT WEN[7:0];
INPUT OEN;
MODE mem_mode =	Mission  COND(CEN==0),
                Inactive COND(CEN==1);


tch_tas: SETUP(POSEDGE) A CLK MODE(mem_mode=Mission);
tch_tah: HOLD(POSEDGE) A CLK MODE(mem_mode=Mission);
tch_tcs: SETUP(POSEDGE) CEN CLK MODE(mem_mode=Mission);
tch_tch: HOLD(POSEDGE) CEN CLK MODE(mem_mode=Mission);
tch_tds: SETUP(POSEDGE) D CLK MODE(mem_mode=Mission);
tch_tdh: HOLD(POSEDGE) D CLK MODE(mem_mode=Mission);
tch_tws: SETUP(POSEDGE) WEN CLK MODE(mem_mode=Mission);
tch_twh: HOLD(POSEDGE) WEN CLK MODE(mem_mode=Mission);
period_tcyc: PERIOD(POSEDGE) CLK ;
tpw_tckh: WIDTH(POSEDGE) CLK ;
tpw_tckl: WIDTH(NEGEDGE) CLK ;
dly_tya: DELAY(POSEDGE) CLK Q  ;
dly_tlzl: DELAY(DISABLE_HIGH) OEN Q  MODE(mem_mode=Mission);
dly_tlzh: DELAY(ENABLE_LOW) OEN Q  MODE(mem_mode=Mission);
ENDMODEL
