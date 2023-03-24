module ed_synth (
		input  wire       core_clk_iopll_ref_clk_clk,               //           core_clk_iopll_ref_clk.clk
		input  wire       core_clk_iopll_reset_reset,               //             core_clk_iopll_reset.reset
		input  wire       hbm_0_example_design_pll_ref_clk_clk,     // hbm_0_example_design_pll_ref_clk.clk
		input  wire       hbm_0_example_design_wmcrst_n_in_reset_n, // hbm_0_example_design_wmcrst_n_in.reset_n
		input  wire       hbm_only_reset_in_reset,                  //                hbm_only_reset_in.reset
		input  wire       m2u_bridge_cattrip,                       //                       m2u_bridge.cattrip
		input  wire [2:0] m2u_bridge_temp,                          //                                 .temp
		input  wire [7:0] m2u_bridge_wso,                           //                                 .wso
		output wire       m2u_bridge_reset_n,                       //                                 .reset_n
		output wire       m2u_bridge_wrst_n,                        //                                 .wrst_n
		output wire       m2u_bridge_wrck,                          //                                 .wrck
		output wire       m2u_bridge_shiftwr,                       //                                 .shiftwr
		output wire       m2u_bridge_capturewr,                     //                                 .capturewr
		output wire       m2u_bridge_updatewr,                      //                                 .updatewr
		output wire       m2u_bridge_selectwir,                     //                                 .selectwir
		output wire       m2u_bridge_wsi,                           //                                 .wsi
		output wire       tg0_0_status_traffic_gen_pass,            //                     tg0_0_status.traffic_gen_pass
		output wire       tg0_0_status_traffic_gen_fail,            //                                 .traffic_gen_fail
		output wire       tg0_0_status_traffic_gen_timeout,         //                                 .traffic_gen_timeout
		output wire       tg0_1_status_traffic_gen_pass,            //                     tg0_1_status.traffic_gen_pass
		output wire       tg0_1_status_traffic_gen_fail,            //                                 .traffic_gen_fail
		output wire       tg0_1_status_traffic_gen_timeout          //                                 .traffic_gen_timeout
	);
endmodule

