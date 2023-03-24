
proc get_memory_files {QSYS_SIMDIR} {
  set memory_files [list]
  lappend memory_files "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_seq_params_sim.hex"
  lappend memory_files "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_uibssm_sim.hex"
  lappend memory_files "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_seq_params_synth.hex"
  lappend memory_files "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_uibssm_synth.hex"
  return $memory_files
}

proc get_common_design_files {QSYS_SIMDIR} {
  set design_files [dict create]
  dict set design_files "null::avalon_vip_verbosity_pkg"        "$QSYS_SIMDIR/../qsys/ip/qsys_top/ch_0_0_master/altera_avalon_mm_master_bfm_191/sim/verbosity_pkg.sv"       
  dict set design_files "null::avalon_vip_avalon_mm_pkg"        "$QSYS_SIMDIR/../qsys/ip/qsys_top/ch_0_0_master/altera_avalon_mm_master_bfm_191/sim/avalon_mm_pkg.sv"       
  dict set design_files "null::avalon_vip_avalon_utilities_pkg" "$QSYS_SIMDIR/../qsys/ip/qsys_top/ch_0_0_master/altera_avalon_mm_master_bfm_191/sim/avalon_utilities_pkg.sv"
  return $design_files
}

proc get_design_files {QSYS_SIMDIR} {
  set design_files [dict create]
  dict set design_files "qsys_top_hbm_0_altera_iopll_1931_vubauri.vo"                                "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_iopll_1931/sim/qsys_top_hbm_0_altera_iopll_1931_vubauri.vo"                                       
  dict set design_files "stratix10_altera_iopll.v"                                                   "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_iopll_1931/sim/stratix10_altera_iopll.v"                                                          
  dict set design_files "qsys_top_hbm_0_altera_abstract_uib_altera_iopll_191_oqrzszi.v"              "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_altera_iopll_191_oqrzszi.v"               
  dict set design_files "altera_hbm_arch_nd_pll_qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly.sv"   "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/rtl/altera_hbm_arch_nd_pll_qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly.sv"
  dict set design_files "qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_top.sv"                      "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_top.sv"                       
  dict set design_files "qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_uibssm.sv"                   "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly_uibssm.sv"                    
  dict set design_files "qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly.sv"                          "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/qsys_top_hbm_0_altera_abstract_uib_191_g5e7tly.sv"                           
  dict set design_files "altera_abstract_uib_reset_sync.v"                                           "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_reset_sync.v"                                   
  dict set design_files "altera_clkbuf.v"                                                            "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_clkbuf.v"                                                    
  dict set design_files "altera_hbm_reset_sequencer.v"                                               "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_reset_sequencer.v"                                       
  dict set design_files "altera_reset_debounce.v"                                                    "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_reset_debounce.v"                                            
  dict set design_files "altera_two_one_mux.v"                                                       "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_two_one_mux.v"                                               
  dict set design_files "altera_two_one_obdatamux.v"                                                 "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_two_one_obdatamux.v"                                         
  dict set design_files "altera_ub48slice_ecc_dbi_par.v"                                             "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_ecc_dbi_par.v"                                     
  dict set design_files "altera_ub48slice_ecc.v"                                                     "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_ecc.v"                                             
  dict set design_files "altera_ub48slice_ecc_decoder_64.v"                                          "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_ecc_decoder_64.v"                                  
  dict set design_files "altera_ub48slice_ecc_decoder_64_altecc_decoder.v"                           "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_ecc_decoder_64_altecc_decoder.v"                   
  dict set design_files "altera_ub48slice_ecc_decoder_64_decode.v"                                   "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_ecc_decoder_64_decode.v"                           
  dict set design_files "altera_ub48slice_ecc_encoder_64.v"                                          "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_ecc_encoder_64.v"                                  
  dict set design_files "altera_ub48slice_ecc_encoder_64_altecc_encoder.v"                           "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_ecc_encoder_64_altecc_encoder.v"                   
  dict set design_files "altera_ub48slice_mp_reg.v"                                                  "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_mp_reg.v"                                          
  dict set design_files "altera_ub48slice_parity.v"                                                  "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_parity.v"                                          
  dict set design_files "altera_ub48slice_parity_gen.v"                                              "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_parity_gen.v"                                      
  dict set design_files "altera_ub48slice_rx_parity.v"                                               "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_rx_parity.v"                                       
  dict set design_files "altera_ub48slice_rx_parity_gen.v"                                           "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slice_rx_parity_gen.v"                                   
  dict set design_files "altera_ub48slicedbi.v"                                                      "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slicedbi.v"                                              
  dict set design_files "altera_ub48slicedbi_comparator.v"                                           "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slicedbi_comparator.v"                                   
  dict set design_files "altera_ub48slicedbi_lane.v"                                                 "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_ub48slicedbi_lane.v"                                         
  dict set design_files "altera_abstract_uib_gpio_ms.sv"                                             "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_gpio_ms.sv"                                     
  dict set design_files "altera_abstract_uib_hbm.sv"                                                 "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_hbm.sv"                                         
  dict set design_files "altera_abstract_uib_inph_adpt.sv"                                           "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_inph_adpt.sv"                                   
  dict set design_files "altera_abstract_uib_ms.sv"                                                  "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_ms.sv"                                          
  dict set design_files "altera_abstract_uib_nd4h_uib.sv"                                            "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_nd4h_uib.sv"                                    
  dict set design_files "altera_abstract_uib_outph_adpt.sv"                                          "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_outph_adpt.sv"                                  
  dict set design_files "altera_abstract_uib_outph_adpt_lraj.sv"                                     "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_outph_adpt_lraj.sv"                             
  dict set design_files "altera_abstract_uib_pdio.sv"                                                "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_pdio.sv"                                        
  dict set design_files "altera_abstract_uib_phase_mux.sv"                                           "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_phase_mux.sv"                                   
  dict set design_files "altera_abstract_uib_psio.sv"                                                "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_psio.sv"                                        
  dict set design_files "altera_abstract_uib_phptr_ctrl.sv"                                          "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_phptr_ctrl.sv"                                  
  dict set design_files "altera_abstract_uib_psio_group.sv"                                          "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_psio_group.sv"                                  
  dict set design_files "altera_abstract_uib_ptr_gen.sv"                                             "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_ptr_gen.sv"                                     
  dict set design_files "altera_abstract_uib_read_fifo.sv"                                           "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_read_fifo.sv"                                   
  dict set design_files "altera_abstract_uib_ub48.sv"                                                "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_ub48.sv"                                        
  dict set design_files "altera_abstract_uib_ufi_adapter.sv"                                         "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_ufi_adapter.sv"                                 
  dict set design_files "altera_amm_1x_bridge.sv"                                                    "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_amm_1x_bridge.sv"                                            
  dict set design_files "altera_abstract_uib_uib.sv"                                                 "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_abstract_uib_uib.sv"                                         
  dict set design_files "altera_hbm_arch_nd4h_ufi.sv"                                                "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_arch_nd4h_ufi.sv"                                        
  dict set design_files "altera_hbm_arch_nd4h_uib_io_phy.sv"                                         "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_arch_nd4h_uib_io_phy.sv"                                 
  dict set design_files "altera_hbm_arch_nd_buf_udir_se_i.sv"                                        "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_arch_nd_buf_udir_se_i.sv"                                
  dict set design_files "altera_hbm_arch_nd_bufs.sv"                                                 "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_arch_nd_bufs.sv"                                         
  dict set design_files "altera_hbm_arch_nd_buf_udir_se_o.sv"                                        "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_arch_nd_buf_udir_se_o.sv"                                
  dict set design_files "altera_hbm_arch_nd_hbmc.sv"                                                 "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_arch_nd_hbmc.sv"                                         
  dict set design_files "altera_hbm_arch_nd_cpa.sv"                                                  "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_arch_nd_cpa.sv"                                          
  dict set design_files "altera_hbm_arch_nd_pll_fast_sim.sv"                                         "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_arch_nd_pll_fast_sim.sv"                                 
  dict set design_files "altera_hbm_arch_nd_ufi.sv"                                                  "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_arch_nd_ufi.sv"                                          
  dict set design_files "altera_hbm_arch_nd_uib_io_phy.sv"                                           "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_arch_nd_uib_io_phy.sv"                                   
  dict set design_files "altera_hbm_c2p_lcells.sv"                                                   "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_abstract_uib_191/sim/synopsys/altera_hbm_c2p_lcells.sv"                                           
  dict set design_files "altera_avl_ufi_monitor.sv"                                                  "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_avl_ufi_adapter_2240/sim/synopsys/altera_avl_ufi_monitor.sv"                                      
  dict set design_files "altera_avl_ufi_read_aligner.sv"                                             "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_avl_ufi_adapter_2240/sim/synopsys/altera_avl_ufi_read_aligner.sv"                                 
  dict set design_files "altera_avl_ufi_soft_logic.sv"                                               "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_avl_ufi_adapter_2240/sim/synopsys/altera_avl_ufi_soft_logic.sv"                                   
  dict set design_files "altera_avl_ufi_adapter.sv"                                                  "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_avl_ufi_adapter_2240/sim/synopsys/altera_avl_ufi_adapter.sv"                                      
  dict set design_files "qsys_top_hbm_0_altera_hbm_1961_uzzthcq.v"                                   "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/altera_hbm_1961/sim/qsys_top_hbm_0_altera_hbm_1961_uzzthcq.v"                                            
  dict set design_files "qsys_top_hbm_0.v"                                                           "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_hbm_0/sim/qsys_top_hbm_0.v"                                                                                    
  dict set design_files "qsys_top_iopll_0_altera_iopll_1931_ugekwwq.vo"                              "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_iopll_0/altera_iopll_1931/sim/qsys_top_iopll_0_altera_iopll_1931_ugekwwq.vo"                                   
  dict set design_files "stratix10_altera_iopll.v"                                                   "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_iopll_0/altera_iopll_1931/sim/stratix10_altera_iopll.v"                                                        
  dict set design_files "qsys_top_iopll_0.v"                                                         "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_iopll_0/sim/qsys_top_iopll_0.v"                                                                                
  dict set design_files "altera_avalon_mm_master_bfm.sv"                                             "$QSYS_SIMDIR/../qsys/ip/qsys_top/ch_0_0_master/altera_avalon_mm_master_bfm_191/sim/altera_avalon_mm_master_bfm.sv"                                       
  dict set design_files "ch_0_0_master.v"                                                            "$QSYS_SIMDIR/../qsys/ip/qsys_top/ch_0_0_master/sim/ch_0_0_master.v"                                                                                      
  dict set design_files "qsys_top_reset.v"                                                           "$QSYS_SIMDIR/../qsys/ip/qsys_top/qsys_top_reset/sim/qsys_top_reset.v"                                                                                    
  dict set design_files "qsys_top_altera_merlin_master_translator_191_g7h47bq.sv"                    "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_master_translator_191/sim/qsys_top_altera_merlin_master_translator_191_g7h47bq.sv"                           
  dict set design_files "qsys_top_altera_merlin_slave_translator_191_x56fcki.sv"                     "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_slave_translator_191/sim/qsys_top_altera_merlin_slave_translator_191_x56fcki.sv"                             
  dict set design_files "qsys_top_altera_merlin_master_agent_191_mpbm6tq.sv"                         "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_master_agent_191/sim/qsys_top_altera_merlin_master_agent_191_mpbm6tq.sv"                                     
  dict set design_files "qsys_top_altera_merlin_slave_agent_191_ncfkfri.sv"                          "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_slave_agent_191/sim/qsys_top_altera_merlin_slave_agent_191_ncfkfri.sv"                                       
  dict set design_files "altera_merlin_burst_uncompressor.sv"                                        "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_slave_agent_191/sim/altera_merlin_burst_uncompressor.sv"                                                     
  dict set design_files "qsys_top_altera_avalon_sc_fifo_1931_vhmcgqy.v"                              "$QSYS_SIMDIR/../qsys/qsys_top/altera_avalon_sc_fifo_1931/sim/qsys_top_altera_avalon_sc_fifo_1931_vhmcgqy.v"                                              
  dict set design_files "qsys_top_altera_merlin_router_1921_e3di2yi.sv"                              "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_e3di2yi.sv"                                               
  dict set design_files "qsys_top_altera_merlin_router_1921_mlccsda.sv"                              "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_mlccsda.sv"                                               
  dict set design_files "qsys_top_altera_merlin_router_1921_kkqq5lq.sv"                              "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_kkqq5lq.sv"                                               
  dict set design_files "qsys_top_altera_merlin_router_1921_bi23ntq.sv"                              "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_router_1921/sim/qsys_top_altera_merlin_router_1921_bi23ntq.sv"                                               
  dict set design_files "qsys_top_altera_merlin_traffic_limiter_altera_avalon_sc_fifo_191_w4u5oua.v" "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_traffic_limiter_191/sim/qsys_top_altera_merlin_traffic_limiter_altera_avalon_sc_fifo_191_w4u5oua.v"          
  dict set design_files "altera_merlin_reorder_memory.sv"                                            "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_traffic_limiter_191/sim/altera_merlin_reorder_memory.sv"                                                     
  dict set design_files "altera_avalon_st_pipeline_base.v"                                           "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_traffic_limiter_191/sim/altera_avalon_st_pipeline_base.v"                                                    
  dict set design_files "qsys_top_altera_merlin_traffic_limiter_191_6blplji.sv"                      "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_traffic_limiter_191/sim/qsys_top_altera_merlin_traffic_limiter_191_6blplji.sv"                               
  dict set design_files "qsys_top_altera_merlin_demultiplexer_1921_g5kdmwq.sv"                       "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_demultiplexer_1921/sim/qsys_top_altera_merlin_demultiplexer_1921_g5kdmwq.sv"                                 
  dict set design_files "qsys_top_altera_merlin_demultiplexer_1921_sohe52q.sv"                       "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_demultiplexer_1921/sim/qsys_top_altera_merlin_demultiplexer_1921_sohe52q.sv"                                 
  dict set design_files "qsys_top_altera_merlin_multiplexer_1921_v64yxgq.sv"                         "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/qsys_top_altera_merlin_multiplexer_1921_v64yxgq.sv"                                     
  dict set design_files "altera_merlin_arbitrator.sv"                                                "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"                                                            
  dict set design_files "qsys_top_altera_merlin_multiplexer_1921_wiea3ja.sv"                         "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/qsys_top_altera_merlin_multiplexer_1921_wiea3ja.sv"                                     
  dict set design_files "altera_merlin_arbitrator.sv"                                                "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"                                                            
  dict set design_files "qsys_top_altera_merlin_demultiplexer_1921_ch7epuq.sv"                       "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_demultiplexer_1921/sim/qsys_top_altera_merlin_demultiplexer_1921_ch7epuq.sv"                                 
  dict set design_files "qsys_top_altera_merlin_multiplexer_1921_5b2cani.sv"                         "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/qsys_top_altera_merlin_multiplexer_1921_5b2cani.sv"                                     
  dict set design_files "altera_merlin_arbitrator.sv"                                                "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"                                                            
  dict set design_files "qsys_top_altera_merlin_multiplexer_1921_dzszuiq.sv"                         "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/qsys_top_altera_merlin_multiplexer_1921_dzszuiq.sv"                                     
  dict set design_files "altera_merlin_arbitrator.sv"                                                "$QSYS_SIMDIR/../qsys/qsys_top/altera_merlin_multiplexer_1921/sim/altera_merlin_arbitrator.sv"                                                            
  dict set design_files "qsys_top_altera_mm_interconnect_1920_5dafona.v"                             "$QSYS_SIMDIR/../qsys/qsys_top/altera_mm_interconnect_1920/sim/qsys_top_altera_mm_interconnect_1920_5dafona.v"                                            
  dict set design_files "altera_reset_controller.v"                                                  "$QSYS_SIMDIR/../qsys/qsys_top/altera_reset_controller_1921/sim/altera_reset_controller.v"                                                                
  dict set design_files "altera_reset_synchronizer.v"                                                "$QSYS_SIMDIR/../qsys/qsys_top/altera_reset_controller_1921/sim/altera_reset_synchronizer.v"                                                              
  dict set design_files "qsys_top.v"                                                                 "$QSYS_SIMDIR/../qsys/qsys_top/sim/qsys_top.v"                                                                                                            
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


