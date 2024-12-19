# ------------------------------ File information------------------------------
#                  File name : constrain for syn
#                  Author    : CLM 
#                  Version   : 1.0
# ===============================================================================
# Modification History
# Date		By		Version	Change Description
# ===================================================
# 10/30/23		CLM		1.0		initial version



set 	RST_PERIOD 				36000
set 	CLK_HFEXTCLK_PERIOD 			50
set 	CLK_LFEXTCLK_PERIOD 			20000	
set 	CLK_JTAGCLK_PERIOD	 		1000	
	                        		
set 	CLK_SKEW_SETUP 			0.5
set 	CLK_SKEW_HOLD 			0.5
set 	CLK_SOURCE_LATENCY 			2
set 	CLK_NETWORK_LATENCY 			4
set 	CLK_TRAN 				1

set 	IN_DELAY_MASTER 			3
set 	OUT_DELAY_MASTER 			3

set 	IN_TRAN 				0.5
set 	OUT_LOAD 				15

set 	MAX_FANOUT   				15
set 	MAX_CAP     				0.25	
set    MAX_TRAN                        	2.4	
reset_design
#============================================= CLK  DEFINITION ===========================================#               
create_clock -period 	$CLK_HFEXTCLK_PERIOD 	-name hfextclk	 				[get_ports  hfextclk]
create_clock -period 	$CLK_LFEXTCLK_PERIOD	-name lfextclk					[get_ports  lfextclk]
create_clock -period 	$CLK_JTAGCLK_PERIOD	-name	JTAG_CLK					[get_ports	io_pads_jtag_TCK_i_ival]

create_clock -period	$RST_PERIOD			-name rst_n		-waveform {460 35540}	 [get_ports io_pads_aon_erst_n_i_ival]

#--------------------
set_clock_uncertainty -setup 	$CLK_SKEW_SETUP 		[get_clocks {hfextclk lfextclk rst_n JTAG_CLK}]     
set_clock_uncertainty -hold 	$CLK_SKEW_HOLD  		[get_clocks {hfextclk lfextclk rst_n JTAG_CLK}]     
set_clock_latency     -source  	$CLK_SOURCE_LATENCY 		[get_clocks {hfextclk lfextclk rst_n JTAG_CLK}]                                 
set_clock_latency     		$CLK_NETWORK_LATENCY  		[get_clocks {hfextclk lfextclk rst_n JTAG_CLK}]                             
set_clock_transition 		$CLK_TRAN  			[get_clocks {hfextclk lfextclk rst_n JTAG_CLK}]  
   
set_dont_touch_network                                  [get_clocks {hfextclk lfextclk rst_n JTAG_CLK}]    

set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_subsys_hclkgen/u_CLKMUX2]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_subsys_hclkgen/u_e203_subsys_gfcm/u_CLKOR2]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_subsys_hclkgen/u_e203_subsys_pllclkdiv/u_pllclkdiv_clkgate/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_subsys_hclkgen/u_e203_subsys_gfcm/u_clk0_clkgate/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_subsys_hclkgen/u_e203_subsys_gfcm/u_clk1_clkgate/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_cpu/u_e203_clk_ctrl/u_ifu_clkgate/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_cpu/u_e203_clk_ctrl/u_exu_clkgate/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_cpu/u_e203_clk_ctrl/u_lsu_clkgate/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_cpu/u_e203_clk_ctrl/u_biu_clkgate/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_cpu/u_e203_clk_ctrl/u_itcm_clkgate/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_cpu/u_e203_clk_ctrl/u_dtcm_clkgate/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_subsys_perips/u_perips_apb_pwm/i_clk_gate_timer0/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_subsys_perips/u_perips_apb_pwm/i_clk_gate_timer1/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_subsys_perips/u_perips_apb_pwm/i_clk_gate_timer2/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_subsys_perips/u_perips_apb_pwm/i_clk_gate_timer3/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_cpu/u_e203_itcm_ctrl/u_sram_icb_ctrl/u_sirv_1cyc_sram_ctrl/u_ram_clkgate/latch]
set_dont_touch	 [get_cells u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_cpu/u_e203_dtcm_ctrl/u_sram_icb_ctrl/u_sirv_1cyc_sram_ctrl/u_ram_clkgate/latch]


