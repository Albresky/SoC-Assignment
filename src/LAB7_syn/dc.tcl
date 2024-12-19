# ------------------------------ File information------------------------------
#                  File name : 
#                  Author    : asic51 
#                  Version   : 1.0
# ===============================================================================
# Modification History
# Date      	By      Version      Change Description
# ===================================================
# 09/05/23	asic51	1.0		initial version


#################################################################################
# Read File and Constraints
#################################################################################
    suppress_message VER-936
    suppress_message VER-130
    suppress_message VER-274
    suppress_message VER-318
    suppress_message ELAB-311
    source -echo -verbose ./scripts/setup_dc.tcl
    define_design_lib WORK -path ./WORK
    analyze -format verilog ${RTL_SOURCE_VERILOG}
    #analyze -format VHDL    ${RTL_SOURCE_VHDL}
    elaborate ${DESIGN_NAME}
    write -hierarchy -format ddc -output ${RESULTS_DIR}/${DESIGN_NAME}_read.ddc
    current_design ${DESIGN_NAME}
    link
    source -echo -verbose ./scripts/cons.tcl
    #set_operating_conditions -max tt_1v0_25c -lib tt_1v0_25c
    #define_name_rules CAPS_ONLY -allow "a-z 0-9 _"
    #change_names -hierarchy  -rules CAPS_ONLY 
#################################################################################
# Power Optimization Section
#################################################################################
    set_fix_multiple_port_nets -all -buffer_constants
    
    remove_unconnected_ports  [get_cells -hierarchical]   
    
#   read_saif -input   ../pre_sim/vcs/INST_full_chip.saif -instance tb/INST_full_chip      
#   set_max_dynamic_power 0    
#   set_max_leakage_power 0
#   set power_enable_datapath_gating true
#   set do_operand_isolation true
   
#    set_max_net_length 3000 full_chip
   
    compile
    write -format ddc -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}_mapped_0.ddc
    set power_driven_clock_gating true
    
    compile_ultra -no_autoungroup -inc -gate_clock

    date
    report_hierarchy   > ${REPORTS_DIR}/${DESIGN_NAME}_report_hierarchy.rpt
    write -format ddc -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}_compile_ultra.ddc
    #write -f verilog -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}_mapped_without_dft.v
################################################################################
# DFT Compiler Optimization Section
################################################################################
    #source ./script/dft.tcl
    remove_unconnected_ports [ find  cell -h  *]
#################################################################################
# Write Out Final Design and Reports
#################################################################################

    change_names -rules verilog -hierarchy
    #write_scan_def -output ${RESULTS_DIR}/${DESIGN_NAME}_mapped.scandef
    #check_scan_def > ${REPORTS_DIR}/${DESIGN_NAME}_mapped_check_scan_def.rpt
    #write_test_model -format ctl -output ${RESULTS_DIR}/${DESIGN_NAME}_mapped.ctl
    #report_dft_signal > ${REPORTS_DIR}/${DESIGN_NAME}_mapped_dft_signals.rpt
    #write_test_protocol -names verilog -output ${RESULTS_DIR}/${DESIGN_NAME}_mapped_scan.spf
    #dft_drc > ${REPORTS_DIR}/${DESIGN_NAME}_mapped_dft_drc_inserted.rpt
    #report_scan_path > ${REPORTS_DIR}/${DESIGN_NAME}_mapped_scanpath.rpt
    #set_svf -off
    write -format ddc -hierarchy -output ${RESULTS_DIR}/${DESIGN_NAME}_mapped.ddc
    write -f verilog -hierarchy -output ./netlist/${DESIGN_NAME}_mapped.v
    #write -f verilog 		 -output ./netlist/${DESIGN_NAME}_for_bsd.v
    report_timing_requirements   > ${REPORTS_DIR}/${DESIGN_NAME}_report_timing_requirements.rpt
    report_timing -max_paths 100 > ${REPORTS_DIR}/${DESIGN_NAME}_all_path_timing.rpt    
     	 
    #write_physical_constraints -output ${RESULTS_DIR}/${DESIGN_NAME}_mapped_physical_constraints.tcl
    #write_parasitics -output ${RESULTS_DIR}/${DESIGN_NAME}_mapped.spef
    write_sdf ${RESULTS_DIR}/${DESIGN_NAME}_mapped.sdf
    set write_sdc_output_lumped_net_capacitance false
    set write_sdc_output_net_resistance false
    write_sdc -nosplit ${RESULTS_DIR}/${DESIGN_NAME}_mapped.sdc
    #saif_map -type ptpx -write_map ${RESULTS_DIR}/${DESIGN_NAME}_mapped_SAIF.namemap

    #report_qor > ${REPORTS_DIR}/${DESIGN_NAME}_mapped.qor.rpt
    report_timing -transition_time -nets -attributes -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}_mapped_timing.rpt
    report_area -physical -hierarchy > ${REPORTS_DIR}/${DESIGN_NAME}_mapped_area.rpt
    report_cell			   > ${REPORTS_DIR}/${DESIGN_NAME}_mapped_cell.rpt    
    #report_congestion > ${REPORTS_DIR}/${DESIGN_NAME}_mapped_congestion.rpt
    ##read_saif -auto_map_names -input ${DESIGN_NAME}.saif -instance cfft_tb_pad/UUT -verbose
    report_power -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}_mapped_power.rpt
    report_clock_gating -nosplit > ${REPORTS_DIR}/${DESIGN_NAME}_mapped_clock_gating.rpt
    report_constraint  -all_violators > ${REPORTS_DIR}/${DESIGN_NAME}_constraint_all_violators.rpt
    #write_milkyway -overwrite -output ${DESIGN_NAME}_DCT
    check_timing           > ${REPORTS_DIR}/${DESIGN_NAME}_check_timing_final.rpt
    #report_reference    -h   > ${REPORTS_DIR}/${DESIGN_NAME}_report_reference.rpt
    #report_clock_tree     > ${REPORTS_DIR}/${DESIGN_NAME}_report_clock_tree.rpt
    #source ./script/print_exception.tcl
    date
    #exit




