#////////////////////////////////////////////////////////////////////////////////
#  project：sd_hdmi_out                                                        //
#                                                                              //
#  Author: JunFN                                                               //
#          853808728@qq.com                                                    //
#          ALINX(shanghai) Technology Co.,Ltd                                  //
#          黑金                                                                //
#     WEB: http://www.alinx.cn/                                                //
#                                                                              //
#////////////////////////////////////////////////////////////////////////////////
#                                                                              //
# Copyright (c) 2017,ALINX(shanghai) Technology Co.,Ltd                        //
#                    All rights reserved                                       //
#                                                                              //
# This source file may be used and distributed without restriction provided    //
# that this copyright statement is not removed from the file and that any      //
# derivative work contains the original copyright notice and the associated    //
# disclaimer.                                                                  //
#                                                                              // 
#////////////////////////////////////////////////////////////////////////////////

#================================================================================
#  Revision History:
#  Date          By            Revision    Change Description
# --------------------------------------------------------------------------------
#  2023/8/22                   1.0          Original
#=================================================================================
proc set_ps_config {bd_cell_name} {
set_property -dict [list \
  CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
  CONFIG.PCW_ACT_CAN0_PERIPHERAL_FREQMHZ {23.8095} \
  CONFIG.PCW_ACT_CAN1_PERIPHERAL_FREQMHZ {23.8095} \
  CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
  CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
  CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {10.000000} \
  CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
  CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
  CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {142.857132} \
  CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
  CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
  CONFIG.PCW_ACT_I2C_PERIPHERAL_FREQMHZ {50} \
  CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
  CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
  CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {100.000000} \
  CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
  CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
  CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
  CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
  CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
  CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
  CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
  CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
  CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
  CONFIG.PCW_ACT_TTC_PERIPHERAL_FREQMHZ {50} \
  CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
  CONFIG.PCW_ACT_USB0_PERIPHERAL_FREQMHZ {60} \
  CONFIG.PCW_ACT_USB1_PERIPHERAL_FREQMHZ {60} \
  CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
  CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
  CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666666} \
  CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
  CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
  CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_CAN_PERIPHERAL_VALID {0} \
  CONFIG.PCW_CLK0_FREQ {100000000} \
  CONFIG.PCW_CLK1_FREQ {142857132} \
  CONFIG.PCW_CLK2_FREQ {10000000} \
  CONFIG.PCW_CLK3_FREQ {10000000} \
  CONFIG.PCW_CORE0_FIQ_INTR {0} \
  CONFIG.PCW_CORE0_IRQ_INTR {0} \
  CONFIG.PCW_CORE1_FIQ_INTR {0} \
  CONFIG.PCW_CORE1_IRQ_INTR {0} \
  CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
  CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
  CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
  CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
  CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
  CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
  CONFIG.PCW_DDR_RAM_BASEADDR {0x00100000} \
  CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
  CONFIG.PCW_DM_WIDTH {4} \
  CONFIG.PCW_DQS_WIDTH {4} \
  CONFIG.PCW_DQ_WIDTH {32} \
  CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
  CONFIG.PCW_EN_4K_TIMER {0} \
  CONFIG.PCW_EN_CAN0 {0} \
  CONFIG.PCW_EN_CAN1 {0} \
  CONFIG.PCW_EN_CLK0_PORT {1} \
  CONFIG.PCW_EN_CLK1_PORT {1} \
  CONFIG.PCW_EN_CLK2_PORT {0} \
  CONFIG.PCW_EN_CLK3_PORT {0} \
  CONFIG.PCW_EN_CLKTRIG0_PORT {0} \
  CONFIG.PCW_EN_CLKTRIG1_PORT {0} \
  CONFIG.PCW_EN_CLKTRIG2_PORT {0} \
  CONFIG.PCW_EN_CLKTRIG3_PORT {0} \
  CONFIG.PCW_EN_DDR {1} \
  CONFIG.PCW_EN_EMIO_CAN0 {0} \
  CONFIG.PCW_EN_EMIO_CAN1 {0} \
  CONFIG.PCW_EN_EMIO_CD_SDIO0 {0} \
  CONFIG.PCW_EN_EMIO_CD_SDIO1 {0} \
  CONFIG.PCW_EN_EMIO_ENET0 {0} \
  CONFIG.PCW_EN_EMIO_ENET1 {0} \
  CONFIG.PCW_EN_EMIO_GPIO {0} \
  CONFIG.PCW_EN_EMIO_I2C0 {1} \
  CONFIG.PCW_EN_EMIO_I2C1 {0} \
  CONFIG.PCW_EN_EMIO_MODEM_UART0 {0} \
  CONFIG.PCW_EN_EMIO_MODEM_UART1 {0} \
  CONFIG.PCW_EN_EMIO_PJTAG {0} \
  CONFIG.PCW_EN_EMIO_SDIO0 {0} \
  CONFIG.PCW_EN_EMIO_SDIO1 {0} \
  CONFIG.PCW_EN_EMIO_SPI0 {0} \
  CONFIG.PCW_EN_EMIO_SPI1 {0} \
  CONFIG.PCW_EN_EMIO_SRAM_INT {0} \
  CONFIG.PCW_EN_EMIO_TRACE {0} \
  CONFIG.PCW_EN_EMIO_TTC0 {0} \
  CONFIG.PCW_EN_EMIO_TTC1 {0} \
  CONFIG.PCW_EN_EMIO_UART0 {0} \
  CONFIG.PCW_EN_EMIO_UART1 {0} \
  CONFIG.PCW_EN_EMIO_WDT {0} \
  CONFIG.PCW_EN_EMIO_WP_SDIO0 {0} \
  CONFIG.PCW_EN_EMIO_WP_SDIO1 {0} \
  CONFIG.PCW_EN_ENET0 {0} \
  CONFIG.PCW_EN_ENET1 {0} \
  CONFIG.PCW_EN_GPIO {0} \
  CONFIG.PCW_EN_I2C0 {1} \
  CONFIG.PCW_EN_I2C1 {0} \
  CONFIG.PCW_EN_MODEM_UART0 {0} \
  CONFIG.PCW_EN_MODEM_UART1 {0} \
  CONFIG.PCW_EN_PJTAG {0} \
  CONFIG.PCW_EN_PTP_ENET0 {0} \
  CONFIG.PCW_EN_PTP_ENET1 {0} \
  CONFIG.PCW_EN_QSPI {1} \
  CONFIG.PCW_EN_RST0_PORT {1} \
  CONFIG.PCW_EN_RST1_PORT {0} \
  CONFIG.PCW_EN_RST2_PORT {0} \
  CONFIG.PCW_EN_RST3_PORT {0} \
  CONFIG.PCW_EN_SDIO0 {1} \
  CONFIG.PCW_EN_SDIO1 {0} \
  CONFIG.PCW_EN_SMC {0} \
  CONFIG.PCW_EN_SPI0 {0} \
  CONFIG.PCW_EN_SPI1 {0} \
  CONFIG.PCW_EN_TRACE {0} \
  CONFIG.PCW_EN_TTC0 {0} \
  CONFIG.PCW_EN_TTC1 {0} \
  CONFIG.PCW_EN_UART0 {0} \
  CONFIG.PCW_EN_UART1 {1} \
  CONFIG.PCW_EN_USB0 {0} \
  CONFIG.PCW_EN_USB1 {0} \
  CONFIG.PCW_EN_WDT {0} \
  CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_FCLK_CLK0_BUF {TRUE} \
  CONFIG.PCW_FCLK_CLK1_BUF {TRUE} \
  CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
  CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {142} \
  CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {50} \
  CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {50} \
  CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
  CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
  CONFIG.PCW_GP0_EN_MODIFIABLE_TXN {1} \
  CONFIG.PCW_GP0_NUM_READ_THREADS {4} \
  CONFIG.PCW_GP0_NUM_WRITE_THREADS {4} \
  CONFIG.PCW_GP1_EN_MODIFIABLE_TXN {1} \
  CONFIG.PCW_GP1_NUM_READ_THREADS {4} \
  CONFIG.PCW_GP1_NUM_WRITE_THREADS {4} \
  CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
  CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {0} \
  CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_I2C0_BASEADDR {0xE0004000} \
  CONFIG.PCW_I2C0_HIGHADDR {0xE0004FFF} \
  CONFIG.PCW_I2C0_I2C0_IO {EMIO} \
  CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {111.111115} \
  CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
  CONFIG.PCW_IMPORT_BOARD_PRESET {None} \
  CONFIG.PCW_INCLUDE_ACP_TRANS_CHECK {0} \
  CONFIG.PCW_IRQ_F2P_INTR {1} \
  CONFIG.PCW_IRQ_F2P_MODE {DIRECT} \
  CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
  CONFIG.PCW_MIO_1_PULLUP {enabled} \
  CONFIG.PCW_MIO_1_SLEW {slow} \
  CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
  CONFIG.PCW_MIO_2_SLEW {slow} \
  CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
  CONFIG.PCW_MIO_3_SLEW {slow} \
  CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
  CONFIG.PCW_MIO_40_PULLUP {enabled} \
  CONFIG.PCW_MIO_40_SLEW {slow} \
  CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
  CONFIG.PCW_MIO_41_PULLUP {enabled} \
  CONFIG.PCW_MIO_41_SLEW {slow} \
  CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
  CONFIG.PCW_MIO_42_PULLUP {enabled} \
  CONFIG.PCW_MIO_42_SLEW {slow} \
  CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
  CONFIG.PCW_MIO_43_PULLUP {enabled} \
  CONFIG.PCW_MIO_43_SLEW {slow} \
  CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
  CONFIG.PCW_MIO_44_PULLUP {enabled} \
  CONFIG.PCW_MIO_44_SLEW {slow} \
  CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
  CONFIG.PCW_MIO_45_PULLUP {enabled} \
  CONFIG.PCW_MIO_45_SLEW {slow} \
  CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
  CONFIG.PCW_MIO_47_PULLUP {enabled} \
  CONFIG.PCW_MIO_47_SLEW {slow} \
  CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
  CONFIG.PCW_MIO_48_PULLUP {enabled} \
  CONFIG.PCW_MIO_48_SLEW {slow} \
  CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
  CONFIG.PCW_MIO_49_PULLUP {enabled} \
  CONFIG.PCW_MIO_49_SLEW {slow} \
  CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
  CONFIG.PCW_MIO_4_SLEW {slow} \
  CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
  CONFIG.PCW_MIO_5_SLEW {slow} \
  CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
  CONFIG.PCW_MIO_6_SLEW {slow} \
  CONFIG.PCW_MIO_PRIMITIVE {54} \
  CONFIG.PCW_MIO_TREE_PERIPHERALS {unassigned#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#SD\
0#SD 0#SD 0#SD 0#SD 0#SD 0#unassigned#SD 0#UART 1#UART 1#unassigned#unassigned#unassigned#unassigned} \
  CONFIG.PCW_MIO_TREE_SIGNALS {unassigned#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#clk#cmd#data[0]#data[1]#data[2]#data[3]#unassigned#cd#tx#rx#unassigned#unassigned#unassigned#unassigned}\
\
  CONFIG.PCW_M_AXI_GP0_ENABLE_STATIC_REMAP {0} \
  CONFIG.PCW_M_AXI_GP0_ID_WIDTH {12} \
  CONFIG.PCW_M_AXI_GP0_SUPPORT_NARROW_BURST {0} \
  CONFIG.PCW_M_AXI_GP0_THREAD_ID_WIDTH {12} \
  CONFIG.PCW_NAND_CYCLES_T_AR {1} \
  CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
  CONFIG.PCW_NAND_CYCLES_T_RC {11} \
  CONFIG.PCW_NAND_CYCLES_T_REA {1} \
  CONFIG.PCW_NAND_CYCLES_T_RR {1} \
  CONFIG.PCW_NAND_CYCLES_T_WC {11} \
  CONFIG.PCW_NAND_CYCLES_T_WP {1} \
  CONFIG.PCW_NOR_CS0_T_CEOE {1} \
  CONFIG.PCW_NOR_CS0_T_PC {1} \
  CONFIG.PCW_NOR_CS0_T_RC {11} \
  CONFIG.PCW_NOR_CS0_T_TR {1} \
  CONFIG.PCW_NOR_CS0_T_WC {11} \
  CONFIG.PCW_NOR_CS0_T_WP {1} \
  CONFIG.PCW_NOR_CS0_WE_TIME {0} \
  CONFIG.PCW_NOR_CS1_T_CEOE {1} \
  CONFIG.PCW_NOR_CS1_T_PC {1} \
  CONFIG.PCW_NOR_CS1_T_RC {11} \
  CONFIG.PCW_NOR_CS1_T_TR {1} \
  CONFIG.PCW_NOR_CS1_T_WC {11} \
  CONFIG.PCW_NOR_CS1_T_WP {1} \
  CONFIG.PCW_NOR_CS1_WE_TIME {0} \
  CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
  CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
  CONFIG.PCW_NOR_SRAM_CS0_T_RC {11} \
  CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
  CONFIG.PCW_NOR_SRAM_CS0_T_WC {11} \
  CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
  CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
  CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
  CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
  CONFIG.PCW_NOR_SRAM_CS1_T_RC {11} \
  CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
  CONFIG.PCW_NOR_SRAM_CS1_T_WC {11} \
  CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
  CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
  CONFIG.PCW_OVERRIDE_BASIC_CLOCK {0} \
  CONFIG.PCW_P2F_I2C0_INTR {0} \
  CONFIG.PCW_P2F_QSPI_INTR {0} \
  CONFIG.PCW_P2F_SDIO0_INTR {0} \
  CONFIG.PCW_P2F_UART1_INTR {0} \
  CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.075} \
  CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.070} \
  CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.077} \
  CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.094} \
  CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.000} \
  CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.001} \
  CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {0.004} \
  CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.035} \
  CONFIG.PCW_PACKAGE_NAME {clg400} \
  CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
  CONFIG.PCW_PERIPHERAL_BOARD_PRESET {None} \
  CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
  CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
  CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
  CONFIG.PCW_PS7_SI_REV {PRODUCTION} \
  CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
  CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
  CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
  CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
  CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
  CONFIG.PCW_QSPI_INTERNAL_HIGHADDRESS {0xFCFFFFFF} \
  CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
  CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
  CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
  CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
  CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
  CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
  CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
  CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_SDIO0_BASEADDR {0xE0100000} \
  CONFIG.PCW_SDIO0_HIGHADDR {0xE0100FFF} \
  CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
  CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
  CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
  CONFIG.PCW_SMC_CYCLE_T0 {NA} \
  CONFIG.PCW_SMC_CYCLE_T1 {NA} \
  CONFIG.PCW_SMC_CYCLE_T2 {NA} \
  CONFIG.PCW_SMC_CYCLE_T3 {NA} \
  CONFIG.PCW_SMC_CYCLE_T4 {NA} \
  CONFIG.PCW_SMC_CYCLE_T5 {NA} \
  CONFIG.PCW_SMC_CYCLE_T6 {NA} \
  CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_SMC_PERIPHERAL_VALID {0} \
  CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_SPI_PERIPHERAL_VALID {0} \
  CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
  CONFIG.PCW_S_AXI_HP0_ID_WIDTH {6} \
  CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
  CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
  CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
  CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
  CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
  CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
  CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
  CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
  CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
  CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
  CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
  CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
  CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
  CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
  CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_UART1_BASEADDR {0xE0001000} \
  CONFIG.PCW_UART1_BAUD_RATE {115200} \
  CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
  CONFIG.PCW_UART1_HIGHADDR {0xE0001FFF} \
  CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
  CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
  CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
  CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
  CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
  CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
  CONFIG.PCW_UIPARAM_DDR_AL {0} \
  CONFIG.PCW_UIPARAM_DDR_BL {8} \
  CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.25} \
  CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.25} \
  CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.25} \
  CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.25} \
  CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {76.428} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {76.428} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {76.428} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {76.428} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
  CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {76.687} \
  CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {77.8025} \
  CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {72.8405} \
  CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {111.904} \
  CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.0} \
  CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.0} \
  CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0.0} \
  CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0.0} \
  CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {73.119} \
  CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {63.8935} \
  CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {77.045} \
  CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
  CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {111.903} \
  CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
  CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
  CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333333} \
  CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
  CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
  CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J128M16 HA-125} \
  CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
  CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
  CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
  CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {0} \
  CONFIG.PCW_UIPARAM_GENERATE_SUMMARY {NA} \
  CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
  CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
  CONFIG.PCW_USE_AXI_FABRIC_IDLE {0} \
  CONFIG.PCW_USE_AXI_NONSECURE {0} \
  CONFIG.PCW_USE_CORESIGHT {0} \
  CONFIG.PCW_USE_CROSS_TRIGGER {0} \
  CONFIG.PCW_USE_CR_FABRIC {1} \
  CONFIG.PCW_USE_DDR_BYPASS {0} \
  CONFIG.PCW_USE_DEBUG {0} \
  CONFIG.PCW_USE_DMA0 {0} \
  CONFIG.PCW_USE_DMA1 {0} \
  CONFIG.PCW_USE_DMA2 {0} \
  CONFIG.PCW_USE_DMA3 {0} \
  CONFIG.PCW_USE_EXPANDED_IOP {0} \
  CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
  CONFIG.PCW_USE_HIGH_OCM {0} \
  CONFIG.PCW_USE_M_AXI_GP0 {1} \
  CONFIG.PCW_USE_M_AXI_GP1 {0} \
  CONFIG.PCW_USE_PROC_EVENT_BUS {0} \
  CONFIG.PCW_USE_PS_SLCR_REGISTERS {0} \
  CONFIG.PCW_USE_S_AXI_ACP {0} \
  CONFIG.PCW_USE_S_AXI_GP0 {0} \
  CONFIG.PCW_USE_S_AXI_GP1 {0} \
  CONFIG.PCW_USE_S_AXI_HP0 {1} \
  CONFIG.PCW_USE_S_AXI_HP1 {0} \
  CONFIG.PCW_USE_S_AXI_HP2 {0} \
  CONFIG.PCW_USE_S_AXI_HP3 {0} \
  CONFIG.PCW_USE_TRACE {0} \
  CONFIG.PCW_VALUE_SILVERSION {3} \
  CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
  CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
  CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
] [get_bd_cells $bd_cell_name]
}