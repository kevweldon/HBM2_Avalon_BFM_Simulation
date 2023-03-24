
namespace eval qsys_top_hbm_0 {
  proc get_design_libraries {} {
    set libraries [dict create]
    dict set libraries altera_iopll_1931           1
    dict set libraries altera_abstract_uib_191     1
    dict set libraries altera_avl_ufi_adapter_2240 1
    dict set libraries altera_hbm_1961             1
    dict set libraries qsys_top_hbm_0              1
    return $libraries
  }
  
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    lappend memory_files "[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_seq_params_sim.hex"]"
    lappend memory_files "[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_uibssm_sim.hex"]"
    lappend memory_files "[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_seq_params_synth.hex"]"
    lappend memory_files "[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_uibssm_synth.hex"]"
    return $memory_files
  }
  
  proc get_common_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [dict create]
    return $design_files
  }
  
  proc get_design_files {USER_DEFINED_COMPILE_OPTIONS USER_DEFINED_VERILOG_COMPILE_OPTIONS USER_DEFINED_VHDL_COMPILE_OPTIONS QSYS_SIMDIR} {
    set design_files [list]
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_iopll_1931/sim/qsys_top_hbm_0_altera_iopll_1931_vubauri.vo"]\"  -work altera_iopll_1931"                                                 
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_iopll_1931/sim/stratix10_altera_iopll.v"]\"  -work altera_iopll_1931"                                                                    
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_altera_iopll_191_oqrzszi.v"]\"  -work altera_abstract_uib_191"                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/rtl/altera_hbm_arch_nd_pll_qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly.sv"]\"  -work altera_abstract_uib_191"
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_top.sv"]\"  -work altera_abstract_uib_191"                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_uibssm.sv"]\"  -work altera_abstract_uib_191"                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly.sv"]\"  -work altera_abstract_uib_191"                           
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_reset_sync.v"]\"  -work altera_abstract_uib_191"                                         
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_clkbuf.v"]\"  -work altera_abstract_uib_191"                                                          
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_reset_sequencer.v"]\"  -work altera_abstract_uib_191"                                             
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_reset_debounce.v"]\"  -work altera_abstract_uib_191"                                                  
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_two_one_mux.v"]\"  -work altera_abstract_uib_191"                                                     
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_two_one_obdatamux.v"]\"  -work altera_abstract_uib_191"                                               
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_ecc_dbi_par.v"]\"  -work altera_abstract_uib_191"                                           
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_ecc.v"]\"  -work altera_abstract_uib_191"                                                   
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_ecc_decoder_64.v"]\"  -work altera_abstract_uib_191"                                        
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_ecc_decoder_64_altecc_decoder.v"]\"  -work altera_abstract_uib_191"                         
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_ecc_decoder_64_decode.v"]\"  -work altera_abstract_uib_191"                                 
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_ecc_encoder_64.v"]\"  -work altera_abstract_uib_191"                                        
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_ecc_encoder_64_altecc_encoder.v"]\"  -work altera_abstract_uib_191"                         
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_mp_reg.v"]\"  -work altera_abstract_uib_191"                                                
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_parity.v"]\"  -work altera_abstract_uib_191"                                                
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_parity_gen.v"]\"  -work altera_abstract_uib_191"                                            
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_rx_parity.v"]\"  -work altera_abstract_uib_191"                                             
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slice_rx_parity_gen.v"]\"  -work altera_abstract_uib_191"                                         
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slicedbi.v"]\"  -work altera_abstract_uib_191"                                                    
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slicedbi_comparator.v"]\"  -work altera_abstract_uib_191"                                         
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_ub48slicedbi_lane.v"]\"  -work altera_abstract_uib_191"                                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_gpio_ms.sv"]\"  -work altera_abstract_uib_191"                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_hbm.sv"]\"  -work altera_abstract_uib_191"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_inph_adpt.sv"]\"  -work altera_abstract_uib_191"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_ms.sv"]\"  -work altera_abstract_uib_191"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_nd4h_uib.sv"]\"  -work altera_abstract_uib_191"                                      
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_outph_adpt.sv"]\"  -work altera_abstract_uib_191"                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_outph_adpt_lraj.sv"]\"  -work altera_abstract_uib_191"                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_pdio.sv"]\"  -work altera_abstract_uib_191"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_phase_mux.sv"]\"  -work altera_abstract_uib_191"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_psio.sv"]\"  -work altera_abstract_uib_191"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_phptr_ctrl.sv"]\"  -work altera_abstract_uib_191"                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_psio_group.sv"]\"  -work altera_abstract_uib_191"                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_ptr_gen.sv"]\"  -work altera_abstract_uib_191"                                       
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_read_fifo.sv"]\"  -work altera_abstract_uib_191"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_ub48.sv"]\"  -work altera_abstract_uib_191"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_ufi_adapter.sv"]\"  -work altera_abstract_uib_191"                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_amm_1x_bridge.sv"]\"  -work altera_abstract_uib_191"                                              
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_abstract_uib_uib.sv"]\"  -work altera_abstract_uib_191"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_arch_nd4h_ufi.sv"]\"  -work altera_abstract_uib_191"                                          
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_arch_nd4h_uib_io_phy.sv"]\"  -work altera_abstract_uib_191"                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_arch_nd_buf_udir_se_i.sv"]\"  -work altera_abstract_uib_191"                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_arch_nd_bufs.sv"]\"  -work altera_abstract_uib_191"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_arch_nd_buf_udir_se_o.sv"]\"  -work altera_abstract_uib_191"                                  
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_arch_nd_hbmc.sv"]\"  -work altera_abstract_uib_191"                                           
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_arch_nd_cpa.sv"]\"  -work altera_abstract_uib_191"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_arch_nd_pll_fast_sim.sv"]\"  -work altera_abstract_uib_191"                                   
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_arch_nd_ufi.sv"]\"  -work altera_abstract_uib_191"                                            
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_arch_nd_uib_io_phy.sv"]\"  -work altera_abstract_uib_191"                                     
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_abstract_uib_191/sim/mentor/altera_hbm_c2p_lcells.sv"]\"  -work altera_abstract_uib_191"                                             
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avl_ufi_adapter_2240/sim/mentor/altera_avl_ufi_monitor.sv"]\"  -work altera_avl_ufi_adapter_2240"                                    
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avl_ufi_adapter_2240/sim/mentor/altera_avl_ufi_read_aligner.sv"]\"  -work altera_avl_ufi_adapter_2240"                               
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avl_ufi_adapter_2240/sim/mentor/altera_avl_ufi_soft_logic.sv"]\"  -work altera_avl_ufi_adapter_2240"                                 
    lappend design_files "vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_avl_ufi_adapter_2240/sim/mentor/altera_avl_ufi_adapter.sv"]\"  -work altera_avl_ufi_adapter_2240"                                    
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/../altera_hbm_1961/sim/qsys_top_hbm_0_altera_hbm_1961_uzzthcq.v"]\"  -work altera_hbm_1961"                                                        
    lappend design_files "vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS  \"[normalize_path "$QSYS_SIMDIR/qsys_top_hbm_0.v"]\"  -work qsys_top_hbm_0"                                                                                                        
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
}
