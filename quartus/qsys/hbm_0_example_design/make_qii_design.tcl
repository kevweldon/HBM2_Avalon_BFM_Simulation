# (C) 2001-2022 Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions and other 
# software and tools, and its AMPP partner logic functions, and any output 
# files from any of the foregoing (including device programming or simulation 
# files), and any associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License Subscription 
# Agreement, Intel FPGA IP License Agreement, or other applicable 
# license agreement, including, without limitation, that your use is for the 
# sole purpose of programming logic devices manufactured by Intel and sold by 
# Intel or its authorized distributors.  Please refer to the applicable 
# agreement for further details.



proc error_and_exit {msg} {
   post_message -type error "SCRIPT_ABORTED!!!"
   foreach line [split $msg "\n"] {
      post_message -type error $line
   }
   qexit -error
}

proc show_usage_and_exit {argv0} {
   post_message -type error  "USAGE: $argv0 \[device_name\]"
   qexit -error
}

proc ls_recursive {base glob} {
    set files [list]

    foreach f [glob -nocomplain -types f -directory $base $glob] {
        set file_path [file join $base $f]
        lappend files $file_path
    }

    foreach d [glob -nocomplain -types d -directory $base *] {
        set files_recursive [ls_recursive [file join $base $d] $glob]
        lappend files {*}$files_recursive
    }

    return $files
}

proc get_relative_path {base path} {
    return [string trimleft [ string range $path [string length $base] [string length $path] ] "/"]
}

proc deep_copy {ifn ofn} {
   set ifh       [open $ifn r]
   set ofh       [open $ofn w]

   fconfigure $ifh -translation binary
   fconfigure $ofh -translation binary

   set blob [read $ifh]
   puts -nonewline $ofh $blob

   close $ofh
   close $ifh
}

set argv0 "quartus_sh -t [info script]"
set args $quartus(args)

if {[llength $args] == 1 } {
   set force_device [string toupper [string trim [lindex $args 0]]]
} else {
   set force_device ""
}

if {[llength $args] > 1} {
   show_usage_and_exit $argv0
}

if {[string compare -nocase $quartus(nameofexecutable) "quartus"] == 0} {
   set gui_mode 1
} else {
   set gui_mode 0
}

set script_path [file dirname [file normalize [info script]]]

source "$script_path/params.tcl"

if {[is_project_open]} {

   set curr_family [get_global_assignment -name FAMILY]
   if {[string compare -nocase $curr_family $ip_params(SYS_INFO_DEVICE_FAMILY)] == 0} {
      if {$force_device == ""} {
         set force_device [get_global_assignment -name DEVICE]
      }
   }

   post_message "Closing currently opened project..."
   project_close
}


set system_name            $ed_params(SYNTH_QSYS_NAME)
set ex_design_path         "$script_path/qii"
set qsys_file              "${system_name}.qsys"
set family                 $ip_params(SYS_INFO_DEVICE_FAMILY)
set issp_en                $ip_params(DIAG_EX_DESIGN_ISSP_EN)
set asic_mode              $ip_params(ASIC_MODE)
set axi_switch_logiclock   $ip_params(PHY_AXI_SWITCH_LOGICLOCK)
set phy_c2p_rate           $ip_params(PHY_C2P_RATE_ENUM)
set tg_eff_en              $ip_params(TG_USE_EFFICIENCY_PATTERN)
set tg_eff_data_check_en   $ip_params(DIAG_TG_EFF_DATA_CHECK_EN)


if {$force_device == ""} {
   set device $ed_params(DEFAULT_DEVICE)
} else {
   set device $force_device
}

post_message " "
post_message "*************************************************************************"
post_message "Altera HBM IP Example Design Builder"
post_message " "
post_message "Type  : Quartus Prime Project"
post_message "Family: $family"
post_message "Device: $device"
post_message " "
post_message "This script takes ~1 minute to execute..."
post_message "*************************************************************************"
post_message " "

