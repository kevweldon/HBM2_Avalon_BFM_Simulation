
proc get_design_libraries {} {
  set libraries [dict create]
  
  return $libraries
}

proc get_memory_files {QSYS_SIMDIR} {
  set memory_files [list]
  lappend memory_files "[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_seq_params_sim.hex"]"
  lappend memory_files "[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_uibssm_sim.hex"]"
  lappend memory_files "[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_seq_params_synth.hex"]"
  lappend memory_files "[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_uibssm_synth.hex"]"
  return $memory_files
}

proc get_common_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
  set design_files [dict create]
  dict set design_files "null::avalon_vip_verbosity_pkg"        "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/ch_0_0_master/altera_avalon_mm_master_bfm_191/sim/verbosity_pkg.sv"]\"  "       
  dict set design_files "null::avalon_vip_avalon_mm_pkg"        "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/ch_0_0_master/altera_avalon_mm_master_bfm_191/sim/avalon_mm_pkg.sv"]\"  "       
  dict set design_files "null::avalon_vip_avalon_utilities_pkg" "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/ch_0_0_master/altera_avalon_mm_master_bfm_191/sim/avalon_utilities_pkg.sv"]\"  "
  return $design_files
}

proc get_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
  set design_files [list]
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_iopll_1931/sim/qsys_top_hbm_0_altera_iopll_1931_vubauri.vo"]\"  "                                  
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_iopll_1931/sim/stratix10_altera_iopll.v"]\"  "                                                     
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_altera_iopll_191_oqrzszi.v"]\"  "          
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/rtl/altera_hbm_arch_nd_pll_qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly.sv"]\"  "
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_top.sv"]\"  "                       
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_uibssm.sv"]\"  "                    
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly.sv"]\"  "                           
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_reset_sync.v"]\"  "                                 
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_clkbuf.v"]\"  "                                                  
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_reset_sequencer.v"]\"  "                                     
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_reset_debounce.v"]\"  "                                          
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_two_one_mux.v"]\"  "                                             
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_two_one_obdatamux.v"]\"  "                                       
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_ecc_dbi_par.v"]\"  "                                   
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_ecc.v"]\"  "                                           
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_ecc_decoder_64.v"]\"  "                                
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_ecc_decoder_64_altecc_decoder.v"]\"  "                 
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_ecc_decoder_64_decode.v"]\"  "                         
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_ecc_encoder_64.v"]\"  "                                
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_ecc_encoder_64_altecc_encoder.v"]\"  "                 
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_mp_reg.v"]\"  "                                        
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_parity.v"]\"  "                                        
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_parity_gen.v"]\"  "                                    
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_rx_parity.v"]\"  "                                     
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slice_rx_parity_gen.v"]\"  "                                 
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slicedbi.v"]\"  "                                            
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slicedbi_comparator.v"]\"  "                                 
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_ub48slicedbi_lane.v"]\"  "                                       
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_gpio_ms.sv"]\"  "                                        
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_hbm.sv"]\"  "                                            
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_inph_adpt.sv"]\"  "                                      
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_ms.sv"]\"  "                                             
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_nd4h_uib.sv"]\"  "                                       
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_outph_adpt.sv"]\"  "                                     
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_outph_adpt_lraj.sv"]\"  "                                
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_pdio.sv"]\"  "                                           
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_phase_mux.sv"]\"  "                                      
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_psio.sv"]\"  "                                           
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_phptr_ctrl.sv"]\"  "                                     
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_psio_group.sv"]\"  "                                     
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_ptr_gen.sv"]\"  "                                        
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_read_fifo.sv"]\"  "                                      
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_ub48.sv"]\"  "                                           
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_ufi_adapter.sv"]\"  "                                    
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_amm_1x_bridge.sv"]\"  "                                               
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_abstract_uib_uib.sv"]\"  "                                            
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_arch_nd4h_ufi.sv"]\"  "                                           
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_arch_nd4h_uib_io_phy.sv"]\"  "                                    
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_arch_nd_buf_udir_se_i.sv"]\"  "                                   
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_arch_nd_bufs.sv"]\"  "                                            
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_arch_nd_buf_udir_se_o.sv"]\"  "                                   
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_arch_nd_hbmc.sv"]\"  "                                            
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_arch_nd_cpa.sv"]\"  "                                             
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_arch_nd_pll_fast_sim.sv"]\"  "                                    
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_arch_nd_ufi.sv"]\"  "                                             
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_arch_nd_uib_io_phy.sv"]\"  "                                      
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/aldec/altera_hbm_c2p_lcells.sv"]\"  "                                              
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_avl_ufi_adapter_2240/sim/aldec/altera_avl_ufi_monitor.sv"]\"  "                                         
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_avl_ufi_adapter_2240/sim/aldec/altera_avl_ufi_read_aligner.sv"]\"  "                                    
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_avl_ufi_adapter_2240/sim/aldec/altera_avl_ufi_soft_logic.sv"]\"  "                                      
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_avl_ufi_adapter_2240/sim/aldec/altera_avl_ufi_adapter.sv"]\"  "                                         
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_hbm_1961/sim/qsys_top_hbm_0_altera_hbm_1961_uzzthcq.v"]\"  "                                       
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/sim/qsys_top_hbm_0.v"]\"  "                                                                               
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_iopll_0/altera_iopll_1931/sim/qsys_top_iopll_0_altera_iopll_1931_ugekwwq.vo"]\"  "                              
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_iopll_0/altera_iopll_1931/sim/stratix10_altera_iopll.v"]\"  "                                                   
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_iopll_0/sim/qsys_top_iopll_0.v"]\"  "                                                                           
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/ch_0_0_master/altera_avalon_mm_master_bfm_191/sim/altera_avalon_mm_master_bfm.sv"]\"  "                                       
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/ch_0_0_master/sim/ch_0_0_master.v"]\"  "                                                                                 
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_reset/sim/qsys_top_reset.v"]\"  "                                                                               
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_master_translator_191/sim/qsys_top_altera_merlin_master_translator_191_g7h47bq.sv"]\"  "                           
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_slave_translator_191/sim/qsys_top_altera_merlin_slave_translator_191_x56fcki.sv"]\"  "                             
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_master_agent_191/sim/qsys_top_altera_merlin_master_agent_191_mpbm6tq.sv"]\"  "                                     
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_slave_agent_191/sim/qsys_top_altera_merlin_slave_agent_191_ncfkfri.sv"]\"  "                                       
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_slave_agent_191/sim/altera_merlin_burst_uncompressor.sv"]\"  "                                                     
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_avalon_sc_fifo_1931/sim/qsys_top_altera_avalon_sc_fifo_1931_vhmcgqy.v"]\"  "                                         
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_e3di2yi.sv"]\"  "                                               
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_mlccsda.sv"]\"  "                                               
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_kkqq5lq.sv"]\"  "                                               
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_bi23ntq.sv"]\"  "                                               
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_traffic_limiter_191/sim/qsys_top_altera_merlin_traffic_limiter_altera_avalon_sc_fifo_191_w4u5oua.v"]\"  "     
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_traffic_limiter_191/sim/altera_merlin_reorder_memory.sv"]\"  "                                                     
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_traffic_limiter_191/sim/altera_avalon_st_pipeline_base.v"]\"  "                                                    
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_traffic_limiter_191/sim/qsys_top_altera_merlin_traffic_limiter_191_6blplji.sv"]\"  "                               
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_demultiplexer_1921/sim/qsys_top_altera_merlin_demultiplexer_1921_g5kdmwq.sv"]\"  "                                 
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_demultiplexer_1921/sim/qsys_top_altera_merlin_demultiplexer_1921_sohe52q.sv"]\"  "                                 
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/qsys_top_altera_merlin_multiplexer_1921_v64yxgq.sv"]\"  "                                     
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  "                                                            
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/qsys_top_altera_merlin_multiplexer_1921_wiea3ja.sv"]\"  "                                     
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  "                                                            
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_demultiplexer_1921/sim/qsys_top_altera_merlin_demultiplexer_1921_ch7epuq.sv"]\"  "                                 
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/qsys_top_altera_merlin_multiplexer_1921_5b2cani.sv"]\"  "                                     
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  "                                                            
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/qsys_top_altera_merlin_multiplexer_1921_dzszuiq.sv"]\"  "                                     
  lappend design_files "vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"]\"  "                                                            
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_mm_interconnect_1920/sim/qsys_top_altera_mm_interconnect_1920_5dafona.v"]\"  "                                       
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_reset_controller_1921/sim/altera_reset_controller.v"]\"  "                                                           
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/altera_reset_controller_1921/sim/altera_reset_synchronizer.v"]\"  "                                                         
  lappend design_files "vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../qsys/qsys_top/sim/qsys_top.v"]\"  "                                                                                                       
  return $design_files
}

proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
  set ELAB_OPTIONS ""
  if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
  } else {
  }
  return $ELAB_OPTIONS
}


proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
  set SIM_OPTIONS ""
  if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
  } else {
  }
  return $SIM_OPTIONS
}


proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
  set ENV_VARIABLES [dict create]
  set LD_LIBRARY_PATH [dict create]
  dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
  if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
  } else {
  }
  return $ENV_VARIABLES
}


proc normalize_path {FILEPATH} {
    if {[catch { package require fileutil } err]} { 
        return $FILEPATH 
    } 
    set path [fileutil::lexnormalize [file join [pwd] $FILEPATH]]  
    if {[file pathtype $FILEPATH] eq "relative"} { 
        set path [fileutil::relative [pwd] $path] 
    } 
    return $path 
} 
