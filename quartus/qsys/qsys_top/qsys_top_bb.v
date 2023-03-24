module qsys_top (
		input  wire         hbm_top_pll_ref_clk_clk,          //       hbm_top_pll_ref_clk.clk
		input  wire         hbm_top_wmcrst_n_in_reset_n,      //       hbm_top_wmcrst_n_in.reset_n
		input  wire         hbm_top_hbm_only_reset_in_reset,  // hbm_top_hbm_only_reset_in.reset
		output wire         hbm_top_status_local_cal_success, //            hbm_top_status.local_cal_success
		output wire         hbm_top_status_local_cal_fail,    //                          .local_cal_fail
		output wire         mem_0_ck_t,                       //                     mem_0.ck_t
		output wire         mem_0_ck_c,                       //                          .ck_c
		output wire         mem_0_cke,                        //                          .cke
		output wire [7:0]   mem_0_c,                          //                          .c
		output wire [5:0]   mem_0_r,                          //                          .r
		inout  wire [127:0] mem_0_dq,                         //                          .dq
		inout  wire [15:0]  mem_0_dm,                         //                          .dm
		inout  wire [15:0]  mem_0_dbi,                        //                          .dbi
		inout  wire [3:0]   mem_0_par,                        //                          .par
		inout  wire [3:0]   mem_0_derr,                       //                          .derr
		input  wire [3:0]   mem_0_rdqs_t,                     //                          .rdqs_t
		input  wire [3:0]   mem_0_rdqs_c,                     //                          .rdqs_c
		output wire [3:0]   mem_0_wdqs_t,                     //                          .wdqs_t
		output wire [3:0]   mem_0_wdqs_c,                     //                          .wdqs_c
		inout  wire [7:0]   mem_0_rd,                         //                          .rd
		output wire         mem_0_rr,                         //                          .rr
		output wire         mem_0_rc,                         //                          .rc
		input  wire         mem_0_aerr,                       //                          .aerr
		input  wire         m2u_bridge_cattrip,               //                m2u_bridge.cattrip
		input  wire [2:0]   m2u_bridge_temp,                  //                          .temp
		input  wire [7:0]   m2u_bridge_wso,                   //                          .wso
		output wire         m2u_bridge_reset_n,               //                          .reset_n
		output wire         m2u_bridge_wrst_n,                //                          .wrst_n
		output wire         m2u_bridge_wrck,                  //                          .wrck
		output wire         m2u_bridge_shiftwr,               //                          .shiftwr
		output wire         m2u_bridge_capturewr,             //                          .capturewr
		output wire         m2u_bridge_updatewr,              //                          .updatewr
		output wire         m2u_bridge_selectwir,             //                          .selectwir
		output wire         m2u_bridge_wsi,                   //                          .wsi
		input  wire [15:0]  hbm_top_apb_0_ur_paddr,           //             hbm_top_apb_0.ur_paddr
		input  wire         hbm_top_apb_0_ur_psel,            //                          .ur_psel
		input  wire         hbm_top_apb_0_ur_penable,         //                          .ur_penable
		input  wire         hbm_top_apb_0_ur_pwrite,          //                          .ur_pwrite
		input  wire [15:0]  hbm_top_apb_0_ur_pwdata,          //                          .ur_pwdata
		input  wire [1:0]   hbm_top_apb_0_ur_pstrb,           //                          .ur_pstrb
		output wire         hbm_top_apb_0_ur_prready,         //                          .ur_prready
		output wire [15:0]  hbm_top_apb_0_ur_prdata,          //                          .ur_prdata
		input  wire         reset_reset,                      //                     reset.reset
		input  wire         top_core_clk_iopll_reset_reset,   //  top_core_clk_iopll_reset.reset
		input  wire         top_core_clk_iopll_refclk_clk     // top_core_clk_iopll_refclk.clk
	);
endmodule

