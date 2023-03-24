	component ed_synth is
		port (
			core_clk_iopll_ref_clk_clk               : in  std_logic                    := 'X';             -- clk
			core_clk_iopll_reset_reset               : in  std_logic                    := 'X';             -- reset
			hbm_0_example_design_pll_ref_clk_clk     : in  std_logic                    := 'X';             -- clk
			hbm_0_example_design_wmcrst_n_in_reset_n : in  std_logic                    := 'X';             -- reset_n
			hbm_only_reset_in_reset                  : in  std_logic                    := 'X';             -- reset
			m2u_bridge_cattrip                       : in  std_logic                    := 'X';             -- cattrip
			m2u_bridge_temp                          : in  std_logic_vector(2 downto 0) := (others => 'X'); -- temp
			m2u_bridge_wso                           : in  std_logic_vector(7 downto 0) := (others => 'X'); -- wso
			m2u_bridge_reset_n                       : out std_logic;                                       -- reset_n
			m2u_bridge_wrst_n                        : out std_logic;                                       -- wrst_n
			m2u_bridge_wrck                          : out std_logic;                                       -- wrck
			m2u_bridge_shiftwr                       : out std_logic;                                       -- shiftwr
			m2u_bridge_capturewr                     : out std_logic;                                       -- capturewr
			m2u_bridge_updatewr                      : out std_logic;                                       -- updatewr
			m2u_bridge_selectwir                     : out std_logic;                                       -- selectwir
			m2u_bridge_wsi                           : out std_logic;                                       -- wsi
			tg0_0_status_traffic_gen_pass            : out std_logic;                                       -- traffic_gen_pass
			tg0_0_status_traffic_gen_fail            : out std_logic;                                       -- traffic_gen_fail
			tg0_0_status_traffic_gen_timeout         : out std_logic;                                       -- traffic_gen_timeout
			tg0_1_status_traffic_gen_pass            : out std_logic;                                       -- traffic_gen_pass
			tg0_1_status_traffic_gen_fail            : out std_logic;                                       -- traffic_gen_fail
			tg0_1_status_traffic_gen_timeout         : out std_logic                                        -- traffic_gen_timeout
		);
	end component ed_synth;

	u0 : component ed_synth
		port map (
			core_clk_iopll_ref_clk_clk               => CONNECTED_TO_core_clk_iopll_ref_clk_clk,               --           core_clk_iopll_ref_clk.clk
			core_clk_iopll_reset_reset               => CONNECTED_TO_core_clk_iopll_reset_reset,               --             core_clk_iopll_reset.reset
			hbm_0_example_design_pll_ref_clk_clk     => CONNECTED_TO_hbm_0_example_design_pll_ref_clk_clk,     -- hbm_0_example_design_pll_ref_clk.clk
			hbm_0_example_design_wmcrst_n_in_reset_n => CONNECTED_TO_hbm_0_example_design_wmcrst_n_in_reset_n, -- hbm_0_example_design_wmcrst_n_in.reset_n
			hbm_only_reset_in_reset                  => CONNECTED_TO_hbm_only_reset_in_reset,                  --                hbm_only_reset_in.reset
			m2u_bridge_cattrip                       => CONNECTED_TO_m2u_bridge_cattrip,                       --                       m2u_bridge.cattrip
			m2u_bridge_temp                          => CONNECTED_TO_m2u_bridge_temp,                          --                                 .temp
			m2u_bridge_wso                           => CONNECTED_TO_m2u_bridge_wso,                           --                                 .wso
			m2u_bridge_reset_n                       => CONNECTED_TO_m2u_bridge_reset_n,                       --                                 .reset_n
			m2u_bridge_wrst_n                        => CONNECTED_TO_m2u_bridge_wrst_n,                        --                                 .wrst_n
			m2u_bridge_wrck                          => CONNECTED_TO_m2u_bridge_wrck,                          --                                 .wrck
			m2u_bridge_shiftwr                       => CONNECTED_TO_m2u_bridge_shiftwr,                       --                                 .shiftwr
			m2u_bridge_capturewr                     => CONNECTED_TO_m2u_bridge_capturewr,                     --                                 .capturewr
			m2u_bridge_updatewr                      => CONNECTED_TO_m2u_bridge_updatewr,                      --                                 .updatewr
			m2u_bridge_selectwir                     => CONNECTED_TO_m2u_bridge_selectwir,                     --                                 .selectwir
			m2u_bridge_wsi                           => CONNECTED_TO_m2u_bridge_wsi,                           --                                 .wsi
			tg0_0_status_traffic_gen_pass            => CONNECTED_TO_tg0_0_status_traffic_gen_pass,            --                     tg0_0_status.traffic_gen_pass
			tg0_0_status_traffic_gen_fail            => CONNECTED_TO_tg0_0_status_traffic_gen_fail,            --                                 .traffic_gen_fail
			tg0_0_status_traffic_gen_timeout         => CONNECTED_TO_tg0_0_status_traffic_gen_timeout,         --                                 .traffic_gen_timeout
			tg0_1_status_traffic_gen_pass            => CONNECTED_TO_tg0_1_status_traffic_gen_pass,            --                     tg0_1_status.traffic_gen_pass
			tg0_1_status_traffic_gen_fail            => CONNECTED_TO_tg0_1_status_traffic_gen_fail,            --                                 .traffic_gen_fail
			tg0_1_status_traffic_gen_timeout         => CONNECTED_TO_tg0_1_status_traffic_gen_timeout          --                                 .traffic_gen_timeout
		);

