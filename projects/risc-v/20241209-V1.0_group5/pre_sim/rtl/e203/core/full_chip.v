// LAB4: 例化 IO cell 和 e203_soc_top 模块，将 e203_soc_top 模块的所有输入输出外围包一圈 IO

e203_soc_top u_e203_soc_top(
    .hfextclk                           (hfextclk_pin),
    .hfxoscen                           (hfxoscen_pin),
    .lfextclk                           (lfextclk_pin),
    .lfxoscen                           (lfxoscen_pin),
    .io_pads_jtag_TCK_i_ival            (io_pads_jtag_TCK_i_ival_pin),
    .io_pads_jtag_TMS_i_ival            (io_pads_jtag_TMS_i_ival_pin),
    .io_pads_jtag_TDI_i_ival            (io_pads_jtag_TDI_i_ival_pin),
    .io_pads_jtag_TDO_o_oval            (io_pads_jtag_TDO_o_oval_pin),
    .io_pads_jtag_TDO_o_oe              (io_pads_jtag_TDO_o_oe_pin),
    .io_pads_gpioA_i_ival               (io_pads_gpioA_i_ival_pin),
    .io_pads_gpioA_o_oval               (io_pads_gpioA_o_oval_pin),
    .io_pads_gpioA_o_oe                 (io_pads_gpioA_o_oe _pin),
    .io_pads_gpioB_i_ival               (io_pads_gpioB_i_ival_pin),
    .io_pads_gpioB_o_oval               (io_pads_gpioB_o_oval_pin),
    .io_pads_gpioB_o_oe                 (io_pads_gpioB_o_oe_pin),
    .io_pads_qspi0_sck_o_oval           (io_pads_qspi0_sck_o_oval_pin),
    .io_pads_qspi0_cs_0_o_oval          (io_pads_qspi0_cs_0_o_oval_pin),
    .io_pads_qspi0_dq_0_i_ival          (io_pads_qspi0_dq_0_i_ival_pin),
    .io_pads_qspi0_dq_0_o_oval          (io_pads_qspi0_dq_0_o_oval_pin),
    .io_pads_qspi0_dq_0_o_oe            (io_pads_qspi0_dq_0_o_oe_pin),
    .io_pads_qspi0_dq_1_i_ival          (io_pads_qspi0_dq_1_i_ival_pin),
    .io_pads_qspi0_dq_1_o_oval          (io_pads_qspi0_dq_1_o_oval_pin),
    .io_pads_qspi0_dq_1_o_oe            (io_pads_qspi0_dq_1_o_oe_pin),
    .io_pads_qspi0_dq_2_i_ival          (io_pads_qspi0_dq_2_i_ival_pin),
    .io_pads_qspi0_dq_2_o_oval          (io_pads_qspi0_dq_2_o_oval_pin),
    .io_pads_qspi0_dq_2_o_oe            (io_pads_qspi0_dq_2_o_oe_pin),
    .io_pads_qspi0_dq_3_i_ival          (io_pads_qspi0_dq_3_i_ival_pin),
    .io_pads_qspi0_dq_3_o_oval          (io_pads_qspi0_dq_3_o_oval_pin),
    .io_pads_qspi0_dq_3_o_oe            (io_pads_qspi0_dq_3_o_oe_pin),
    .io_pads_aon_erst_n_i_ival          (io_pads_aon_erst_n_i_ival_pin),
    .io_pads_dbgmode0_n_i_ival          (io_pads_dbgmode0_n_i_ival       _pin),
    .io_pads_dbgmode1_n_i_ival          (io_pads_dbgmode1_n_i_ival       _pin),
    .io_pads_dbgmode2_n_i_ival          (io_pads_dbgmode2_n_i_ival       _pin),
    .io_pads_bootrom_n_i_ival           (io_pads_bootrom_n_i_ival      _pin),
    .io_pads_aon_pmu_dwakeup_n_i_ival   (io_pads_aon_pmu_dwakeup_n_i_ival_pin),
    .io_pads_aon_pmu_padrst_o_oval      (io_pads_aon_pmu_padrst_o_oval_pin),
    .io_pads_aon_pmu_vddpaden_o_oval    (io_pads_aon_pmu_vddpaden_o_oval_pin)
);

// 1. hfextclk: Input pad
PI u_pad_hfextclk (
    .PAD(hfextclk),
    .C(hfextclk_pin)
);

// 1) hfxoscen: Output pad
PO4 u_pad_hfxoscen (
    .I(hfxoscen_pin),
    .PAD(hfxoscen)
);

// 2) lfextclk: Input pad
PI u_pad_lfextclk (
    .PAD(lfextclk),
    .C(lfextclk_pin)
);

// lfxoscen: Output pad
PO4 u_pad_lfxoscen (
    .I(lfxoscen_pin),
    .PAD(lfxoscen)
);

// 3) io_pads_jtag_TCK_i_ival: Input pad with pull-up
PIU u_pad_io_pads_jtag_TCK_i_ival (
    .PAD(io_pads_jtag_TCK_i_ival),
    .C(io_pads_jtag_TCK_i_ival_pin)
);

// 4) io_pads_jtag_TMS_i_ival and io_pads_jtag_TDI_i_ival: Input pads with pull-up
PIU u_pad_io_pads_jtag_TMS_i_ival (
    .PAD(io_pads_jtag_TMS_i_ival),
    .C(io_pads_jtag_TMS_i_ival_pin)
);

PIU u_pad_io_pads_jtag_TDI_i_ival (
    .PAD(io_pads_jtag_TDI_i_ival),
    .C(io_pads_jtag_TDI_i_ival_pin)
);