if {[file isdirectory $ex_design_path]} {
   error_and_exit "Directory $ex_design_path has already been generated.\nThis script cannot overwrite generated example designs.\nIf you would like to regenerate the design by re-running the script, please remove the directory."
}

file mkdir $ex_design_path
file copy -force "${script_path}/$qsys_file" "${ex_design_path}/$qsys_file"

if {[file exists "${script_path}/quartus.ini"]} {
   file copy -force "${script_path}/quartus.ini" "${ex_design_path}/quartus.ini"
}

file copy -force "${script_path}/ip" "${ex_design_path}"

deep_copy "$::env(QUARTUS_ROOTDIR)/../ip/altera/hbm/ip_top/ex_design/jtag_example.sdc" "${ex_design_path}/jtag_example.sdc"

post_message "Generating example design files..."

set ip_generate_exe_path "$::env(QUARTUS_ROOTDIR)/sopc_builder/bin/qsys-generate"

cd $ex_design_path
exec -ignorestderr $ip_generate_exe_path --pro --synthesis=VERILOG --part=$device $qsys_file >>& ip_generate.out

file delete -force ip_generate.out

cd $ex_design_path
if {[file exists "${script_path}/quartus.ini"]} {
   file copy -force "${script_path}/quartus.ini" "${ex_design_path}/quartus.ini"
}
post_message "Creating Quartus Prime project..."
project_new -family $family -part $device $system_name
set_global_assignment -name QSYS_FILE "${system_name}.qsys"
if {$issp_en} {
   set_global_assignment -name VERILOG_MACRO "\"ALTERA_EMIF_ENABLE_ISSP=1\""
}
foreach ip_file [ls_recursive "${ex_design_path}/ip/ed_synth" "*.ip"] {
    set ip_file [get_relative_path $ex_design_path $ip_file]
    set_global_assignment -name PBIP_FILE $ip_file
}

set_global_assignment -name SDC_FILE jtag_example.sdc

set_global_assignment -name SAFE_STATE_MACHINE -entity ${system_name} NEVER

if {$asic_mode} {
  set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to *asic_mode_ip_phylite_ref_clk_lcell_clk
  set_location_assignment PIN_AN54 -to dut_example_design_phylite_ref_clk_clk
}

for {set i 0} {$i < 8} {incr i} {
    if {$ip_params(HARD_CTRL_CH${i}_CFG_USER_DATA_WIDTH) == "B288"} {
        set user_data_en_${i} 1
    } else {
        set user_data_en_${i} 0
    }
}

if {$user_data_en_0 || $user_data_en_1} {
    set switch_usr_data_en(0) 1
} else {
    set switch_usr_data_en(0) 0
}
if {$user_data_en_2 || $user_data_en_3} {
    set switch_usr_data_en(1) 1
} else {
    set switch_usr_data_en(1) 0
} 
if {$user_data_en_4 || $user_data_en_5} {
    set switch_usr_data_en(2) 1
} else {
    set switch_usr_data_en(2) 0
} 
if {$user_data_en_6 || $user_data_en_7} {
    set switch_usr_data_en(3) 1
} else {
    set switch_usr_data_en(3) 0
} 

for {set i 0} {$i < 4} {incr i} {
    if {$ip_params(PHY_AXI_SWITCH_${i}_EN) == "true"} {
        if {$phy_c2p_rate == "RATE_HALF"} {
            if {$switch_usr_data_en($i)} {
                set_instance_assignment -name MESSAGE_DISABLE 14320 -to *axi_switch_${i}*rdata_scfifo_wrap_inst*altera_syncram_impl1*q_b[266] -entity ed_synth
            }
        } else {
            if {$switch_usr_data_en($i)} {
                set_instance_assignment -name MESSAGE_DISABLE 14320 -to *axi_switch_${i}*rdata_scfifo_wrap_inst*altera_syncram_impl1*q_b[138] -entity ed_synth
            }
        }
    }
}


