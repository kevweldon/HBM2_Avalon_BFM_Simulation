// ch_0_0_master.v

// Generated using ACDS version 22.4 94

`timescale 1 ps / 1 ps
module ch_0_0_master #(
		parameter AV_ADDRESS_W               = 64,
		parameter AV_SYMBOL_W                = 8,
		parameter AV_NUMSYMBOLS              = 32,
		parameter AV_BURSTCOUNT_W            = 1,
		parameter AV_READRESPONSE_W          = 8,
		parameter AV_WRITERESPONSE_W         = 8,
		parameter USE_READ                   = 1,
		parameter USE_WRITE                  = 1,
		parameter USE_ADDRESS                = 1,
		parameter USE_BYTE_ENABLE            = 1,
		parameter USE_BURSTCOUNT             = 0,
		parameter USE_READ_DATA              = 1,
		parameter USE_READ_DATA_VALID        = 1,
		parameter USE_WRITE_DATA             = 1,
		parameter USE_BEGIN_TRANSFER         = 0,
		parameter USE_BEGIN_BURST_TRANSFER   = 0,
		parameter USE_WAIT_REQUEST           = 1,
		parameter USE_TRANSACTIONID          = 0,
		parameter USE_WRITERESPONSE          = 0,
		parameter USE_READRESPONSE           = 0,
		parameter USE_CLKEN                  = 0,
		parameter AV_CONSTANT_BURST_BEHAVIOR = 0,
		parameter AV_BURST_LINEWRAP          = 0,
		parameter AV_BURST_BNDR_ONLY         = 0,
		parameter AV_MAX_PENDING_READS       = 128,
		parameter AV_MAX_PENDING_WRITES      = 0,
		parameter AV_FIX_READ_LATENCY        = 0,
		parameter AV_READ_WAIT_TIME          = 1,
		parameter AV_WRITE_WAIT_TIME         = 0,
		parameter AV_WAITREQUEST_ALLOWANCE   = 0,
		parameter REGISTER_WAITREQUEST       = 0,
		parameter AV_REGISTERINCOMINGSIGNALS = 0,
		parameter VHDL_ID                    = 0
	) (
		input  wire         clk,               //       clk.clk
		input  wire         reset,             // clk_reset.reset
		output wire [63:0]  avm_address,       //        m0.address
		input  wire [255:0] avm_readdata,      //          .readdata
		output wire [255:0] avm_writedata,     //          .writedata
		input  wire         avm_waitrequest,   //          .waitrequest
		output wire         avm_write,         //          .write
		output wire         avm_read,          //          .read
		output wire [31:0]  avm_byteenable,    //          .byteenable
		input  wire         avm_readdatavalid  //          .readdatavalid
	);

	altera_avalon_mm_master_bfm #(
		.AV_ADDRESS_W               (AV_ADDRESS_W),
		.AV_SYMBOL_W                (AV_SYMBOL_W),
		.AV_NUMSYMBOLS              (AV_NUMSYMBOLS),
		.AV_BURSTCOUNT_W            (AV_BURSTCOUNT_W),
		.AV_READRESPONSE_W          (AV_READRESPONSE_W),
		.AV_WRITERESPONSE_W         (AV_WRITERESPONSE_W),
		.USE_READ                   (USE_READ),
		.USE_WRITE                  (USE_WRITE),
		.USE_ADDRESS                (USE_ADDRESS),
		.USE_BYTE_ENABLE            (USE_BYTE_ENABLE),
		.USE_BURSTCOUNT             (USE_BURSTCOUNT),
		.USE_READ_DATA              (USE_READ_DATA),
		.USE_READ_DATA_VALID        (USE_READ_DATA_VALID),
		.USE_WRITE_DATA             (USE_WRITE_DATA),
		.USE_BEGIN_TRANSFER         (USE_BEGIN_TRANSFER),
		.USE_BEGIN_BURST_TRANSFER   (USE_BEGIN_BURST_TRANSFER),
		.USE_WAIT_REQUEST           (USE_WAIT_REQUEST),
		.USE_TRANSACTIONID          (USE_TRANSACTIONID),
		.USE_WRITERESPONSE          (USE_WRITERESPONSE),
		.USE_READRESPONSE           (USE_READRESPONSE),
		.USE_CLKEN                  (USE_CLKEN),
		.AV_CONSTANT_BURST_BEHAVIOR (AV_CONSTANT_BURST_BEHAVIOR),
		.AV_BURST_LINEWRAP          (AV_BURST_LINEWRAP),
		.AV_BURST_BNDR_ONLY         (AV_BURST_BNDR_ONLY),
		.AV_MAX_PENDING_READS       (AV_MAX_PENDING_READS),
		.AV_MAX_PENDING_WRITES      (AV_MAX_PENDING_WRITES),
		.AV_FIX_READ_LATENCY        (AV_FIX_READ_LATENCY),
		.AV_READ_WAIT_TIME          (AV_READ_WAIT_TIME),
		.AV_WRITE_WAIT_TIME         (AV_WRITE_WAIT_TIME),
		.AV_WAITREQUEST_ALLOWANCE   (AV_WAITREQUEST_ALLOWANCE),
		.REGISTER_WAITREQUEST       (REGISTER_WAITREQUEST),
		.AV_REGISTERINCOMINGSIGNALS (AV_REGISTERINCOMINGSIGNALS),
		.VHDL_ID                    (VHDL_ID)
	) ch_0_0_master (
		.clk                    (clk),               //   input,    width = 1,       clk.clk
		.reset                  (reset),             //   input,    width = 1, clk_reset.reset
		.avm_address            (avm_address),       //  output,   width = 64,        m0.address
		.avm_readdata           (avm_readdata),      //   input,  width = 256,          .readdata
		.avm_writedata          (avm_writedata),     //  output,  width = 256,          .writedata
		.avm_waitrequest        (avm_waitrequest),   //   input,    width = 1,          .waitrequest
		.avm_write              (avm_write),         //  output,    width = 1,          .write
		.avm_read               (avm_read),          //  output,    width = 1,          .read
		.avm_byteenable         (avm_byteenable),    //  output,   width = 32,          .byteenable
		.avm_readdatavalid      (avm_readdatavalid), //   input,    width = 1,          .readdatavalid
		.avm_burstcount         (),                  // (terminated),                         
		.avm_begintransfer      (),                  // (terminated),                         
		.avm_beginbursttransfer (),                  // (terminated),                         
		.avm_arbiterlock        (),                  // (terminated),                         
		.avm_lock               (),                  // (terminated),                         
		.avm_debugaccess        (),                  // (terminated),                         
		.avm_transactionid      (),                  // (terminated),                         
		.avm_readid             (8'b00000000),       // (terminated),                         
		.avm_writeid            (8'b00000000),       // (terminated),                         
		.avm_clken              (),                  // (terminated),                         
		.avm_response           (2'b00),             // (terminated),                         
		.avm_writeresponsevalid (1'b0),              // (terminated),                         
		.avm_readresponse       (8'b00000000),       // (terminated),                         
		.avm_writeresponse      (8'b00000000)        // (terminated),                         
	);

endmodule
