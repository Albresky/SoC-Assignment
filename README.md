# SoC-Assignment

BUPT 片上集成系统分析与设计课程实践（2024.12）

## 目录结构

```bash
.
├── doc
│   ├── RISC-V微处理器芯片设计实践.docx
│   ├── summary.pdf
│   └── 评分规则.docx
├── projects
│   ├── lib
│   │   └── SMIC180
│   │       ├── e203_hbirdv2-master
│   │       ├── MEM_IP_20MHz
│   │       ├── SCC018UG_UHD_RVT_V0p4a
│   │       └── SP018_V1.5b
│   └── risc-v
│       └── 20241209-V1.0_group5
│           ├── data_org
│           ├── post_sim
│           ├── pre_sim
│           ├── pre_sim_clock
│           ├── pre_sim_memory
│           ├── pre_sim_org
│           ├── pre_sim_test_mode
│           ├── syn
│           └── syn_bak
├── README.md
└── src
    ├── LAB1_setup
    │   ├── e203_hbirdv2-master.zip
    │   ├── MEM_IP_20MHz.zip
    │   ├── SCC018UG_UHD_RVT_V0p4a.zip
    │   └── SP018_V1.5b.zip
    ├── LAB2_pre_sim_org
    │   ├── e203_filelist.f
    │   ├── run_vcs.csh
    │   └── run_verdi.csh
    ├── LAB3_pre_sim_memory
    │   └── ra1shd.pdf
    ├── LAB4_pre_sim_full_chip
    │   ├── SMIC_SP018_IO_DataBook_Ver1p3.pdf
    │   └── SMIC_Standard_IO_Application_Note_Ver3p0.pdf
    └── LAB7_syn
        ├── cons.tcl
        ├── dc.tcl
        └── setup_dc.tcl

25 directories, 17 files
```

## 环境配置

从 [Release/Synopsys_tools_v2018.09](https://github.com/Albresky/SoC-Assignment/releases/tag/Synopsys_tools_v2018.09) 下载相关工具及补丁，虚拟机使用 Ubuntu 18.04。


按照步骤参考 [实验报告](doc/summary.pdf) 进行配置。

## 实验报告

- [实验报告](doc/summary.pdf)
  - 包含环境配置可能遇到的所有问题及解决方案
  - 包含每个 Lab 的关键步骤及注意事项

## 关于

本仓库记录本人的实践过程，仅供参考。