#============================================= I/O Timing     ===========================================#
set_output_delay 		$OUT_DELAY_MASTER  	-clock hfextclk		[get_ports hfxoscen]
set_output_delay 		$OUT_DELAY_MASTER  	-clock lfextclk		[get_ports lfxoscen]
set_output_delay 		$OUT_DELAY_MASTER  	-clock JTAG_CLK		[get_ports io_pads_jtag_TDO_o]
set_output_delay 		$OUT_DELAY_MASTER  	-clock hfextclk		[get_ports {io_pads_gpioA io_pads_gpioB}]
set_output_delay 		$OUT_DELAY_MASTER  	-clock hfextclk		[get_ports {io_pads_qspi0_sck_o_oval io_pads_qspi0_cs_0_o_oval}]
set_output_delay 		$OUT_DELAY_MASTER  	-clock hfextclk		[get_ports {io_pads_qspi0_dq_0 io_pads_qspi0_dq_1}]
set_output_delay 		$OUT_DELAY_MASTER  	-clock hfextclk		[get_ports {io_pads_qspi0_dq_2 io_pads_qspi0_dq_3}]
set_output_delay 		$OUT_DELAY_MASTER  	-clock lfextclk		[get_ports {io_pads_aon_pmu_padrst_o_oval io_pads_aon_pmu_vddpaden_o_oval}]

set_input_delay 		$IN_DELAY_MASTER		-clock JTAG_CLK		[get_ports {io_pads_jtag_TMS_i_ival io_pads_jtag_TDI_i_ival}] 
set_input_delay 		$IN_DELAY_MASTER		-clock hfextclk		[get_ports {io_pads_gpioA io_pads_gpioB}] 
set_input_delay 		$IN_DELAY_MASTER  	-clock hfextclk		[get_ports {io_pads_qspi0_dq_0 io_pads_qspi0_dq_1}]
set_input_delay 		$IN_DELAY_MASTER  	-clock hfextclk		[get_ports {io_pads_qspi0_dq_2 io_pads_qspi0_dq_3}]
set_input_delay 		$IN_DELAY_MASTER  	-clock lfextclk		[get_ports {io_pads_dbgmode0_n_i_ival}]
set_input_delay 		$IN_DELAY_MASTER  	-clock lfextclk		[get_ports {io_pads_dbgmode1_n_i_ival}]
set_input_delay 		$IN_DELAY_MASTER  	-clock lfextclk		[get_ports {io_pads_dbgmode2_n_i_ival}]
set_input_delay 		$IN_DELAY_MASTER		-clock lfextclk		[get_ports io_pads_bootrom_n_i_ival]
set_input_delay 		$IN_DELAY_MASTER		-clock lfextclk		[get_ports io_pads_aon_pmu_dwakeup_n_i_ival]
set_input_delay 		$IN_DELAY_MASTER		-clock hfextclk		[get_ports test_mode]
set_input_delay 		$IN_DELAY_MASTER		-clock lfextclk		[get_ports test_mode]	-add_delay

set_input_transition 	$IN_TRAN 	[all_inputs]
set_load 			$OUT_LOAD 	[all_outputs]


set ALL_EX_OUT 			[remove_from_collection [current_design] [all_outputs]]
set ALL_EX_OUT_IN 			[remove_from_collection $ALL_EX_OUT [all_inputs]]
set_max_transition 			$MAX_TRAN 		$ALL_EX_OUT_IN 
set_max_fanout  				$MAX_FANOUT  	$ALL_EX_OUT_IN
set_max_capacitance 			$MAX_CAP 		$ALL_EX_OUT_IN


#============================================= TIMING EXCEPTION  ===========================================#	

set	timing_non_unate_clock_compatibility  true
set 	enable_recovery_removal_arcs true																		
