module qsys_top_hbm_0 (
		input  wire         pll_ref_clk,                                       //                pll_ref_clk.clk
		input  wire         ext_core_clk,                                      //               ext_core_clk.clk
		input  wire         ext_core_clk_locked,                               //        ext_core_clk_locked.export
		input  wire         wmcrst_n_in,                                       //                wmcrst_n_in.reset_n
		input  wire         hbm_only_reset_in,                                 //          hbm_only_reset_in.reset
		output wire         local_cal_success,                                 //                     status.local_cal_success
		output wire         local_cal_fail,                                    //                           .local_cal_fail
		output wire [2:0]   cal_lat,                                           //                    cal_lat.cal_lat
		output wire         ck_t_0,                                            //                      mem_0.ck_t
		output wire         ck_c_0,                                            //                           .ck_c
		output wire         cke_0,                                             //                           .cke
		output wire [7:0]   c_0,                                               //                           .c
		output wire [5:0]   r_0,                                               //                           .r
		inout  wire [127:0] dq_0,                                              //                           .dq
		inout  wire [15:0]  dm_0,                                              //                           .dm
		inout  wire [15:0]  dbi_0,                                             //                           .dbi
		inout  wire [3:0]   par_0,                                             //                           .par
		inout  wire [3:0]   derr_0,                                            //                           .derr
		input  wire [3:0]   rdqs_t_0,                                          //                           .rdqs_t
		input  wire [3:0]   rdqs_c_0,                                          //                           .rdqs_c
		output wire [3:0]   wdqs_t_0,                                          //                           .wdqs_t
		output wire [3:0]   wdqs_c_0,                                          //                           .wdqs_c
		inout  wire [7:0]   rd_0,                                              //                           .rd
		output wire         rr_0,                                              //                           .rr
		output wire         rc_0,                                              //                           .rc
		input  wire         aerr_0,                                            //                           .aerr
		input  wire         cattrip,                                           //                 m2u_bridge.cattrip
		input  wire [2:0]   temp,                                              //                           .temp
		input  wire [7:0]   wso,                                               //                           .wso
		output wire         reset_n,                                           //                           .reset_n
		output wire         wrst_n,                                            //                           .wrst_n
		output wire         wrck,                                              //                           .wrck
		output wire         shiftwr,                                           //                           .shiftwr
		output wire         capturewr,                                         //                           .capturewr
		output wire         updatewr,                                          //                           .updatewr
		output wire         selectwir,                                         //                           .selectwir
		output wire         wsi,                                               //                           .wsi
		output wire         wmc_clk_0_clk,                                     //                  wmc_clk_0.clk
		output wire         phy_clk_0_clk,                                     //                  phy_clk_0.clk
		output wire         wmcrst_n_0_reset_n,                                //                 wmcrst_n_0.reset_n
		output wire         ctrl_amm_0_1_waitrequest_n,                        //               ctrl_amm_0_1.waitrequest_n
		input  wire         ctrl_amm_0_1_read,                                 //                           .read
		input  wire         ctrl_amm_0_1_write,                                //                           .write
		input  wire [28:0]  ctrl_amm_0_1_address,                              //                           .address
		output wire [255:0] ctrl_amm_0_1_readdata,                             //                           .readdata
		input  wire [255:0] ctrl_amm_0_1_writedata,                            //                           .writedata
		input  wire [6:0]   ctrl_amm_0_1_burstcount,                           //                           .burstcount
		input  wire [31:0]  ctrl_amm_0_1_byteenable,                           //                           .byteenable
		output wire         ctrl_amm_0_1_readdatavalid,                        //                           .readdatavalid
		output wire         ctrl_amm_0_0_waitrequest_n,                        //               ctrl_amm_0_0.waitrequest_n
		input  wire         ctrl_amm_0_0_read,                                 //                           .read
		input  wire         ctrl_amm_0_0_write,                                //                           .write
		input  wire [28:0]  ctrl_amm_0_0_address,                              //                           .address
		output wire [255:0] ctrl_amm_0_0_readdata,                             //                           .readdata
		input  wire [255:0] ctrl_amm_0_0_writedata,                            //                           .writedata
		input  wire [6:0]   ctrl_amm_0_0_burstcount,                           //                           .burstcount
		input  wire [31:0]  ctrl_amm_0_0_byteenable,                           //                           .byteenable
		output wire         ctrl_amm_0_0_readdatavalid,                        //                           .readdatavalid
		output wire         ctrl_ecc_readdataerror_0_1_ctrl_ecc_readdataerror, // ctrl_ecc_readdataerror_0_1.ctrl_ecc_readdataerror
		output wire         ctrl_ecc_readdataerror_0_0_ctrl_ecc_readdataerror, // ctrl_ecc_readdataerror_0_0.ctrl_ecc_readdataerror
		input  wire [15:0]  apb_0_ur_paddr,                                    //                      apb_0.ur_paddr
		input  wire         apb_0_ur_psel,                                     //                           .ur_psel
		input  wire         apb_0_ur_penable,                                  //                           .ur_penable
		input  wire         apb_0_ur_pwrite,                                   //                           .ur_pwrite
		input  wire [15:0]  apb_0_ur_pwdata,                                   //                           .ur_pwdata
		input  wire [1:0]   apb_0_ur_pstrb,                                    //                           .ur_pstrb
		output wire         apb_0_ur_prready,                                  //                           .ur_prready
		output wire [15:0]  apb_0_ur_prdata                                    //                           .ur_prdata
	);
endmodule

