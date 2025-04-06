// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  hdmi_oen,
  pwm_0,
  btns_tri_i,
  leds_tri_o,
  DDR_cas_n,
  DDR_cke,
  DDR_ck_n,
  DDR_ck_p,
  DDR_cs_n,
  DDR_reset_n,
  DDR_odt,
  DDR_ras_n,
  DDR_we_n,
  DDR_ba,
  DDR_addr,
  DDR_dm,
  DDR_dq,
  DDR_dqs_n,
  DDR_dqs_p,
  FIXED_IO_mio,
  FIXED_IO_ddr_vrn,
  FIXED_IO_ddr_vrp,
  FIXED_IO_ps_srstb,
  FIXED_IO_ps_clk,
  FIXED_IO_ps_porb,
  hdmi_ddc_sda_i,
  hdmi_ddc_sda_o,
  hdmi_ddc_sda_t,
  hdmi_ddc_scl_i,
  hdmi_ddc_scl_o,
  hdmi_ddc_scl_t,
  eeprom_i2c_sda_i,
  eeprom_i2c_sda_o,
  eeprom_i2c_sda_t,
  eeprom_i2c_scl_i,
  eeprom_i2c_scl_o,
  eeprom_i2c_scl_t,
  TMDS_clk_p,
  TMDS_clk_n,
  TMDS_data_p,
  TMDS_data_n
);

  (* X_INTERFACE_IGNORE = "true" *)
  output hdmi_oen;
  (* X_INTERFACE_IGNORE = "true" *)
  output pwm_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 btns TRI_I" *)
  (* X_INTERFACE_MODE = "master btns" *)
  input [3:0]btns_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 leds TRI_O" *)
  (* X_INTERFACE_MODE = "master leds" *)
  output [2:0]leds_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *)
  (* X_INTERFACE_MODE = "master DDR" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *)
  inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *)
  inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *)
  inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *)
  inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *)
  inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *)
  inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *)
  inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *)
  inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *)
  inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *)
  inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *)
  inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *)
  inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *)
  inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *)
  inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *)
  (* X_INTERFACE_MODE = "master FIXED_IO" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *)
  inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *)
  inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *)
  inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *)
  inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *)
  inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *)
  inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_ddc SDA_I" *)
  (* X_INTERFACE_MODE = "master hdmi_ddc" *)
  input hdmi_ddc_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_ddc SDA_O" *)
  output hdmi_ddc_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_ddc SDA_T" *)
  output hdmi_ddc_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_ddc SCL_I" *)
  input hdmi_ddc_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_ddc SCL_O" *)
  output hdmi_ddc_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 hdmi_ddc SCL_T" *)
  output hdmi_ddc_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 eeprom_i2c SDA_I" *)
  (* X_INTERFACE_MODE = "master eeprom_i2c" *)
  input eeprom_i2c_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 eeprom_i2c SDA_O" *)
  output eeprom_i2c_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 eeprom_i2c SDA_T" *)
  output eeprom_i2c_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 eeprom_i2c SCL_I" *)
  input eeprom_i2c_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 eeprom_i2c SCL_O" *)
  output eeprom_i2c_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 eeprom_i2c SCL_T" *)
  output eeprom_i2c_scl_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS CLK_P" *)
  (* X_INTERFACE_MODE = "master TMDS" *)
  output TMDS_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS CLK_N" *)
  output TMDS_clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS DATA_P" *)
  output [2:0]TMDS_data_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS DATA_N" *)
  output [2:0]TMDS_data_n;

  // stub module has no contents

endmodule
