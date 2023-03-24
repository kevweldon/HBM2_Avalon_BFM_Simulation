	component qsys_top_hbm_0 is
		port (
			pll_ref_clk                                       : in    std_logic                      := 'X';             -- clk
			ext_core_clk                                      : in    std_logic                      := 'X';             -- clk
			ext_core_clk_locked                               : in    std_logic                      := 'X';             -- export
			wmcrst_n_in                                       : in    std_logic                      := 'X';             -- reset_n
			hbm_only_reset_in                                 : in    std_logic                      := 'X';             -- reset
			local_cal_success                                 : out   std_logic;                                         -- local_cal_success
			local_cal_fail                                    : out   std_logic;                                         -- local_cal_fail
			cal_lat                                           : out   std_logic_vector(2 downto 0);                      -- cal_lat
			ck_t_0                                            : out   std_logic;                                         -- ck_t
			ck_c_0                                            : out   std_logic;                                         -- ck_c
			cke_0                                             : out   std_logic;                                         -- cke
			c_0                                               : out   std_logic_vector(7 downto 0);                      -- c
			r_0                                               : out   std_logic_vector(5 downto 0);                      -- r
			dq_0                                              : inout std_logic_vector(127 downto 0) := (others => 'X'); -- dq
			dm_0                                              : inout std_logic_vector(15 downto 0)  := (others => 'X'); -- dm
			dbi_0                                             : inout std_logic_vector(15 downto 0)  := (others => 'X'); -- dbi
			par_0                                             : inout std_logic_vector(3 downto 0)   := (others => 'X'); -- par
			derr_0                                            : inout std_logic_vector(3 downto 0)   := (others => 'X'); -- derr
			rdqs_t_0                                          : in    std_logic_vector(3 downto 0)   := (others => 'X'); -- rdqs_t
			rdqs_c_0                                          : in    std_logic_vector(3 downto 0)   := (others => 'X'); -- rdqs_c
			wdqs_t_0                                          : out   std_logic_vector(3 downto 0);                      -- wdqs_t
			wdqs_c_0                                          : out   std_logic_vector(3 downto 0);                      -- wdqs_c
			rd_0                                              : inout std_logic_vector(7 downto 0)   := (others => 'X'); -- rd
			rr_0                                              : out   std_logic;                                         -- rr
			rc_0                                              : out   std_logic;                                         -- rc
			aerr_0                                            : in    std_logic                      := 'X';             -- aerr
			cattrip                                           : in    std_logic                      := 'X';             -- cattrip
			temp                                              : in    std_logic_vector(2 downto 0)   := (others => 'X'); -- temp
			wso                                               : in    std_logic_vector(7 downto 0)   := (others => 'X'); -- wso
			reset_n                                           : out   std_logic;                                         -- reset_n
			wrst_n                                            : out   std_logic;                                         -- wrst_n
			wrck                                              : out   std_logic;                                         -- wrck
			shiftwr                                           : out   std_logic;                                         -- shiftwr
			capturewr                                         : out   std_logic;                                         -- capturewr
			updatewr                                          : out   std_logic;                                         -- updatewr
			selectwir                                         : out   std_logic;                                         -- selectwir
			wsi                                               : out   std_logic;                                         -- wsi
			wmc_clk_0_clk                                     : out   std_logic;                                         -- clk
			phy_clk_0_clk                                     : out   std_logic;                                         -- clk
			wmcrst_n_0_reset_n                                : out   std_logic;                                         -- reset_n
			ctrl_amm_0_1_waitrequest_n                        : out   std_logic;                                         -- waitrequest_n
			ctrl_amm_0_1_read                                 : in    std_logic                      := 'X';             -- read
			ctrl_amm_0_1_write                                : in    std_logic                      := 'X';             -- write
			ctrl_amm_0_1_address                              : in    std_logic_vector(28 downto 0)  := (others => 'X'); -- address
			ctrl_amm_0_1_readdata                             : out   std_logic_vector(255 downto 0);                    -- readdata
			ctrl_amm_0_1_writedata                            : in    std_logic_vector(255 downto 0) := (others => 'X'); -- writedata
			ctrl_amm_0_1_burstcount                           : in    std_logic_vector(6 downto 0)   := (others => 'X'); -- burstcount
			ctrl_amm_0_1_byteenable                           : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- byteenable
			ctrl_amm_0_1_readdatavalid                        : out   std_logic;                                         -- readdatavalid
			ctrl_amm_0_0_waitrequest_n                        : out   std_logic;                                         -- waitrequest_n
			ctrl_amm_0_0_read                                 : in    std_logic                      := 'X';             -- read
			ctrl_amm_0_0_write                                : in    std_logic                      := 'X';             -- write
			ctrl_amm_0_0_address                              : in    std_logic_vector(28 downto 0)  := (others => 'X'); -- address
			ctrl_amm_0_0_readdata                             : out   std_logic_vector(255 downto 0);                    -- readdata
			ctrl_amm_0_0_writedata                            : in    std_logic_vector(255 downto 0) := (others => 'X'); -- writedata
			ctrl_amm_0_0_burstcount                           : in    std_logic_vector(6 downto 0)   := (others => 'X'); -- burstcount
			ctrl_amm_0_0_byteenable                           : in    std_logic_vector(31 downto 0)  := (others => 'X'); -- byteenable
			ctrl_amm_0_0_readdatavalid                        : out   std_logic;                                         -- readdatavalid
			ctrl_ecc_readdataerror_0_1_ctrl_ecc_readdataerror : out   std_logic;                                         -- ctrl_ecc_readdataerror
			ctrl_ecc_readdataerror_0_0_ctrl_ecc_readdataerror : out   std_logic;                                         -- ctrl_ecc_readdataerror
			apb_0_ur_paddr                                    : in    std_logic_vector(15 downto 0)  := (others => 'X'); -- ur_paddr
			apb_0_ur_psel                                     : in    std_logic                      := 'X';             -- ur_psel
			apb_0_ur_penable                                  : in    std_logic                      := 'X';             -- ur_penable
			apb_0_ur_pwrite                                   : in    std_logic                      := 'X';             -- ur_pwrite
			apb_0_ur_pwdata                                   : in    std_logic_vector(15 downto 0)  := (others => 'X'); -- ur_pwdata
			apb_0_ur_pstrb                                    : in    std_logic_vector(1 downto 0)   := (others => 'X'); -- ur_pstrb
			apb_0_ur_prready                                  : out   std_logic;                                         -- ur_prready
			apb_0_ur_prdata                                   : out   std_logic_vector(15 downto 0)                      -- ur_prdata
		);
	end component qsys_top_hbm_0;

	u0 : component qsys_top_hbm_0
		port map (
			pll_ref_clk                                       => CONNECTED_TO_pll_ref_clk,                                       --                pll_ref_clk.clk
			ext_core_clk                                      => CONNECTED_TO_ext_core_clk,                                      --               ext_core_clk.clk
			ext_core_clk_locked                               => CONNECTED_TO_ext_core_clk_locked,                               --        ext_core_clk_locked.export
			wmcrst_n_in                                       => CONNECTED_TO_wmcrst_n_in,                                       --                wmcrst_n_in.reset_n
			hbm_only_reset_in                                 => CONNECTED_TO_hbm_only_reset_in,                                 --          hbm_only_reset_in.reset
			local_cal_success                                 => CONNECTED_TO_local_cal_success,                                 --                     status.local_cal_success
			local_cal_fail                                    => CONNECTED_TO_local_cal_fail,                                    --                           .local_cal_fail
			cal_lat                                           => CONNECTED_TO_cal_lat,                                           --                    cal_lat.cal_lat
			ck_t_0                                            => CONNECTED_TO_ck_t_0,                                            --                      mem_0.ck_t
			ck_c_0                                            => CONNECTED_TO_ck_c_0,                                            --                           .ck_c
			cke_0                                             => CONNECTED_TO_cke_0,                                             --                           .cke
			c_0                                               => CONNECTED_TO_c_0,                                               --                           .c
			r_0                                               => CONNECTED_TO_r_0,                                               --                           .r
			dq_0                                              => CONNECTED_TO_dq_0,                                              --                           .dq
			dm_0                                              => CONNECTED_TO_dm_0,                                              --                           .dm
			dbi_0                                             => CONNECTED_TO_dbi_0,                                             --                           .dbi
			par_0                                             => CONNECTED_TO_par_0,                                             --                           .par
			derr_0                                            => CONNECTED_TO_derr_0,                                            --                           .derr
			rdqs_t_0                                          => CONNECTED_TO_rdqs_t_0,                                          --                           .rdqs_t
			rdqs_c_0                                          => CONNECTED_TO_rdqs_c_0,                                          --                           .rdqs_c
			wdqs_t_0                                          => CONNECTED_TO_wdqs_t_0,                                          --                           .wdqs_t
			wdqs_c_0                                          => CONNECTED_TO_wdqs_c_0,                                          --                           .wdqs_c
			rd_0                                              => CONNECTED_TO_rd_0,                                              --                           .rd
			rr_0                                              => CONNECTED_TO_rr_0,                                              --                           .rr
			rc_0                                              => CONNECTED_TO_rc_0,                                              --                           .rc
			aerr_0                                            => CONNECTED_TO_aerr_0,                                            --                           .aerr
			cattrip                                           => CONNECTED_TO_cattrip,                                           --                 m2u_bridge.cattrip
			temp                                              => CONNECTED_TO_temp,                                              --                           .temp
			wso                                               => CONNECTED_TO_wso,                                               --                           .wso
			reset_n                                           => CONNECTED_TO_reset_n,                                           --                           .reset_n
			wrst_n                                            => CONNECTED_TO_wrst_n,                                            --                           .wrst_n
			wrck                                              => CONNECTED_TO_wrck,                                              --                           .wrck
			shiftwr                                           => CONNECTED_TO_shiftwr,                                           --                           .shiftwr
			capturewr                                         => CONNECTED_TO_capturewr,                                         --                           .capturewr
			updatewr                                          => CONNECTED_TO_updatewr,                                          --                           .updatewr
			selectwir                                         => CONNECTED_TO_selectwir,                                         --                           .selectwir
			wsi                                               => CONNECTED_TO_wsi,                                               --                           .wsi
			wmc_clk_0_clk                                     => CONNECTED_TO_wmc_clk_0_clk,                                     --                  wmc_clk_0.clk
			phy_clk_0_clk                                     => CONNECTED_TO_phy_clk_0_clk,                                     --                  phy_clk_0.clk
			wmcrst_n_0_reset_n                                => CONNECTED_TO_wmcrst_n_0_reset_n,                                --                 wmcrst_n_0.reset_n
			ctrl_amm_0_1_waitrequest_n                        => CONNECTED_TO_ctrl_amm_0_1_waitrequest_n,                        --               ctrl_amm_0_1.waitrequest_n
			ctrl_amm_0_1_read                                 => CONNECTED_TO_ctrl_amm_0_1_read,                                 --                           .read
			ctrl_amm_0_1_write                                => CONNECTED_TO_ctrl_amm_0_1_write,                                --                           .write
			ctrl_amm_0_1_address                              => CONNECTED_TO_ctrl_amm_0_1_address,                              --                           .address
			ctrl_amm_0_1_readdata                             => CONNECTED_TO_ctrl_amm_0_1_readdata,                             --                           .readdata
			ctrl_amm_0_1_writedata                            => CONNECTED_TO_ctrl_amm_0_1_writedata,                            --                           .writedata
			ctrl_amm_0_1_burstcount                           => CONNECTED_TO_ctrl_amm_0_1_burstcount,                           --                           .burstcount
			ctrl_amm_0_1_byteenable                           => CONNECTED_TO_ctrl_amm_0_1_byteenable,                           --                           .byteenable
			ctrl_amm_0_1_readdatavalid                        => CONNECTED_TO_ctrl_amm_0_1_readdatavalid,                        --                           .readdatavalid
			ctrl_amm_0_0_waitrequest_n                        => CONNECTED_TO_ctrl_amm_0_0_waitrequest_n,                        --               ctrl_amm_0_0.waitrequest_n
			ctrl_amm_0_0_read                                 => CONNECTED_TO_ctrl_amm_0_0_read,                                 --                           .read
			ctrl_amm_0_0_write                                => CONNECTED_TO_ctrl_amm_0_0_write,                                --                           .write
			ctrl_amm_0_0_address                              => CONNECTED_TO_ctrl_amm_0_0_address,                              --                           .address
			ctrl_amm_0_0_readdata                             => CONNECTED_TO_ctrl_amm_0_0_readdata,                             --                           .readdata
			ctrl_amm_0_0_writedata                            => CONNECTED_TO_ctrl_amm_0_0_writedata,                            --                           .writedata
			ctrl_amm_0_0_burstcount                           => CONNECTED_TO_ctrl_amm_0_0_burstcount,                           --                           .burstcount
			ctrl_amm_0_0_byteenable                           => CONNECTED_TO_ctrl_amm_0_0_byteenable,                           --                           .byteenable
			ctrl_amm_0_0_readdatavalid                        => CONNECTED_TO_ctrl_amm_0_0_readdatavalid,                        --                           .readdatavalid
			ctrl_ecc_readdataerror_0_1_ctrl_ecc_readdataerror => CONNECTED_TO_ctrl_ecc_readdataerror_0_1_ctrl_ecc_readdataerror, -- ctrl_ecc_readdataerror_0_1.ctrl_ecc_readdataerror
			ctrl_ecc_readdataerror_0_0_ctrl_ecc_readdataerror => CONNECTED_TO_ctrl_ecc_readdataerror_0_0_ctrl_ecc_readdataerror, -- ctrl_ecc_readdataerror_0_0.ctrl_ecc_readdataerror
			apb_0_ur_paddr                                    => CONNECTED_TO_apb_0_ur_paddr,                                    --                      apb_0.ur_paddr
			apb_0_ur_psel                                     => CONNECTED_TO_apb_0_ur_psel,                                     --                           .ur_psel
			apb_0_ur_penable                                  => CONNECTED_TO_apb_0_ur_penable,                                  --                           .ur_penable
			apb_0_ur_pwrite                                   => CONNECTED_TO_apb_0_ur_pwrite,                                   --                           .ur_pwrite
			apb_0_ur_pwdata                                   => CONNECTED_TO_apb_0_ur_pwdata,                                   --                           .ur_pwdata
			apb_0_ur_pstrb                                    => CONNECTED_TO_apb_0_ur_pstrb,                                    --                           .ur_pstrb
			apb_0_ur_prready                                  => CONNECTED_TO_apb_0_ur_prready,                                  --                           .ur_prready
			apb_0_ur_prdata                                   => CONNECTED_TO_apb_0_ur_prdata                                    --                           .ur_prdata
		);