// 5) io_pads_jtag_TDO_o_oval and io_pads_jtag_TDO_o_oe: Tri-state output
POT16 u_pad_io_pads_jtag_TDO_o (
    .OEN(~io_pads_jtag_TDO_o_oe_pin),
    .I(io_pads_jtag_TDO_o_oval_pin),
    .PAD(io_pads_jtag_TDO_o)
);

// 6) io_pads_gpioA: Bi-directional port
PB8 u_pad_gpioAX (
    .OEN(~io_pads_gpioA_o_oe_pin[X]),
    .C(io_pads_gpioA_i_ival_pin[X]),
    .PAD(io_pads_gpioA[X]),
    .I(io_pads_gpioA_o_oval_pin[X])
);

// 7) io_pads_gpioB: Bi-directional port
PB8 u_pad_gpioBX (
    .OEN(~io_pads_gpioB_o_oe_pin[X]),
    .C(io_pads_gpioB_i_ival_pin[X]),
    .PAD(io_pads_gpioB[X]),
    .I(io_pads_gpioB_o_oval_pin[X])
);

// 8) io_pads_qspi0_sck_o_oval: Output pad
PO16 u_pad_io_pads_qspi0_sck_o_oval (
    .I(io_pads_qspi0_sck_o_oval_pin),
    .PAD(io_pads_qspi0_sck_o_oval)
);

// 9) io_pads_qspi0_cs_0_o_oval: Output pad
PO16 u_pad_io_pads_qspi0_cs_0_o_oval (
    .I(io_pads_qspi0_cs_0_o_oval_pin),
    .PAD(io_pads_qspi0_cs_0_o_oval)
);

// 10) io_pads_qspi0_dq_0: Bi-directional port
PBCU16 u_pad_io_pads_qspi0_dq_0 (
    .PAD(io_pads_qspi0_dq_0),
    .OEN(~io_pads_qspi0_dq_0_o_oe_pin),
    .REN(1'b0),
    .I(io_pads_qspi0_dq_0_o_oval_pin),
    .C(io_pads_qspi0_dq_0_i_ival_pin)
);

// 11) io_pads_qspi0_dq_1, io_pads_qspi0_dq_2, io_pads_qspi0_dq_3: Bi-directional ports
PBCU16 u_pad_io_pads_qspi0_dq_1 (
    .PAD(io_pads_qspi0_dq_1),
    .OEN(~io_pads_qspi0_dq_1_o_oe_pin),
    .REN(1'b0),
    .I(io_pads_qspi0_dq_1_o_oval_pin),
    .C(io_pads_qspi0_dq_1_i_ival_pin)
);

PBCU16 u_pad_io_pads_qspi0_dq_2 (
    .PAD(io_pads_qspi0_dq_2),
    .OEN(~io_pads_qspi0_dq_2_o_oe_pin),
    .REN(1'b0),
    .I(io_pads_qspi0_dq_2_o_oval_pin),
    .C(io_pads_qspi0_dq_2_i_ival_pin)
);

PBCU16 u_pad_io_pads_qspi0_dq_3 (
    .PAD(io_pads_qspi0_dq_3),
    .OEN(~io_pads_qspi0_dq_3_o_oe_pin),
    .REN(1'b0),
    .I(io_pads_qspi0_dq_3_o_oval_pin),
    .C(io_pads_qspi0_dq_3_i_ival_pin)
);

// 12) io_pads_aon_erst_n_i_ival: Input pad with pull-up
PIU u_pad_io_pads_aon_erst_n_i_ival (
    .PAD(io_pads_aon_erst_n_i_ival),
    .C(io_pads_aon_erst_n_i_ival_pin)
);

// 13) io_pads_dbgmode0_n_i_ival: Input pad with pull-up
PIU u_pad_io_pads_dbgmode0_n_i_ival (
    .PAD(io_pads_dbgmode0_n_i_ival),
    .C(io_pads_dbgmode0_n_i_ival_pin)
);

// 14) io_pads_dbgmode1_n_i_ival and io_pads_dbgmode2_n_i_ival: Input pads with pull-up
PIU u_pad_io_pads_dbgmode1_n_i_ival (
    .PAD(io_pads_dbgmode1_n_i_ival),
    .C(io_pads_dbgmode1_n_i_ival_pin)
);

PIU u_pad_io_pads_dbgmode2_n_i_ival (
    .PAD(io_pads_dbgmode2_n_i_ival),
    .C(io_pads_dbgmode2_n_i_ival_pin)
);

// 15) io_pads_bootrom_n_i_ival: Input pad with pull-up
PIU u_pad_io_pads_bootrom_n_i_ival (
    .PAD(io_pads_bootrom_n_i_ival),
    .C(io_pads_bootrom_n_i_ival_pin)
);

// 16) u_pad_io_pads_aon_pmu_dwakeup_n_i_ival: Input pad with pull-up
PIU u_pad_io_pads_aon_pmu_dwakeup_n_i_ival (
    .PAD(io_pads_aon_pmu_dwakeup_n_i_ival),
    .C(io_pads_aon_pmu_dwakeup_n_i_ival_pin)
);

// 17) io_pads_aon_pmu_padrst_o_oval and io_pads_aon_pmu_vddpaden_o_oval: Output pads
PO16 u_pad_io_pads_aon_pmu_padrst_o_oval (
    .I(io_pads_aon_pmu_padrst_o_oval_pin),
    .PAD(io_pads_aon_pmu_padrst_o_oval)
);

PO16 u_pad_io_pads_aon_pmu_vddpaden_o_oval (
    .I(io_pads_aon_pmu_vddpaden_o_oval_pin),
    .PAD(io_pads_aon_pmu_vddpaden_o_oval)
);