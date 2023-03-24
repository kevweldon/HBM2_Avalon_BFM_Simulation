source [file join [file dirname [info script]] ./../../../ip/ed_sim/ed_sim_hbm_only_reset_source/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/ed_sim/ed_sim_mem/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/ed_synth/ed_synth_reset_release_ip/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/ed_synth/ed_synth_tg0_1/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/ed_sim/ed_sim_ref_clk_source/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/ed_synth/ed_synth_tg0_0/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/ed_sim/ed_sim_global_reset_n_source/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/ed_synth/ed_synth_hbm_0_example_design/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/ed_sim/ed_sim_core_clk_source/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/ed_sim/ed_sim_sim_checker/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/ed_synth/ed_synth_ninit_done_splitter/sim/common/vcs_files.tcl]
source [file join [file dirname [info script]] ./../../../ip/ed_synth/ed_synth_core_clk_iopll/sim/common/vcs_files.tcl]

namespace eval ed_sim {
  proc get_memory_files {QSYS_SIMDIR} {
    set memory_files [list]
    set memory_files [concat $memory_files [ed_sim_hbm_only_reset_source::get_memory_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_hbm_only_reset_source/sim/"]]
    set memory_files [concat $memory_files [ed_sim_mem::get_memory_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_mem/sim/"]]
    set memory_files [concat $memory_files [ed_synth_reset_release_ip::get_memory_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_reset_release_ip/sim/"]]
    set memory_files [concat $memory_files [ed_synth_tg0_1::get_memory_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_tg0_1/sim/"]]
    set memory_files [concat $memory_files [ed_sim_ref_clk_source::get_memory_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_ref_clk_source/sim/"]]
    set memory_files [concat $memory_files [ed_synth_tg0_0::get_memory_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_tg0_0/sim/"]]
    set memory_files [concat $memory_files [ed_sim_global_reset_n_source::get_memory_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_global_reset_n_source/sim/"]]
    set memory_files [concat $memory_files [ed_synth_hbm_0_example_design::get_memory_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_hbm_0_example_design/sim/"]]
    set memory_files [concat $memory_files [ed_sim_core_clk_source::get_memory_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_core_clk_source/sim/"]]
    set memory_files [concat $memory_files [ed_sim_sim_checker::get_memory_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_sim_checker/sim/"]]
    set memory_files [concat $memory_files [ed_synth_ninit_done_splitter::get_memory_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_ninit_done_splitter/sim/"]]
    set memory_files [concat $memory_files [ed_synth_core_clk_iopll::get_memory_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_core_clk_iopll/sim/"]]
    return $memory_files
  }
  
  proc get_common_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [ed_sim_hbm_only_reset_source::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_hbm_only_reset_source/sim/"]]
    set design_files [dict merge $design_files [ed_sim_mem::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_mem/sim/"]]
    set design_files [dict merge $design_files [ed_synth_reset_release_ip::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_reset_release_ip/sim/"]]
    set design_files [dict merge $design_files [ed_synth_tg0_1::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_tg0_1/sim/"]]
    set design_files [dict merge $design_files [ed_sim_ref_clk_source::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_ref_clk_source/sim/"]]
    set design_files [dict merge $design_files [ed_synth_tg0_0::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_tg0_0/sim/"]]
    set design_files [dict merge $design_files [ed_sim_global_reset_n_source::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_global_reset_n_source/sim/"]]
    set design_files [dict merge $design_files [ed_synth_hbm_0_example_design::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_hbm_0_example_design/sim/"]]
    set design_files [dict merge $design_files [ed_sim_core_clk_source::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_core_clk_source/sim/"]]
    set design_files [dict merge $design_files [ed_sim_sim_checker::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_sim_checker/sim/"]]
    set design_files [dict merge $design_files [ed_synth_ninit_done_splitter::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_ninit_done_splitter/sim/"]]
    set design_files [dict merge $design_files [ed_synth_core_clk_iopll::get_common_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_core_clk_iopll/sim/"]]
    return $design_files
  }
  
  proc get_design_files {QSYS_SIMDIR} {
    set design_files [dict create]
    set design_files [dict merge $design_files [ed_sim_hbm_only_reset_source::get_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_hbm_only_reset_source/sim/"]]
    set design_files [dict merge $design_files [ed_sim_mem::get_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_mem/sim/"]]
    set design_files [dict merge $design_files [ed_synth_reset_release_ip::get_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_reset_release_ip/sim/"]]
    set design_files [dict merge $design_files [ed_synth_tg0_1::get_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_tg0_1/sim/"]]
    set design_files [dict merge $design_files [ed_sim_ref_clk_source::get_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_ref_clk_source/sim/"]]
    set design_files [dict merge $design_files [ed_synth_tg0_0::get_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_tg0_0/sim/"]]
    set design_files [dict merge $design_files [ed_sim_global_reset_n_source::get_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_global_reset_n_source/sim/"]]
    set design_files [dict merge $design_files [ed_synth_hbm_0_example_design::get_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_hbm_0_example_design/sim/"]]
    set design_files [dict merge $design_files [ed_sim_core_clk_source::get_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_core_clk_source/sim/"]]
    set design_files [dict merge $design_files [ed_sim_sim_checker::get_design_files "$QSYS_SIMDIR/../../ip/ed_sim/ed_sim_sim_checker/sim/"]]
    set design_files [dict merge $design_files [ed_synth_ninit_done_splitter::get_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_ninit_done_splitter/sim/"]]
    set design_files [dict merge $design_files [ed_synth_core_clk_iopll::get_design_files "$QSYS_SIMDIR/../../ip/ed_synth/ed_synth_core_clk_iopll/sim/"]]
    dict set design_files "ed_sim.v" "$QSYS_SIMDIR/ed_sim.v"
    return $design_files
  }
  
  proc get_elab_options {SIMULATOR_TOOL_BITNESS} {
    set ELAB_OPTIONS ""
    append ELAB_OPTIONS [ed_sim_hbm_only_reset_source::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ed_sim_mem::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ed_synth_reset_release_ip::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ed_synth_tg0_1::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ed_sim_ref_clk_source::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ed_synth_tg0_0::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ed_sim_global_reset_n_source::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ed_synth_hbm_0_example_design::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ed_sim_core_clk_source::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ed_sim_sim_checker::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ed_synth_ninit_done_splitter::get_elab_options $SIMULATOR_TOOL_BITNESS]
    append ELAB_OPTIONS [ed_synth_core_clk_iopll::get_elab_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ELAB_OPTIONS
  }
  
  
  proc get_sim_options {SIMULATOR_TOOL_BITNESS} {
    set SIM_OPTIONS ""
    append SIM_OPTIONS [ed_sim_hbm_only_reset_source::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ed_sim_mem::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ed_synth_reset_release_ip::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ed_synth_tg0_1::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ed_sim_ref_clk_source::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ed_synth_tg0_0::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ed_sim_global_reset_n_source::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ed_synth_hbm_0_example_design::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ed_sim_core_clk_source::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ed_sim_sim_checker::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ed_synth_ninit_done_splitter::get_sim_options $SIMULATOR_TOOL_BITNESS]
    append SIM_OPTIONS [ed_synth_core_clk_iopll::get_sim_options $SIMULATOR_TOOL_BITNESS]
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $SIM_OPTIONS
  }
  
  
  proc get_env_variables {SIMULATOR_TOOL_BITNESS} {
    set ENV_VARIABLES [dict create]
    set LD_LIBRARY_PATH [dict create]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_sim_hbm_only_reset_source::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_sim_mem::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_synth_reset_release_ip::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_synth_tg0_1::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_sim_ref_clk_source::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_synth_tg0_0::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_sim_global_reset_n_source::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_synth_hbm_0_example_design::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_sim_core_clk_source::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_sim_sim_checker::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_synth_ninit_done_splitter::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    set LD_LIBRARY_PATH [dict merge $LD_LIBRARY_PATH [dict get [ed_synth_core_clk_iopll::get_env_variables $SIMULATOR_TOOL_BITNESS] "LD_LIBRARY_PATH"]]
    dict set ENV_VARIABLES "LD_LIBRARY_PATH" $LD_LIBRARY_PATH
    if ![ string match "bit_64" $SIMULATOR_TOOL_BITNESS ] {
    } else {
    }
    return $ENV_VARIABLES
  }
  
  
}