for {set i 0} {$i < 4} {incr i} {
    if {$ip_params(PHY_AXI_SWITCH_${i}_EN) == "true"} {
        set_instance_assignment -name MESSAGE_DISABLE 14320 -to *axi_switch_${i}*bresp_scfifo_wrap_inst*altera_syncram_impl1*q_b* -entity ed_synth
        if {$tg_eff_en && $tg_eff_data_check_en} {
            set_instance_assignment -name MESSAGE_DISABLE 14320 -to *axi_switch_${i}*rdata_scfifo_wrap_inst*altera_syncram_impl1*q_b[1] -entity ed_synth
            set_instance_assignment -name MESSAGE_DISABLE 14320 -to *axi_switch_${i}*rdata_scfifo_wrap_inst*altera_syncram_impl1*q_b[2] -entity ed_synth
        } else {
            set_instance_assignment -name MESSAGE_DISABLE 14320 -to *axi_switch_${i}*rdata_scfifo_wrap_inst*altera_syncram_impl1*q_b[0] -entity ed_synth
            set_instance_assignment -name MESSAGE_DISABLE 14320 -to *axi_switch_${i}*rdata_scfifo_wrap_inst*altera_syncram_impl1*q_b[1] -entity ed_synth
            set_instance_assignment -name MESSAGE_DISABLE 14320 -to *axi_switch_${i}*rdata_scfifo_wrap_inst*altera_syncram_impl1*q_b[2] -entity ed_synth

            if {$phy_c2p_rate == "RATE_HALF"} {
                for {set j 259} {$j < 266} {incr j} {
                    set_instance_assignment -name MESSAGE_DISABLE 14320 -to *axi_switch_${i}*rdata_scfifo_wrap_inst*altera_syncram_impl1*q_b[${j}] -entity ed_synth
                }
            } else {
                for {set j 131} {$j < 138} {incr j} {
                    set_instance_assignment -name MESSAGE_DISABLE 14320 -to *axi_switch_${i}*rdata_scfifo_wrap_inst*altera_syncram_impl1*q_b[${j}] -entity ed_synth
                }
            }
        }       
    }
}



