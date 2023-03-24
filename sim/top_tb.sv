// Kevin Weldon 09/2023

`define CH_0_0_MASTER top_tb.dut.ch_0_0_master.ch_0_0_master
`define CH_0_1_MASTER top_tb.dut.ch_0_1_master.ch_0_0_master

module top_tb;
   
   import verbosity_pkg::*;
   import avalon_mm_pkg::*;

   timeunit 100ps;
   timeprecision 10ps;

   parameter CH_0_0 = 64'h0000000000000000;
   parameter CH_0_1 = 64'h0000000000000000;
   parameter NUMBER_OF_WRITES = 16;

   // FPGA Top Level Ports
   logic 	 hbm_top_pll_ref_clk_clk;
   logic 	 hbm_top_wmcrst_n_in_reset_n;
   logic 	 hbm_top_hbm_only_reset_in_reset;
   logic 	 hbm_top_status_local_cal_success;
   logic 	 hbm_top_status_local_cal_fail;
   logic 	 mem_0_ck_t;
   logic 	 mem_0_ck_c;
   logic 	 mem_0_cke;
   logic [7:0] 	 mem_0_c;
   logic [5:0] 	 mem_0_r;
   wire [127:0]  mem_0_dq;
   wire [15:0] 	 mem_0_dm;
   wire [15:0] 	 mem_0_dbi;
   wire [3:0] 	 mem_0_par;
   wire [3:0] 	 mem_0_derr;
   logic [3:0] 	 mem_0_rdqs_t;
   logic [3:0] 	 mem_0_rdqs_c;
   logic [3:0] 	 mem_0_wdqs_t;
   logic [3:0] 	 mem_0_wdqs_c;
   wire [7:0] 	 mem_0_rd;
   logic 	 mem_0_rr;
   logic 	 mem_0_rc;
   logic 	 mem_0_aerr;
   logic 	 m2u_bridge_cattrip;
   logic [2:0] 	 m2u_bridge_temp;
   logic [7:0] 	 m2u_bridge_wso;
   logic 	 m2u_bridge_reset_n;
   logic 	 m2u_bridge_wrst_n;
   logic 	 m2u_bridge_wrck;
   logic 	 m2u_bridge_shiftwr;
   logic 	 m2u_bridge_capturewr;
   logic 	 m2u_bridge_updatewr;
   logic 	 m2u_bridge_selectwir;
   logic 	 m2u_bridge_wsi;
   logic [15:0]  hbm_top_apb_0_ur_paddr;
   logic 	 hbm_top_apb_0_ur_psel;
   logic 	 hbm_top_apb_0_ur_penable;
   logic 	 hbm_top_apb_0_ur_pwrite;
   logic [15:0]  hbm_top_apb_0_ur_pwdata;
   logic [1:0] 	 hbm_top_apb_0_ur_pstrb;
   logic 	 hbm_top_apb_0_ur_prready;
   logic [15:0]  hbm_top_apb_0_ur_prdata;
   logic 	 reset_reset;
   logic 	 top_core_clk_iopll_reset_reset;
   logic 	 top_core_clk_iopll_refclk_clk;
   
   // Test Bench Signals
   logic [255:0] avalon_read_data;
   logic [255:0] expected_data;
   int 		 i, j;
   int 				 read_data_valid_count=0;
   

   // 200MHz
   initial
     begin
	hbm_top_pll_ref_clk_clk = 0;
	#0;
	forever #25 hbm_top_pll_ref_clk_clk = ~hbm_top_pll_ref_clk_clk;
     end

   // 300MHz
   initial
     begin
	top_core_clk_iopll_refclk_clk = 0;
	#0;
	forever #16 top_core_clk_iopll_refclk_clk = ~top_core_clk_iopll_refclk_clk;
     end

   always @(posedge dut.ch_0_0_master.clk)
     begin
	if(dut.ch_0_0_master.avm_readdatavalid)
	  read_data_valid_count += 1;
     end

   initial
     begin
	// Configure Avalon BFM
	`CH_0_0_MASTER.set_response_timeout(500);
        `CH_0_0_MASTER.set_command_timeout(500);
	`CH_0_0_MASTER.init();
	`CH_0_1_MASTER.set_response_timeout(500);
        `CH_0_1_MASTER.set_command_timeout(500);
	`CH_0_1_MASTER.init();

	hbm_top_wmcrst_n_in_reset_n <= {1{1'b0}};
	hbm_top_hbm_only_reset_in_reset <= {1{1'b1}};
	hbm_top_apb_0_ur_paddr <= {16{1'b0}};
	hbm_top_apb_0_ur_psel <= {1{1'b0}};
	hbm_top_apb_0_ur_penable <= {1{1'b0}};
	hbm_top_apb_0_ur_pwrite <= {1{1'b0}};
	hbm_top_apb_0_ur_pwdata <= {16{1'b0}};
	hbm_top_apb_0_ur_pstrb <= {2{1'b0}};
	reset_reset <= {1{1'b1}};
	top_core_clk_iopll_reset_reset <= {1{1'b0}};

	// Pull design out of reset
	repeat (50) @(posedge top_core_clk_iopll_refclk_clk);
	hbm_top_wmcrst_n_in_reset_n <= {1{1'b1}};
	hbm_top_hbm_only_reset_in_reset <= {1{1'b0}};
	reset_reset <= {1{1'b0}};

	// Wait for HBM to be ready
	wait(top_tb.dut.hbm_top.local_cal_success);
 	repeat (500) @(posedge top_core_clk_iopll_refclk_clk);

	// Write sequential locations
	for (i=0; i<NUMBER_OF_WRITES; i++)
	  begin
	     master_write(CH_0_0+(i*32), {8{i}}, 32'hffffffff);
	  end
	
	// Sequential reads
	for (i=0; i<NUMBER_OF_WRITES; i++)
	  begin
	     master_read_push(CH_0_0+(i*(256/8)),1);
	  end
	// Sequential reads
	for (i=0; i<NUMBER_OF_WRITES; i++)
	  begin
	     expected_data = {8{i}};
	     master_read_pop(CH_0_0+(i*(256/8)),1, avalon_read_data);
	     if (avalon_read_data != expected_data)
	       begin
		  $display("top_tb: [%t] ERORR: Expected data %h from read address %h, recieved %h", 
			   $time, expected_data, CH_0_0+(i*(256/8)), avalon_read_data);
		  stop_sim();
	       end
	     else
	       begin
		  $display("top_tb: [%t] Read Data %h from address %h", 
			   $time, avalon_read_data, CH_0_0+(i*(256/8)));
	       end
	  end
   
	repeat (100) @(posedge top_core_clk_iopll_refclk_clk);
	stop_sim();
     end // initial begin

   qsys_top dut (.*);

   ed_sim_mem ed_sim_mem 
     (
      .ck_t_0(mem_0_ck_t),
      .ck_c_0(mem_0_ck_c),
      .cke_0(mem_0_cke),
      .c_0(mem_0_c),
      .r_0(mem_0_r),
      .dq_0(mem_0_dq),
      .dm_0(mem_0_dm),
      .dbi_0(mem_0_dbi),
      .par_0(mem_0_par),
      .derr_0(mem_0_derr),
      .rdqs_t_0(mem_0_rdqs_t),
      .rdqs_c_0(mem_0_rdqs_c),
      .wdqs_t_0(mem_0_wdqs_t),
      .wdqs_c_0(mem_0_wdqs_c),
      .rd_0(mem_0_rd),
      .rr_0(mem_0_rr),
      .rc_0(mem_0_rc),
      .aerr_0(mem_0_aerr),
      .cattrip(m2u_bridge_cattrip),
      .temp(m2u_bridge_temp),
      .wso(m2u_bridge_wso),
      .reset_n(m2u_bridge_reset_n),
      .wrst_n(m2u_bridge_wrst_n),
      .wrck(m2u_bridge_wrck),
      .shiftwr(m2u_bridge_shiftwr),
      .capturewr(m2u_bridge_capturewr),
      .updatewr(m2u_bridge_updatewr),
      .selectwir(m2u_bridge_selectwir),
      .wsi(m2u_bridge_wsi)
      );

   task stop_sim;
     begin
	$display("Simulation stopped at %t", $time);
	$finish;
     end
   endtask // stop_sim

   task master_write;
      input [63:0] address;
      input [255:0] data;
      input [31:0]  byteenable;
      begin
	 `CH_0_0_MASTER.set_command_data(data, 0);
	 `CH_0_0_MASTER.set_command_byte_enable(byteenable, 0);
	 `CH_0_0_MASTER.set_command_idle(0, 0);
	 `CH_0_0_MASTER.set_command_address(address);
	 `CH_0_0_MASTER.set_command_burst_count('h1);
	 `CH_0_0_MASTER.set_command_burst_size('h1);
	 `CH_0_0_MASTER.set_command_init_latency(0);
	 `CH_0_0_MASTER.set_command_request(REQ_WRITE);
	 `CH_0_0_MASTER.push_command();
	 @(`CH_0_0_MASTER.signal_response_complete);	 
	 `CH_0_0_MASTER.pop_response();
	 //$display("top_tb: [%t] Response Request: %s", $time,`CH_0_0_MASTER.get_response_request());
	 $display("top_tb: [%t] Wrote Data %h to address %h, byteenable=%h", 
		  $time, `CH_0_0_MASTER.get_response_data(0),`CH_0_0_MASTER.get_response_address(), 
		  `CH_0_0_MASTER.get_response_byte_enable(0));
      end
   endtask // master_write

   task master_read_push;
      input [63:0] address;
      input [7:0] burst_size;
      begin
	 `CH_0_0_MASTER.set_command_address(address);
	 `CH_0_0_MASTER.set_command_byte_enable({64{1'b1}}, 0);
	 `CH_0_0_MASTER.set_command_burst_count(burst_size);
	 `CH_0_0_MASTER.set_command_burst_size(burst_size);
	 `CH_0_0_MASTER.set_command_data('h0, 0);
	 `CH_0_0_MASTER.set_command_idle(0, 0);
	 `CH_0_0_MASTER.set_command_init_latency(0);
	 `CH_0_0_MASTER.set_command_request(REQ_READ);
	 `CH_0_0_MASTER.push_command();
      end
   endtask // master_read

   task master_read_pop;
      input [63:0] address;
      input [7:0] burst_size;
      output [255:0] data_out;
      begin
	 @(`CH_0_0_MASTER.signal_response_complete);	 
	 `CH_0_0_MASTER.pop_response();
	 for (int i=0; i<burst_size; i++)
	   begin
	      data_out = `CH_0_0_MASTER.get_response_data(i);
	      //$display("top_tb: [%t] Read Data %h from address %h", $time, data_out,`CH_0_0_MASTER.get_response_address());
	   end
      end
   endtask // master_read

endmodule: top_tb
