

set DESIGN_NAME                   "full_chip";
set DESIGN_REF_DATA_PATH          ""  ;
set PATH_PREFIX                   ""
set ADDITIONAL_SEARCH_PATH        "  	.  \
				../../../lib/SMIC180/SCC018UG_UHD_RVT_V0p4a/liberty/1.8v	\ 
				../../../lib/SMIC180/SP018_V1.5b/SP018_V1p5b/SP018_V1p5b/syn	\
				../../../lib/SMIC180/MEM_IP_20MHz/db"  

######################################				  
set TARGET_LIBRARY_FILES          "scc018ug_uhd_rvt_ss_v1p62_125c_basic.db		\
				  		SP018_V1p4_max.db
					"  ;      			   

######################################
set ADDITIONAL_LINK_LIB_FILES     "   
					RA1SHD8192X64_slow_syn.db	\
					RA1SHD8192X32_slow_syn.db	
					 " ;

set alib_library_analysis_path .
set RTL_SOURCE_VERILOG  		  "    		
	                		../pre_sim/rtl/e203/soc/full_chip.v                         \
                    		../pre_sim/rtl/e203/core/e203_biu.v							\
					../pre_sim/rtl/e203/core/e203_clk_ctrl.v                                                \
					../pre_sim/rtl/e203/core/e203_clkgate.v                                                 \
					../pre_sim/rtl/e203/core/e203_core.v                                                    \
					../pre_sim/rtl/e203/core/e203_cpu_top.v                                                 \
					../pre_sim/rtl/e203/core/e203_cpu.v                                                     \
					../pre_sim/rtl/e203/core/e203_dtcm_ctrl.v                                               \
					../pre_sim/rtl/e203/core/e203_dtcm_ram.v                                                \
					../pre_sim/rtl/e203/core/e203_extend_csr.v                                              \
					../pre_sim/rtl/e203/core/e203_exu_alu_bjp.v                                             \
					../pre_sim/rtl/e203/core/e203_exu_alu_csrctrl.v                                         \
					../pre_sim/rtl/e203/core/e203_exu_alu_dpath.v                                           \
					../pre_sim/rtl/e203/core/e203_exu_alu_lsuagu.v                                          \
					../pre_sim/rtl/e203/core/e203_exu_alu_muldiv.v                                          \
					../pre_sim/rtl/e203/core/e203_exu_alu_rglr.v                                            \
					../pre_sim/rtl/e203/core/e203_exu_alu.v                                                 \
					../pre_sim/rtl/e203/core/e203_exu_branchslv.v                                           \
					../pre_sim/rtl/e203/core/e203_exu_commit.v                                              \
					../pre_sim/rtl/e203/core/e203_exu_csr.v                                                 \
					../pre_sim/rtl/e203/core/e203_exu_decode.v                                              \
					../pre_sim/rtl/e203/core/e203_exu_disp.v						\
					../pre_sim/rtl/e203/core/e203_exu_excp.v                                                \
					../pre_sim/rtl/e203/core/e203_exu_longpwbck.v                                           \
					../pre_sim/rtl/e203/core/e203_exu_nice.v                                                \
					../pre_sim/rtl/e203/core/e203_exu_oitf.v                                                \
					../pre_sim/rtl/e203/core/e203_exu_regfile.v                                             \
					../pre_sim/rtl/e203/core/e203_exu.v                                                     \
					../pre_sim/rtl/e203/core/e203_exu_wbck.v                                                \
					../pre_sim/rtl/e203/core/e203_ifu_ifetch.v                                              \
					../pre_sim/rtl/e203/core/e203_ifu_ift2icb.v                                             \
					../pre_sim/rtl/e203/core/e203_ifu_litebpu.v                                             \
					../pre_sim/rtl/e203/core/e203_ifu_minidec.v                                             \
					../pre_sim/rtl/e203/core/e203_ifu.v                                                     \
					../pre_sim/rtl/e203/core/e203_irq_sync.v                                                \
					../pre_sim/rtl/e203/core/e203_itcm_ctrl.v                                               \
					../pre_sim/rtl/e203/core/e203_itcm_ram.v                                                \
					../pre_sim/rtl/e203/core/e203_lsu_ctrl.v                                                \
					../pre_sim/rtl/e203/core/e203_lsu.v                                                     \
					../pre_sim/rtl/e203/core/e203_reset_ctrl.v                                              \
					../pre_sim/rtl/e203/core/e203_srams.v                                                   \
					../pre_sim/rtl/e203/debug/sirv_debug_csr.v                                              \
					../pre_sim/rtl/e203/debug/sirv_debug_module.v                                           \
					../pre_sim/rtl/e203/debug/sirv_debug_ram.v                                              \
					../pre_sim/rtl/e203/debug/sirv_debug_rom.v                                              \
					../pre_sim/rtl/e203/debug/sirv_jtag_dtm.v                                               \
					../pre_sim/rtl/e203/fab/sirv_icb1to16_bus.v                                             \
					../pre_sim/rtl/e203/fab/sirv_icb1to2_bus.v                                              \
					../pre_sim/rtl/e203/fab/sirv_icb1to8_bus.v                                              \
					../pre_sim/rtl/e203/general/sirv_1cyc_sram_ctrl.v                                       \
					../pre_sim/rtl/e203/general/sirv_gnrl_bufs.v                                            \
					../pre_sim/rtl/e203/general/sirv_gnrl_dffs.v                                            \
					../pre_sim/rtl/e203/general/sirv_gnrl_icbs.v                                            \
					../pre_sim/rtl/e203/general/sirv_gnrl_ram.v                                             \
					../pre_sim/rtl/e203/general/sirv_gnrl_xchecker.v                                        \
					../pre_sim/rtl/e203/general/sirv_sim_ram.v                                              \
					../pre_sim/rtl/e203/general/sirv_sram_icb_ctrl.v                                       	\
					../pre_sim/rtl/e203/mems/sirv_mrom_top.v                                                \
					../pre_sim/rtl/e203/mems/sirv_mrom.v                                                    \
					../pre_sim/rtl/e203/perips/sirv_aon_lclkgen_regs.v                                      \
					../pre_sim/rtl/e203/perips/sirv_aon_porrst.v                                            \
					../pre_sim/rtl/e203/perips/sirv_aon_top.v                                               \
					../pre_sim/rtl/e203/perips/sirv_aon.v                                                   \
					../pre_sim/rtl/e203/perips/sirv_aon_wrapper.v                                           \
					../pre_sim/rtl/e203/perips/sirv_AsyncResetReg.v                                         \
					../pre_sim/rtl/e203/perips/sirv_AsyncResetRegVec_129.v                                  \
					../pre_sim/rtl/e203/perips/sirv_AsyncResetRegVec_1.v                                    \
					../pre_sim/rtl/e203/perips/sirv_AsyncResetRegVec_36.v                                   \
					../pre_sim/rtl/e203/perips/sirv_AsyncResetRegVec.v                                      \
					../pre_sim/rtl/e203/perips/sirv_clint_top.v                                             \
					../pre_sim/rtl/e203/perips/sirv_clint.v                                                 \
					../pre_sim/rtl/e203/perips/sirv_DeglitchShiftRegister.v                                 \
					../pre_sim/rtl/e203/perips/sirv_expl_axi_slv.v                                          \
					../pre_sim/rtl/e203/perips/sirv_flash_qspi_top.v                                        \
					../pre_sim/rtl/e203/perips/sirv_flash_qspi.v                                            \
					../pre_sim/rtl/e203/perips/sirv_hclkgen_regs.v                                          \
					../pre_sim/rtl/e203/perips/sirv_jtaggpioport.v                                          \
					../pre_sim/rtl/e203/perips/sirv_LevelGateway.v                                          \
					../pre_sim/rtl/e203/perips/sirv_plic_man.v                                              \
					../pre_sim/rtl/e203/perips/sirv_plic_top.v                                              \
					../pre_sim/rtl/e203/perips/sirv_pmu_core.v                                              \
					../pre_sim/rtl/e203/perips/sirv_pmu.v                                                   \
					../pre_sim/rtl/e203/perips/sirv_qspi_arbiter.v                                      	\
					../pre_sim/rtl/e203/perips/sirv_qspi_fifo.v                                             \
					../pre_sim/rtl/e203/perips/sirv_qspi_media.v                                            \
					../pre_sim/rtl/e203/perips/sirv_qspi_physical.v                                         \
					../pre_sim/rtl/e203/perips/sirv_queue_1.v                                               \
					../pre_sim/rtl/e203/perips/sirv_queue.v                                                 \
					../pre_sim/rtl/e203/perips/sirv_repeater_6.v                                            \
					../pre_sim/rtl/e203/perips/sirv_ResetCatchAndSync_2.v                                   \
					../pre_sim/rtl/e203/perips/sirv_ResetCatchAndSync.v                                     \
					../pre_sim/rtl/e203/perips/sirv_rtc.v                                                   \
					../pre_sim/rtl/e203/perips/sirv_spi_flashmap.v                                          \
					../pre_sim/rtl/e203/perips/sirv_tlfragmenter_qspi_1.v                                   \
					../pre_sim/rtl/e203/perips/sirv_tl_repeater_5.v                                         \
					../pre_sim/rtl/e203/perips/sirv_tlwidthwidget_qspi.v                                    \
					../pre_sim/rtl/e203/perips/sirv_wdog.v                                                  \
					../pre_sim/rtl/e203/perips/apb_adv_timer/adv_timer_apb_if.v                             \
					../pre_sim/rtl/e203/perips/apb_adv_timer/apb_adv_timer.v                                \
					../pre_sim/rtl/e203/perips/apb_adv_timer/comparator.v                                   \
					../pre_sim/rtl/e203/perips/apb_adv_timer/input_stage.v                                  \
					../pre_sim/rtl/e203/perips/apb_adv_timer/prescaler.v                                    \
					../pre_sim/rtl/e203/perips/apb_adv_timer/timer_cntrl.v                                  \
					../pre_sim/rtl/e203/perips/apb_adv_timer/timer_module.v                                 \
					../pre_sim/rtl/e203/perips/apb_adv_timer/up_down_counter.v                              \
					../pre_sim/rtl/e203/perips/apb_gpio/apb_gpio.v                                          \
					../pre_sim/rtl/e203/perips/apb_i2c/apb_i2c.v                                            \
					../pre_sim/rtl/e203/perips/apb_i2c/i2c_master_bit_ctrl.v                                \
					../pre_sim/rtl/e203/perips/apb_i2c/i2c_master_byte_ctrl.v                               \
					../pre_sim/rtl/e203/perips/apb_spi_master/apb_spi_master.v                              \
					../pre_sim/rtl/e203/perips/apb_spi_master/spi_master_apb_if.v                           \
					../pre_sim/rtl/e203/perips/apb_spi_master/spi_master_clkgen.v				\
					../pre_sim/rtl/e203/perips/apb_spi_master/spi_master_controller.v                       \
					../pre_sim/rtl/e203/perips/apb_spi_master/spi_master_fifo.v                             \
					../pre_sim/rtl/e203/perips/apb_spi_master/spi_master_rx.v                               \
					../pre_sim/rtl/e203/perips/apb_spi_master/spi_master_tx.v                               \
					../pre_sim/rtl/e203/perips/apb_uart/apb_uart.v                                          \
					../pre_sim/rtl/e203/perips/apb_uart/io_generic_fifo.v                                   \
					../pre_sim/rtl/e203/perips/apb_uart/uart_interrupt.v                                    \
					../pre_sim/rtl/e203/perips/apb_uart/uart_rx.v                                           \
					../pre_sim/rtl/e203/perips/apb_uart/uart_tx.v                                           \
					../pre_sim/rtl/e203/soc/e203_soc_top.v                                                  \
					../pre_sim/rtl/e203/subsys/e203_subsys_clint.v                                          \
					../pre_sim/rtl/e203/subsys/e203_subsys_gfcm.v                                           \
					../pre_sim/rtl/e203/subsys/e203_subsys_hclkgen_rstsync.v                                \
					../pre_sim/rtl/e203/subsys/e203_subsys_hclkgen.v                                        \
					../pre_sim/rtl/e203/subsys/e203_subsys_main.v                                           \
					../pre_sim/rtl/e203/subsys/e203_subsys_mems.v                                           \
					../pre_sim/rtl/e203/subsys/e203_subsys_nice_core.v                                      \
					../pre_sim/rtl/e203/subsys/e203_subsys_perips.v                                         \
					../pre_sim/rtl/e203/subsys/e203_subsys_plic.v                                           \
					../pre_sim/rtl/e203/subsys/e203_subsys_pllclkdiv.v                                      \
					../pre_sim/rtl/e203/subsys/e203_subsys_pll.v                                            \
					../pre_sim/rtl/e203/subsys/e203_subsys_top.v
					"


set REPORTS_DIR "reports"
set RESULTS_DIR "results"



set search_path 		". ${ADDITIONAL_SEARCH_PATH} $search_path"
set target_library 		${TARGET_LIBRARY_FILES}
set synthetic_library 		dw_foundation.sldb
set link_library 		"* $target_library $ADDITIONAL_LINK_LIB_FILES $synthetic_library"