if {$axi_switch_logiclock} {
    set inst_0_x_coord [list 100 144]
    set inst_1_x_coord [list 235 277]
    set inst_2_x_coord [list 145 188]
    set inst_3_x_coord [list 190 234]

    set top_sa_y_coord [list 281 291]
    set top_as_y_coord [list 244 280]

    set bot_as_y_coord [list 15 51]
    set bot_sa_y_coord [list  4 14]

    set routing_expansion 0

    set inst_0_x_rcoord [list [expr [lindex $inst_0_x_coord 0] - $routing_expansion] [expr [lindex $inst_0_x_coord 1] + $routing_expansion]]
    set inst_1_x_rcoord [list [expr [lindex $inst_1_x_coord 0] - $routing_expansion] [expr [lindex $inst_1_x_coord 1] + $routing_expansion]]
    set inst_2_x_rcoord [list [expr [lindex $inst_2_x_coord 0] - $routing_expansion] [expr [lindex $inst_2_x_coord 1] + $routing_expansion]]
    set inst_3_x_rcoord [list [expr [lindex $inst_3_x_coord 0] - $routing_expansion] [expr [lindex $inst_3_x_coord 1] + $routing_expansion]]

    set top_as_y_rcoord [list [expr [lindex $top_as_y_coord 0] - $routing_expansion] [expr [lindex $top_as_y_coord 1] + $routing_expansion]]
    set top_sa_y_rcoord [list [expr [lindex $top_sa_y_coord 0] - $routing_expansion] [expr [lindex $top_sa_y_coord 1] + $routing_expansion]]

    set bot_as_y_rcoord [list [expr [lindex $bot_as_y_coord 0] - $routing_expansion] [expr [lindex $bot_as_y_coord 1] + $routing_expansion]]
    set bot_sa_y_rcoord [list [expr [lindex $bot_sa_y_coord 0] - $routing_expansion] [expr [lindex $bot_sa_y_coord 1] + $routing_expansion]]

    set loc [string tolower $ip_params(PHY_HBM_LOCATION)]
    set sw_list [list]
    for {set i 0} {$i < 4} {incr i} {
        if {$ip_params(PHY_AXI_SWITCH_${i}_EN) == "true"} {
            lappend sw_list $i
        }
    }

    set hbm_name $ed_params(HBM_NAME)

    set coord "-1"
    set region_name "-1"

    foreach ch $sw_list {

        set coord "X[lindex [set inst_${ch}_x_coord] 0] Y[lindex [set ${loc}_as_y_coord] 0] X[lindex [set inst_${ch}_x_coord] 1] Y[lindex [set ${loc}_as_y_coord] 1]"
        set rcoord "X[lindex [set inst_${ch}_x_rcoord] 0] Y[lindex [set ${loc}_as_y_rcoord] 0] X[lindex [set inst_${ch}_x_rcoord] 1] Y[lindex [set ${loc}_as_y_rcoord] 1]"
        set region_name "AxiSwitch_[string toupper $loc]_${ch}"

        lappend chnl_${loc}_${ch} [list ${hbm_name}|${hbm_name}|axi_switch_${ch} $coord ON 1 $rcoord OFF $region_name]

        set coord "-1"
        set region_name "-1"

        set coord "X[lindex [set inst_${ch}_x_coord] 0] Y[lindex [set ${loc}_sa_y_coord] 0] X[lindex [set inst_${ch}_x_coord] 1] Y[lindex [set ${loc}_sa_y_coord] 1]"
        set rcoord "X[lindex [set inst_${ch}_x_rcoord] 0] Y[lindex [set ${loc}_sa_y_rcoord] 0] X[lindex [set inst_${ch}_x_rcoord] 1] Y[lindex [set ${loc}_sa_y_rcoord] 1]"
        set region_name "SoftAdapter_[string toupper $loc]_${ch}"

        foreach pcidx {0 1 2 3} {
            lappend chnl_${loc}_${ch} [list ${hbm_name}|${hbm_name}|axi_ufi_adpt_${ch}|half_rate.read_aligner_inst_${pcidx} $coord OFF 1 $rcoord OFF $region_name]
            lappend chnl_${loc}_${ch} [list ${hbm_name}|${hbm_name}|axi_ufi_adpt_${ch}|soft_logic_${pcidx} $coord OFF 1 $rcoord OFF $region_name]
        }
    }

    foreach ch $sw_list {
        foreach items [set chnl_${loc}_${ch}] {

            set inst_hier [lindex $items 0]
            set coordinate [lindex $items 1]


            set reserve_place [lindex $items 2]
            set set_route_coord [lindex $items 3]
            set rcoordinate [lindex $items 4]
            set reserve_route [lindex $items 5]
            set region_name [lindex $items 6]

            set_instance_assignment -name PLACE_REGION $coordinate -to $inst_hier -tag update_logiclock
            set_instance_assignment -name RESERVE_PLACE_REGION $reserve_place -to $inst_hier -tag update_logiclock
            set_instance_assignment -name CORE_ONLY_PLACE_REGION ON -to $inst_hier -tag update_logiclock
            if {$set_route_coord == 1} {
                set_instance_assignment -name ROUTE_REGION $rcoordinate -to $inst_hier -tag update_logiclock
                set_instance_assignment -name RESERVE_ROUTE_REGION $reserve_route -to $inst_hier -tag update_logiclock
            }
            set_instance_assignment -name REGION_NAME $region_name -to $inst_hier -tag update_logiclock
        }
    }
}

project_close

if {$gui_mode} {
   project_open $system_name
}

post_message " "
post_message "*************************************************************************"
post_message "Successfully generated example design at the following location:"
post_message " "
post_message "   $ex_design_path"
post_message " "
post_message "*************************************************************************"
post_message " "
