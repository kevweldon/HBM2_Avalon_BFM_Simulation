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
endmodule

