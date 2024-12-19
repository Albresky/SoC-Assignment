// LAB4: 实例化 IO 单元和 e203_soc_top 模块，将 e203_soc_top 模块的所有输入输出外围包一圈 IO

module full_chip(
    // 晶体管高速时钟（16MHz）
    input  hfextclk,
    // 晶体管高速时钟使能信号
    output hfxoscen, 

    // 晶体管低速时钟（32.768KHz）
    input  lfextclk,
    // 晶体管低速时钟使能信号
    output lfxoscen,

    // JTAG TCK 输入，需上拉
    input   io_pads_jtag_TCK_i_ival,

    // JTAG TMS 输入，需上拉
    input   io_pads_jtag_TMS_i_ival,

    // JTAG TDI 输入，需上拉
    input   io_pads_jtag_TDI_i_ival,

    // JTAG TDO 输出，有使能
    output  io_pads_jtag_TDO_o,

    // GPIO 双向端口，有使能
    input  [31:0] io_pads_gpioA,
    input  [31:0] io_pads_gpioB,

    // QSPI0 SCK 和 CS 输出，无使能
    output  io_pads_qspi0_sck_o_oval,
    output  io_pads_qspi0_cs_0_o_oval,

    // QSPI0 DQ 双向 I/O，有使能，需上拉
    input   io_pads_qspi0_dq_0,
    input   io_pads_qspi0_dq_1,
    input   io_pads_qspi0_dq_2,
    input   io_pads_qspi0_dq_3,
  
    // Erst 输入，需上拉
    input   io_pads_aon_erst_n_i_ival,

    // 调试模式输入，需上拉
    input  io_pads_dbgmode0_n_i_ival,
    input  io_pads_dbgmode1_n_i_ival,
    input  io_pads_dbgmode2_n_i_ival,

    // BootRom 输入，需上拉
    input  io_pads_bootrom_n_i_ival,

    // 唤醒输入，需上拉
    input  io_pads_aon_pmu_dwakeup_n_i_ival,

    // PMU 输出，无使能
    output io_pads_aon_pmu_padrst_o_oval,
    output io_pads_aon_pmu_vddpaden_o_oval 
);

    wire hfextclk_pin;
    wire hfxoscen_pin;
    wire lfextclk_pin;
    wire lfxoscen_pin;
    wire io_pads_jtag_TCK_i_ival_pin;
    wire io_pads_jtag_TMS_i_ival_pin;
    wire io_pads_jtag_TDI_i_ival_pin;
    wire io_pads_jtag_TDO_o_oval_pin;
    wire io_pads_jtag_TDO_o_oe_pin;
    wire [31:0] io_pads_gpioA_i_ival_pin;
    wire [31:0] io_pads_gpioA_o_oval_pin;
    wire [31:0] io_pads_gpioA_o_oe_pin;
    wire [31:0] io_pads_gpioB_i_ival_pin;
    wire [31:0] io_pads_gpioB_o_oval_pin;
    wire [31:0] io_pads_gpioB_o_oe_pin;
    wire io_pads_qspi0_sck_o_oval_pin;
    wire io_pads_qspi0_cs_0_o_oval_pin;
    wire io_pads_qspi0_dq_0_i_ival_pin;
    wire io_pads_qspi0_dq_0_o_oval_pin;
    wire io_pads_qspi0_dq_0_o_oe_pin;
    wire io_pads_qspi0_dq_1_i_ival_pin;
    wire io_pads_qspi0_dq_1_o_oval_pin;
    wire io_pads_qspi0_dq_1_o_oe_pin;
    wire io_pads_qspi0_dq_2_i_ival_pin;
    wire io_pads_qspi0_dq_2_o_oval_pin;
    wire io_pads_qspi0_dq_2_o_oe_pin;
    wire io_pads_qspi0_dq_3_i_ival_pin;
    wire io_pads_qspi0_dq_3_o_oval_pin;
    wire io_pads_qspi0_dq_3_o_oe_pin;
    wire io_pads_aon_erst_n_i_ival_pin;
    wire io_pads_dbgmode0_n_i_ival_pin;
    wire io_pads_dbgmode1_n_i_ival_pin;
    wire io_pads_dbgmode2_n_i_ival_pin;
    wire io_pads_bootrom_n_i_ival_pin;
    wire io_pads_aon_pmu_dwakeup_n_i_ival_pin;
    wire io_pads_aon_pmu_padrst_o_oval_pin;
    wire io_pads_aon_pmu_vddpaden_o_oval_pin;

    ///////////////////////////////////////////
    ///////// 实例化 e203_soc_top 模块 /////////
    ///////////////////////////////////////////
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
        .io_pads_gpioA_o_oe                 (io_pads_gpioA_o_oe_pin),
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
        .io_pads_dbgmode0_n_i_ival          (io_pads_dbgmode0_n_i_ival_pin),
        .io_pads_dbgmode1_n_i_ival          (io_pads_dbgmode1_n_i_ival_pin),
        .io_pads_dbgmode2_n_i_ival          (io_pads_dbgmode2_n_i_ival_pin),
        .io_pads_bootrom_n_i_ival           (io_pads_bootrom_n_i_ival_pin),
        .io_pads_aon_pmu_dwakeup_n_i_ival   (io_pads_aon_pmu_dwakeup_n_i_ival_pin),
        .io_pads_aon_pmu_padrst_o_oval      (io_pads_aon_pmu_padrst_o_oval_pin),
        .io_pads_aon_pmu_vddpaden_o_oval    (io_pads_aon_pmu_vddpaden_o_oval_pin)
    );

    ////////////////////////////////
    //////// 实例化 IO 单元 /////////
    ////////////////////////////////
    // hfextclk: 输入端口
    PI u_pad_hfextclk (
        .PAD(hfextclk),
        .C(hfextclk_pin)
    );

    // hfxoscen: 输出端口
    PO4 u_pad_hfxoscen (
        .I(hfxoscen_pin),
        .PAD(hfxoscen)
    );

    // lfextclk: 输入端口
    PI u_pad_lfextclk (
        .PAD(lfextclk),
        .C(lfextclk_pin)
    );

    // lfxoscen: 输出端口
    PO4 u_pad_lfxoscen (
        .I(lfxoscen_pin),
        .PAD(lfxoscen)
    );

    // io_pads_jtag_TCK_i_ival: 输入端口，需上拉
    PIU u_pad_io_pads_jtag_TCK_i_ival (
        .PAD(io_pads_jtag_TCK_i_ival),
        .C(io_pads_jtag_TCK_i_ival_pin)
    );

    // io_pads_jtag_TMS_i_ival 和 io_pads_jtag_TDI_i_ival: 输入端口，需上拉
    PIU u_pad_io_pads_jtag_TMS_i_ival (
        .PAD(io_pads_jtag_TMS_i_ival),
        .C(io_pads_jtag_TMS_i_ival_pin)
    );

    PIU u_pad_io_pads_jtag_TDI_i_ival (
        .PAD(io_pads_jtag_TDI_i_ival),
        .C(io_pads_jtag_TDI_i_ival_pin)
    );

    // io_pads_jtag_TDO_o_oval 和 io_pads_jtag_TDO_o_oe: 三态输出
    POT16 u_pad_io_pads_jtag_TDO_o (
        .OEN(~io_pads_jtag_TDO_o_oe_pin),
        .I(io_pads_jtag_TDO_o_oval_pin),
        .PAD(io_pads_jtag_TDO_o)
    );

    // io_pads_gpioA: 双向端口
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : gpioA
            PB8 u_pad_gpioAX (
                .OEN(~io_pads_gpioA_o_oe_pin[i]),
                .C(io_pads_gpioA_i_ival_pin[i]),
                .PAD(io_pads_gpioA[i]),
                .I(io_pads_gpioA_o_oval_pin[i])
            );
        end
    endgenerate

    // io_pads_gpioB: 双向端口
    generate
        for (i = 0; i < 32; i = i + 1) begin : gpioB
            PB8 u_pad_gpioBX (
                .OEN(~io_pads_gpioB_o_oe_pin[i]),
                .C(io_pads_gpioB_i_ival_pin[i]),
                .PAD(io_pads_gpioB[i]),
                .I(io_pads_gpioB_o_oval_pin[i])
            );
        end
    endgenerate

    // io_pads_qspi0_sck_o_oval: 输出端口
    PO16 u_pad_io_pads_qspi0_sck_o_oval (
        .I(io_pads_qspi0_sck_o_oval_pin),
        .PAD(io_pads_qspi0_sck_o_oval)
    );

    // io_pads_qspi0_cs_0_o_oval: 输出端口
    PO16 u_pad_io_pads_qspi0_cs_0_o_oval (
        .I(io_pads_qspi0_cs_0_o_oval_pin),
        .PAD(io_pads_qspi0_cs_0_o_oval)
    );

    // io_pads_qspi0_dq_0: 双向端口
    PBCU16 u_pad_io_pads_qspi0_dq_0 (
        .PAD(io_pads_qspi0_dq_0),
        .OEN(~io_pads_qspi0_dq_0_o_oe_pin),
        .REN(1'b0),
        .I(io_pads_qspi0_dq_0_o_oval_pin),
        .C(io_pads_qspi0_dq_0_i_ival_pin)
    );

    // io_pads_qspi0_dq_1, io_pads_qspi0_dq_2, io_pads_qspi0_dq_3: 双向端口
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

    // io_pads_aon_erst_n_i_ival: 输入端口，需上拉
    PIU u_pad_io_pads_aon_erst_n_i_ival (
        .PAD(io_pads_aon_erst_n_i_ival),
        .C(io_pads_aon_erst_n_i_ival_pin)
    );

    // io_pads_dbgmode0_n_i_ival: 输入端口，需上拉
    PIU u_pad_io_pads_dbgmode0_n_i_ival (
        .PAD(io_pads_dbgmode0_n_i_ival),
        .C(io_pads_dbgmode0_n_i_ival_pin)
    );

    // io_pads_dbgmode1_n_i_ival 和 io_pads_dbgmode2_n_i_ival: 输入端口，需上拉
    PIU u_pad_io_pads_dbgmode1_n_i_ival (
        .PAD(io_pads_dbgmode1_n_i_ival),
        .C(io_pads_dbgmode1_n_i_ival_pin)
    );

    PIU u_pad_io_pads_dbgmode2_n_i_ival (
        .PAD(io_pads_dbgmode2_n_i_ival),
        .C(io_pads_dbgmode2_n_i_ival_pin)
    );

    // io_pads_bootrom_n_i_ival: 输入端口，需上拉
    PIU u_pad_io_pads_bootrom_n_i_ival (
        .PAD(io_pads_bootrom_n_i_ival),
        .C(io_pads_bootrom_n_i_ival_pin)
    );

    // io_pads_aon_pmu_dwakeup_n_i_ival: 输入端口，需上拉
    PIU u_pad_io_pads_aon_pmu_dwakeup_n_i_ival (
        .PAD(io_pads_aon_pmu_dwakeup_n_i_ival),
        .C(io_pads_aon_pmu_dwakeup_n_i_ival_pin)
    );

    // io_pads_aon_pmu_padrst_o_oval 和 io_pads_aon_pmu_vddpaden_o_oval: 输出端口
    PO16 u_pad_io_pads_aon_pmu_padrst_o_oval (
        .I(io_pads_aon_pmu_padrst_o_oval_pin),
        .PAD(io_pads_aon_pmu_padrst_o_oval)
    );

    PO16 u_pad_io_pads_aon_pmu_vddpaden_o_oval (
        .I(io_pads_aon_pmu_vddpaden_o_oval_pin),
        .PAD(io_pads_aon_pmu_vddpaden_o_oval)
    );

endmodule
