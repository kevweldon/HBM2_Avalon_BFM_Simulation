	ed_synth u0 (
		.core_clk_iopll_ref_clk_clk               (_connected_to_core_clk_iopll_ref_clk_clk_),               //   input,  width = 1,           core_clk_iopll_ref_clk.clk
		.core_clk_iopll_reset_reset               (_connected_to_core_clk_iopll_reset_reset_),               //   input,  width = 1,             core_clk_iopll_reset.reset
		.hbm_0_example_design_pll_ref_clk_clk     (_connected_to_hbm_0_example_design_pll_ref_clk_clk_),     //   input,  width = 1, hbm_0_example_design_pll_ref_clk.clk
		.hbm_0_example_design_wmcrst_n_in_reset_n (_connected_to_hbm_0_example_design_wmcrst_n_in_reset_n_), //   input,  width = 1, hbm_0_example_design_wmcrst_n_in.reset_n
		.hbm_only_reset_in_reset                  (_connected_to_hbm_only_reset_in_reset_),                  //   input,  width = 1,                hbm_only_reset_in.reset
		.m2u_bridge_cattrip                       (_connected_to_m2u_bridge_cattrip_),                       //   input,  width = 1,                       m2u_bridge.cattrip
		.m2u_bridge_temp                          (_connected_to_m2u_bridge_temp_),                          //   input,  width = 3,                                 .temp
		.m2u_bridge_wso                           (_connected_to_m2u_bridge_wso_),                           //   input,  width = 8,                                 .wso
		.m2u_bridge_reset_n                       (_connected_to_m2u_bridge_reset_n_),                       //  output,  width = 1,                                 .reset_n
		.m2u_bridge_wrst_n                        (_connected_to_m2u_bridge_wrst_n_),                        //  output,  width = 1,                                 .wrst_n
		.m2u_bridge_wrck                          (_connected_to_m2u_bridge_wrck_),                          //  output,  width = 1,                                 .wrck
		.m2u_bridge_shiftwr                       (_connected_to_m2u_bridge_shiftwr_),                       //  output,  width = 1,                                 .shiftwr
		.m2u_bridge_capturewr                     (_connected_to_m2u_bridge_capturewr_),                     //  output,  width = 1,                                 .capturewr
		.m2u_bridge_updatewr                      (_connected_to_m2u_bridge_updatewr_),                      //  output,  width = 1,                                 .updatewr
		.m2u_bridge_selectwir                     (_connected_to_m2u_bridge_selectwir_),                     //  output,  width = 1,                                 .selectwir
		.m2u_bridge_wsi                           (_connected_to_m2u_bridge_wsi_),                           //  output,  width = 1,                                 .wsi
		.tg0_0_status_traffic_gen_pass            (_connected_to_tg0_0_status_traffic_gen_pass_),            //  output,  width = 1,                     tg0_0_status.traffic_gen_pass
		.tg0_0_status_traffic_gen_fail            (_connected_to_tg0_0_status_traffic_gen_fail_),            //  output,  width = 1,                                 .traffic_gen_fail
		.tg0_0_status_traffic_gen_timeout         (_connected_to_tg0_0_status_traffic_gen_timeout_),         //  output,  width = 1,                                 .traffic_gen_timeout
		.tg0_1_status_traffic_gen_pass            (_connected_to_tg0_1_status_traffic_gen_pass_),            //  output,  width = 1,                     tg0_1_status.traffic_gen_pass
		.tg0_1_status_traffic_gen_fail            (_connected_to_tg0_1_status_traffic_gen_fail_),            //  output,  width = 1,                                 .traffic_gen_fail
		.tg0_1_status_traffic_gen_timeout         (_connected_to_tg0_1_status_traffic_gen_timeout_)          //  output,  width = 1,                                 .traffic_gen_timeout
	);

