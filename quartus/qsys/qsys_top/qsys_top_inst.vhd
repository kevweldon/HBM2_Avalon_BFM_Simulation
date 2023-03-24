	component qsys_top is
		port (
			hbm_top_pll_ref_clk_clk          : in    std_logic                      := 'X';             -- clk
			hbm_top_wmcrst_n_in_reset_n      : in    std_logic                      := 'X';             -- reset_n
			hbm_top_hbm_only_reset_in_reset  : in    std_logic                      := 'X';             -- reset
			hbm_top_status_local_cal_success : out   std_logic;                                         -- local_cal_success
			hbm_top_status_local_cal_fail    : out   std_logic;                                         -- local_cal_fail
			mem_0_ck_t                       : out   std_logic;                                         -- ck_t
			mem_0_ck_c                       : out   std_logic;                                         -- ck_c
			mem_0_cke                        : out   std_logic;                                         -- cke
			mem_0_c                          : out   std_logic_vector(7 downto 0);                      -- c
			mem_0_r                          : out   std_logic_vector(5 downto 0);                      -- r
			mem_0_dq                         : inout std_logic_vector(127 downto 0) := (others => 'X'); -- dq
			mem_0_dm                         : inout std_logic_vector(15 downto 0)  := (others => 'X'); -- dm
			mem_0_dbi                        : inout std_logic_vector(15 downto 0)  := (others => 'X'); -- dbi
			mem_0_par                        : inout std_logic_vector(3 downto 0)   := (others => 'X'); -- par
			mem_0_derr                       : inout std_logic_vector(3 downto 0)   := (others => 'X'); -- derr
			mem_0_rdqs_t                     : in    std_logic_vector(3 downto 0)   := (others => 'X'); -- rdqs_t
			mem_0_rdqs_c                     : in    std_logic_vector(3 downto 0)   := (others => 'X'); -- rdqs_c
			mem_0_wdqs_t                     : out   std_logic_vector(3 downto 0);                      -- wdqs_t
			mem_0_wdqs_c                     : out   std_logic_vector(3 downto 0);                      -- wdqs_c
			mem_0_rd                         : inout std_logic_vector(7 downto 0)   := (others => 'X'); -- rd
			mem_0_rr                         : out   std_logic;                                         -- rr
			mem_0_rc                         : out   std_logic;                                         -- rc
			mem_0_aerr                       : in    std_logic                      := 'X';             -- aerr
			m2u_bridge_cattrip               : in    std_logic                      := 'X';             -- cattrip
			m2u_bridge_temp                  : in    std_logic_vector(2 downto 0)   := (others => 'X'); -- temp
			m2u_bridge_wso                   : in    std_logic_vector(7 downto 0)   := (others => 'X'); -- wso
			m2u_bridge_reset_n               : out   std_logic;                                         -- reset_n
			m2u_bridge_wrst_n                : out   std_logic;                                         -- wrst_n
			m2u_bridge_wrck                  : out   std_logic;                                         -- wrck
			m2u_bridge_shiftwr               : out   std_logic;                                         -- shiftwr
			m2u_bridge_capturewr             : out   std_logic;                                         -- capturewr
			m2u_bridge_updatewr              : out   std_logic;                                         -- updatewr
			m2u_bridge_selectwir             : out   std_logic;                                         -- selectwir
			m2u_bridge_wsi                   : out   std_logic;                                         -- wsi
			hbm_top_apb_0_ur_paddr           : in    std_logic_vector(15 downto 0)  := (others => 'X'); -- ur_paddr
			hbm_top_apb_0_ur_psel            : in    std_logic                      := 'X';             -- ur_psel
			hbm_top_apb_0_ur_penable         : in    std_logic                      := 'X';             -- ur_penable
			hbm_top_apb_0_ur_pwrite          : in    std_logic                      := 'X';             -- ur_pwrite
			hbm_top_apb_0_ur_pwdata          : in    std_logic_vector(15 downto 0)  := (others => 'X'); -- ur_pwdata
			hbm_top_apb_0_ur_pstrb           : in    std_logic_vector(1 downto 0)   := (others => 'X'); -- ur_pstrb
			hbm_top_apb_0_ur_prready         : out   std_logic;                                         -- ur_prready
			hbm_top_apb_0_ur_prdata          : out   std_logic_vector(15 downto 0);                     -- ur_prdata
			reset_reset                      : in    std_logic                      := 'X';             -- reset
			top_core_clk_iopll_reset_reset   : in    std_logic                      := 'X';             -- reset
			top_core_clk_iopll_refclk_clk    : in    std_logic                      := 'X'              -- clk
		);
	end component qsys_top;

	u0 : component qsys_top
		port map (
			hbm_top_pll_ref_clk_clk          => CONNECTED_TO_hbm_top_pll_ref_clk_clk,          --       hbm_top_pll_ref_clk.clk
			hbm_top_wmcrst_n_in_reset_n      => CONNECTED_TO_hbm_top_wmcrst_n_in_reset_n,      --       hbm_top_wmcrst_n_in.reset_n
			hbm_top_hbm_only_reset_in_reset  => CONNECTED_TO_hbm_top_hbm_only_reset_in_reset,  -- hbm_top_hbm_only_reset_in.reset
			hbm_top_status_local_cal_success => CONNECTED_TO_hbm_top_status_local_cal_success, --            hbm_top_status.local_cal_success
			hbm_top_status_local_cal_fail    => CONNECTED_TO_hbm_top_status_local_cal_fail,    --                          .local_cal_fail
			mem_0_ck_t                       => CONNECTED_TO_mem_0_ck_t,                       --                     mem_0.ck_t
			mem_0_ck_c                       => CONNECTED_TO_mem_0_ck_c,                       --                          .ck_c
			mem_0_cke                        => CONNECTED_TO_mem_0_cke,                        --                          .cke
			mem_0_c                          => CONNECTED_TO_mem_0_c,                          --                          .c
			mem_0_r                          => CONNECTED_TO_mem_0_r,                          --                          .r
			mem_0_dq                         => CONNECTED_TO_mem_0_dq,                         --                          .dq
			mem_0_dm                         => CONNECTED_TO_mem_0_dm,                         --                          .dm
			mem_0_dbi                        => CONNECTED_TO_mem_0_dbi,                        --                          .dbi
			mem_0_par                        => CONNECTED_TO_mem_0_par,                        --                          .par
			mem_0_derr                       => CONNECTED_TO_mem_0_derr,                       --                          .derr
			mem_0_rdqs_t                     => CONNECTED_TO_mem_0_rdqs_t,                     --                          .rdqs_t
			mem_0_rdqs_c                     => CONNECTED_TO_mem_0_rdqs_c,                     --                          .rdqs_c
			mem_0_wdqs_t                     => CONNECTED_TO_mem_0_wdqs_t,                     --                          .wdqs_t
			mem_0_wdqs_c                     => CONNECTED_TO_mem_0_wdqs_c,                     --                          .wdqs_c
			mem_0_rd                         => CONNECTED_TO_mem_0_rd,                         --                          .rd
			mem_0_rr                         => CONNECTED_TO_mem_0_rr,                         --                          .rr
			mem_0_rc                         => CONNECTED_TO_mem_0_rc,                         --                          .rc
			mem_0_aerr                       => CONNECTED_TO_mem_0_aerr,                       --                          .aerr
			m2u_bridge_cattrip               => CONNECTED_TO_m2u_bridge_cattrip,               --                m2u_bridge.cattrip
			m2u_bridge_temp                  => CONNECTED_TO_m2u_bridge_temp,                  --                          .temp
			m2u_bridge_wso                   => CONNECTED_TO_m2u_bridge_wso,                   --                          .wso
			m2u_bridge_reset_n               => CONNECTED_TO_m2u_bridge_reset_n,               --                          .reset_n
			m2u_bridge_wrst_n                => CONNECTED_TO_m2u_bridge_wrst_n,                --                          .wrst_n
			m2u_bridge_wrck                  => CONNECTED_TO_m2u_bridge_wrck,                  --                          .wrck
			m2u_bridge_shiftwr               => CONNECTED_TO_m2u_bridge_shiftwr,               --                          .shiftwr
			m2u_bridge_capturewr             => CONNECTED_TO_m2u_bridge_capturewr,             --                          .capturewr
			m2u_bridge_updatewr              => CONNECTED_TO_m2u_bridge_updatewr,              --                          .updatewr
			m2u_bridge_selectwir             => CONNECTED_TO_m2u_bridge_selectwir,             --                          .selectwir
			m2u_bridge_wsi                   => CONNECTED_TO_m2u_bridge_wsi,                   --                          .wsi
			hbm_top_apb_0_ur_paddr           => CONNECTED_TO_hbm_top_apb_0_ur_paddr,           --             hbm_top_apb_0.ur_paddr
			hbm_top_apb_0_ur_psel            => CONNECTED_TO_hbm_top_apb_0_ur_psel,            --                          .ur_psel
			hbm_top_apb_0_ur_penable         => CONNECTED_TO_hbm_top_apb_0_ur_penable,         --                          .ur_penable
			hbm_top_apb_0_ur_pwrite          => CONNECTED_TO_hbm_top_apb_0_ur_pwrite,          --                          .ur_pwrite
			hbm_top_apb_0_ur_pwdata          => CONNECTED_TO_hbm_top_apb_0_ur_pwdata,          --                          .ur_pwdata
			hbm_top_apb_0_ur_pstrb           => CONNECTED_TO_hbm_top_apb_0_ur_pstrb,           --                          .ur_pstrb
			hbm_top_apb_0_ur_prready         => CONNECTED_TO_hbm_top_apb_0_ur_prready,         --                          .ur_prready
			hbm_top_apb_0_ur_prdata          => CONNECTED_TO_hbm_top_apb_0_ur_prdata,          --                          .ur_prdata
			reset_reset                      => CONNECTED_TO_reset_reset,                      --                     reset.reset
			top_core_clk_iopll_reset_reset   => CONNECTED_TO_top_core_clk_iopll_reset_reset,   --  top_core_clk_iopll_reset.reset
			top_core_clk_iopll_refclk_clk    => CONNECTED_TO_top_core_clk_iopll_refclk_clk     -- top_core_clk_iopll_refclk.clk
		);

