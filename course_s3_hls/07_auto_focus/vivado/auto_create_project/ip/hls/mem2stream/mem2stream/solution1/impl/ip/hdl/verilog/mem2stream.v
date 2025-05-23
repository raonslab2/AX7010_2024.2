// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mem2stream_mem2stream,hls_ip_2023_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.300000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=12,HLS_SYN_DSP=0,HLS_SYN_FF=2828,HLS_SYN_LUT=3553,HLS_VERSION=2023_1}" *)

module mem2stream (
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        vstream_TDATA,
        vstream_TKEEP,
        vstream_TSTRB,
        vstream_TUSER,
        vstream_TLAST,
        vstream_TID,
        vstream_TDEST,
        indexw,
        indexr,
        vstream_TVALID,
        vstream_TREADY
);

parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_ID_WIDTH = 1;
parameter    C_M_AXI_GMEM_ADDR_WIDTH = 64;
parameter    C_M_AXI_GMEM_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_AWUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_ARUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_WUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_RUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_BUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_USER_VALUE = 0;
parameter    C_M_AXI_GMEM_PROT_VALUE = 0;
parameter    C_M_AXI_GMEM_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_GMEM_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_AWADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_AWID;
output  [7:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [C_M_AXI_GMEM_AWUSER_WIDTH - 1:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_WDATA;
output  [C_M_AXI_GMEM_WSTRB_WIDTH - 1:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_WID;
output  [C_M_AXI_GMEM_WUSER_WIDTH - 1:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_ARADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_ARID;
output  [7:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [C_M_AXI_GMEM_ARUSER_WIDTH - 1:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_RID;
input  [C_M_AXI_GMEM_RUSER_WIDTH - 1:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_BID;
input  [C_M_AXI_GMEM_BUSER_WIDTH - 1:0] m_axi_gmem_BUSER;
output  [23:0] vstream_TDATA;
output  [2:0] vstream_TKEEP;
output  [2:0] vstream_TSTRB;
output  [0:0] vstream_TUSER;
output  [0:0] vstream_TLAST;
output  [0:0] vstream_TID;
output  [0:0] vstream_TDEST;
input  [31:0] indexw;
output  [31:0] indexr;
output   vstream_TVALID;
input   vstream_TREADY;

 reg    ap_rst_n_inv;
wire   [63:0] pMemPort;
wire   [31:0] rows;
wire   [31:0] cols;
wire   [31:0] baseAddr_q0;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire    gmem_AWREADY;
wire    gmem_WREADY;
wire    gmem_ARREADY;
wire    gmem_RVALID;
wire   [31:0] gmem_RDATA;
wire    gmem_RLAST;
wire   [0:0] gmem_RID;
wire   [8:0] gmem_RFIFONUM;
wire   [0:0] gmem_RUSER;
wire   [1:0] gmem_RRESP;
wire    gmem_BVALID;
wire    mem2mat_1080_1920_U0_ap_start;
wire    mem2mat_1080_1920_U0_ap_done;
wire    mem2mat_1080_1920_U0_ap_continue;
wire    mem2mat_1080_1920_U0_ap_idle;
wire    mem2mat_1080_1920_U0_ap_ready;
wire    mem2mat_1080_1920_U0_start_out;
wire    mem2mat_1080_1920_U0_start_write;
wire   [23:0] mem2mat_1080_1920_U0_img_data_din;
wire    mem2mat_1080_1920_U0_img_data_write;
wire    mem2mat_1080_1920_U0_m_axi_gmem_AWVALID;
wire   [63:0] mem2mat_1080_1920_U0_m_axi_gmem_AWADDR;
wire   [0:0] mem2mat_1080_1920_U0_m_axi_gmem_AWID;
wire   [31:0] mem2mat_1080_1920_U0_m_axi_gmem_AWLEN;
wire   [2:0] mem2mat_1080_1920_U0_m_axi_gmem_AWSIZE;
wire   [1:0] mem2mat_1080_1920_U0_m_axi_gmem_AWBURST;
wire   [1:0] mem2mat_1080_1920_U0_m_axi_gmem_AWLOCK;
wire   [3:0] mem2mat_1080_1920_U0_m_axi_gmem_AWCACHE;
wire   [2:0] mem2mat_1080_1920_U0_m_axi_gmem_AWPROT;
wire   [3:0] mem2mat_1080_1920_U0_m_axi_gmem_AWQOS;
wire   [3:0] mem2mat_1080_1920_U0_m_axi_gmem_AWREGION;
wire   [0:0] mem2mat_1080_1920_U0_m_axi_gmem_AWUSER;
wire    mem2mat_1080_1920_U0_m_axi_gmem_WVALID;
wire   [31:0] mem2mat_1080_1920_U0_m_axi_gmem_WDATA;
wire   [3:0] mem2mat_1080_1920_U0_m_axi_gmem_WSTRB;
wire    mem2mat_1080_1920_U0_m_axi_gmem_WLAST;
wire   [0:0] mem2mat_1080_1920_U0_m_axi_gmem_WID;
wire   [0:0] mem2mat_1080_1920_U0_m_axi_gmem_WUSER;
wire    mem2mat_1080_1920_U0_m_axi_gmem_ARVALID;
wire   [63:0] mem2mat_1080_1920_U0_m_axi_gmem_ARADDR;
wire   [0:0] mem2mat_1080_1920_U0_m_axi_gmem_ARID;
wire   [31:0] mem2mat_1080_1920_U0_m_axi_gmem_ARLEN;
wire   [2:0] mem2mat_1080_1920_U0_m_axi_gmem_ARSIZE;
wire   [1:0] mem2mat_1080_1920_U0_m_axi_gmem_ARBURST;
wire   [1:0] mem2mat_1080_1920_U0_m_axi_gmem_ARLOCK;
wire   [3:0] mem2mat_1080_1920_U0_m_axi_gmem_ARCACHE;
wire   [2:0] mem2mat_1080_1920_U0_m_axi_gmem_ARPROT;
wire   [3:0] mem2mat_1080_1920_U0_m_axi_gmem_ARQOS;
wire   [3:0] mem2mat_1080_1920_U0_m_axi_gmem_ARREGION;
wire   [0:0] mem2mat_1080_1920_U0_m_axi_gmem_ARUSER;
wire    mem2mat_1080_1920_U0_m_axi_gmem_RREADY;
wire    mem2mat_1080_1920_U0_m_axi_gmem_BREADY;
wire   [1:0] mem2mat_1080_1920_U0_baseAddr_address0;
wire    mem2mat_1080_1920_U0_baseAddr_ce0;
wire   [31:0] mem2mat_1080_1920_U0_indexr;
wire    mem2mat_1080_1920_U0_indexr_ap_vld;
wire   [10:0] mem2mat_1080_1920_U0_img_rows_c_din;
wire    mem2mat_1080_1920_U0_img_rows_c_write;
wire   [7:0] mem2mat_1080_1920_U0_img_cols_c_din;
wire    mem2mat_1080_1920_U0_img_cols_c_write;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_start;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_done;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_continue;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_idle;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_ready;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_img_1_read;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_img_2_read;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_img_data_read;
wire   [23:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TDATA;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TVALID;
wire   [2:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TKEEP;
wire   [2:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TSTRB;
wire   [0:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TUSER;
wire   [0:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TLAST;
wire   [0:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TID;
wire   [0:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TDEST;
wire    img_data_full_n;
wire   [23:0] img_data_dout;
wire   [1:0] img_data_num_data_valid;
wire   [1:0] img_data_fifo_cap;
wire    img_data_empty_n;
wire    img_rows_c_full_n;
wire   [10:0] img_rows_c_dout;
wire   [1:0] img_rows_c_num_data_valid;
wire   [1:0] img_rows_c_fifo_cap;
wire    img_rows_c_empty_n;
wire    img_cols_c_full_n;
wire   [7:0] img_cols_c_dout;
wire   [1:0] img_cols_c_num_data_valid;
wire   [1:0] img_cols_c_fifo_cap;
wire    img_cols_c_empty_n;
wire    ap_sync_done;
wire   [0:0] start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_din;
wire    start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_full_n;
wire   [0:0] start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dout;
wire    start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_empty_n;

mem2stream_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .pMemPort(pMemPort),
    .rows(rows),
    .cols(cols),
    .baseAddr_address0(mem2mat_1080_1920_U0_baseAddr_address0),
    .baseAddr_ce0(mem2mat_1080_1920_U0_baseAddr_ce0),
    .baseAddr_q0(baseAddr_q0),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

mem2stream_gmem_m_axi #(
    .CONSERVATIVE( 1 ),
    .USER_MAXREQS( 5 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_GMEM_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_GMEM_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_GMEM_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_GMEM_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_GMEM_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_GMEM_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_GMEM_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_GMEM_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_GMEM_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_GMEM_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_GMEM_CACHE_VALUE ),
    .USER_RFIFONUM_WIDTH( 9 ),
    .USER_DW( 32 ),
    .USER_AW( 64 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ))
gmem_m_axi_U(
    .AWVALID(m_axi_gmem_AWVALID),
    .AWREADY(m_axi_gmem_AWREADY),
    .AWADDR(m_axi_gmem_AWADDR),
    .AWID(m_axi_gmem_AWID),
    .AWLEN(m_axi_gmem_AWLEN),
    .AWSIZE(m_axi_gmem_AWSIZE),
    .AWBURST(m_axi_gmem_AWBURST),
    .AWLOCK(m_axi_gmem_AWLOCK),
    .AWCACHE(m_axi_gmem_AWCACHE),
    .AWPROT(m_axi_gmem_AWPROT),
    .AWQOS(m_axi_gmem_AWQOS),
    .AWREGION(m_axi_gmem_AWREGION),
    .AWUSER(m_axi_gmem_AWUSER),
    .WVALID(m_axi_gmem_WVALID),
    .WREADY(m_axi_gmem_WREADY),
    .WDATA(m_axi_gmem_WDATA),
    .WSTRB(m_axi_gmem_WSTRB),
    .WLAST(m_axi_gmem_WLAST),
    .WID(m_axi_gmem_WID),
    .WUSER(m_axi_gmem_WUSER),
    .ARVALID(m_axi_gmem_ARVALID),
    .ARREADY(m_axi_gmem_ARREADY),
    .ARADDR(m_axi_gmem_ARADDR),
    .ARID(m_axi_gmem_ARID),
    .ARLEN(m_axi_gmem_ARLEN),
    .ARSIZE(m_axi_gmem_ARSIZE),
    .ARBURST(m_axi_gmem_ARBURST),
    .ARLOCK(m_axi_gmem_ARLOCK),
    .ARCACHE(m_axi_gmem_ARCACHE),
    .ARPROT(m_axi_gmem_ARPROT),
    .ARQOS(m_axi_gmem_ARQOS),
    .ARREGION(m_axi_gmem_ARREGION),
    .ARUSER(m_axi_gmem_ARUSER),
    .RVALID(m_axi_gmem_RVALID),
    .RREADY(m_axi_gmem_RREADY),
    .RDATA(m_axi_gmem_RDATA),
    .RLAST(m_axi_gmem_RLAST),
    .RID(m_axi_gmem_RID),
    .RUSER(m_axi_gmem_RUSER),
    .RRESP(m_axi_gmem_RRESP),
    .BVALID(m_axi_gmem_BVALID),
    .BREADY(m_axi_gmem_BREADY),
    .BRESP(m_axi_gmem_BRESP),
    .BID(m_axi_gmem_BID),
    .BUSER(m_axi_gmem_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(mem2mat_1080_1920_U0_m_axi_gmem_ARVALID),
    .I_ARREADY(gmem_ARREADY),
    .I_ARADDR(mem2mat_1080_1920_U0_m_axi_gmem_ARADDR),
    .I_ARLEN(mem2mat_1080_1920_U0_m_axi_gmem_ARLEN),
    .I_RVALID(gmem_RVALID),
    .I_RREADY(mem2mat_1080_1920_U0_m_axi_gmem_RREADY),
    .I_RDATA(gmem_RDATA),
    .I_RFIFONUM(gmem_RFIFONUM),
    .I_AWVALID(1'b0),
    .I_AWREADY(gmem_AWREADY),
    .I_AWADDR(64'd0),
    .I_AWLEN(32'd0),
    .I_WVALID(1'b0),
    .I_WREADY(gmem_WREADY),
    .I_WDATA(32'd0),
    .I_WSTRB(4'd0),
    .I_BVALID(gmem_BVALID),
    .I_BREADY(1'b0)
);

mem2stream_mem2mat_1080_1920_s mem2mat_1080_1920_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(mem2mat_1080_1920_U0_ap_start),
    .start_full_n(start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_full_n),
    .ap_done(mem2mat_1080_1920_U0_ap_done),
    .ap_continue(mem2mat_1080_1920_U0_ap_continue),
    .ap_idle(mem2mat_1080_1920_U0_ap_idle),
    .ap_ready(mem2mat_1080_1920_U0_ap_ready),
    .start_out(mem2mat_1080_1920_U0_start_out),
    .start_write(mem2mat_1080_1920_U0_start_write),
    .p_read(11'd1080),
    .p_read1(8'd128),
    .img_data_din(mem2mat_1080_1920_U0_img_data_din),
    .img_data_num_data_valid(img_data_num_data_valid),
    .img_data_fifo_cap(img_data_fifo_cap),
    .img_data_full_n(img_data_full_n),
    .img_data_write(mem2mat_1080_1920_U0_img_data_write),
    .m_axi_gmem_AWVALID(mem2mat_1080_1920_U0_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(1'b0),
    .m_axi_gmem_AWADDR(mem2mat_1080_1920_U0_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(mem2mat_1080_1920_U0_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(mem2mat_1080_1920_U0_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(mem2mat_1080_1920_U0_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(mem2mat_1080_1920_U0_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(mem2mat_1080_1920_U0_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(mem2mat_1080_1920_U0_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(mem2mat_1080_1920_U0_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(mem2mat_1080_1920_U0_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(mem2mat_1080_1920_U0_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(mem2mat_1080_1920_U0_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(mem2mat_1080_1920_U0_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(1'b0),
    .m_axi_gmem_WDATA(mem2mat_1080_1920_U0_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(mem2mat_1080_1920_U0_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(mem2mat_1080_1920_U0_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(mem2mat_1080_1920_U0_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(mem2mat_1080_1920_U0_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(mem2mat_1080_1920_U0_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(gmem_ARREADY),
    .m_axi_gmem_ARADDR(mem2mat_1080_1920_U0_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(mem2mat_1080_1920_U0_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(mem2mat_1080_1920_U0_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(mem2mat_1080_1920_U0_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(mem2mat_1080_1920_U0_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(mem2mat_1080_1920_U0_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(mem2mat_1080_1920_U0_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(mem2mat_1080_1920_U0_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(mem2mat_1080_1920_U0_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(mem2mat_1080_1920_U0_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(mem2mat_1080_1920_U0_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(gmem_RVALID),
    .m_axi_gmem_RREADY(mem2mat_1080_1920_U0_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(gmem_RDATA),
    .m_axi_gmem_RLAST(gmem_RLAST),
    .m_axi_gmem_RID(gmem_RID),
    .m_axi_gmem_RFIFONUM(gmem_RFIFONUM),
    .m_axi_gmem_RUSER(gmem_RUSER),
    .m_axi_gmem_RRESP(gmem_RRESP),
    .m_axi_gmem_BVALID(1'b0),
    .m_axi_gmem_BREADY(mem2mat_1080_1920_U0_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(2'd0),
    .m_axi_gmem_BID(1'd0),
    .m_axi_gmem_BUSER(1'd0),
    .pMemPort(pMemPort),
    .baseAddr_address0(mem2mat_1080_1920_U0_baseAddr_address0),
    .baseAddr_ce0(mem2mat_1080_1920_U0_baseAddr_ce0),
    .baseAddr_q0(baseAddr_q0),
    .w(indexw),
    .indexr(mem2mat_1080_1920_U0_indexr),
    .indexr_ap_vld(mem2mat_1080_1920_U0_indexr_ap_vld),
    .img_rows_c_din(mem2mat_1080_1920_U0_img_rows_c_din),
    .img_rows_c_num_data_valid(img_rows_c_num_data_valid),
    .img_rows_c_fifo_cap(img_rows_c_fifo_cap),
    .img_rows_c_full_n(img_rows_c_full_n),
    .img_rows_c_write(mem2mat_1080_1920_U0_img_rows_c_write),
    .img_cols_c_din(mem2mat_1080_1920_U0_img_cols_c_din),
    .img_cols_c_num_data_valid(img_cols_c_num_data_valid),
    .img_cols_c_fifo_cap(img_cols_c_fifo_cap),
    .img_cols_c_full_n(img_cols_c_full_n),
    .img_cols_c_write(mem2mat_1080_1920_U0_img_cols_c_write)
);

mem2stream_xfMat2AXIvideo_24_16_1080_1920_1_2_s xfMat2AXIvideo_24_16_1080_1920_1_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_start),
    .ap_done(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_done),
    .ap_continue(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_continue),
    .ap_idle(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_idle),
    .ap_ready(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_ready),
    .img_1_dout(img_rows_c_dout),
    .img_1_num_data_valid(img_rows_c_num_data_valid),
    .img_1_fifo_cap(img_rows_c_fifo_cap),
    .img_1_empty_n(img_rows_c_empty_n),
    .img_1_read(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_img_1_read),
    .img_2_dout(img_cols_c_dout),
    .img_2_num_data_valid(img_cols_c_num_data_valid),
    .img_2_fifo_cap(img_cols_c_fifo_cap),
    .img_2_empty_n(img_cols_c_empty_n),
    .img_2_read(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_img_2_read),
    .img_data_dout(img_data_dout),
    .img_data_num_data_valid(img_data_num_data_valid),
    .img_data_fifo_cap(img_data_fifo_cap),
    .img_data_empty_n(img_data_empty_n),
    .img_data_read(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_img_data_read),
    .vstream_TDATA(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TDATA),
    .vstream_TVALID(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TVALID),
    .vstream_TREADY(vstream_TREADY),
    .vstream_TKEEP(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TKEEP),
    .vstream_TSTRB(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TSTRB),
    .vstream_TUSER(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TUSER),
    .vstream_TLAST(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TLAST),
    .vstream_TID(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TID),
    .vstream_TDEST(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TDEST)
);

mem2stream_fifo_w24_d2_S img_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(mem2mat_1080_1920_U0_img_data_din),
    .if_full_n(img_data_full_n),
    .if_write(mem2mat_1080_1920_U0_img_data_write),
    .if_dout(img_data_dout),
    .if_num_data_valid(img_data_num_data_valid),
    .if_fifo_cap(img_data_fifo_cap),
    .if_empty_n(img_data_empty_n),
    .if_read(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_img_data_read)
);

mem2stream_fifo_w11_d2_S img_rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(mem2mat_1080_1920_U0_img_rows_c_din),
    .if_full_n(img_rows_c_full_n),
    .if_write(mem2mat_1080_1920_U0_img_rows_c_write),
    .if_dout(img_rows_c_dout),
    .if_num_data_valid(img_rows_c_num_data_valid),
    .if_fifo_cap(img_rows_c_fifo_cap),
    .if_empty_n(img_rows_c_empty_n),
    .if_read(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_img_1_read)
);

mem2stream_fifo_w8_d2_S img_cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(mem2mat_1080_1920_U0_img_cols_c_din),
    .if_full_n(img_cols_c_full_n),
    .if_write(mem2mat_1080_1920_U0_img_cols_c_write),
    .if_dout(img_cols_c_dout),
    .if_num_data_valid(img_cols_c_num_data_valid),
    .if_fifo_cap(img_cols_c_fifo_cap),
    .if_empty_n(img_cols_c_empty_n),
    .if_read(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_img_2_read)
);

mem2stream_start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0 start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_din),
    .if_full_n(start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_full_n),
    .if_write(mem2mat_1080_1920_U0_start_write),
    .if_dout(start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dout),
    .if_empty_n(start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_empty_n),
    .if_read(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_ready)
);

assign ap_done = ap_sync_done;

assign ap_idle = (xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_idle & mem2mat_1080_1920_U0_ap_idle);

assign ap_ready = mem2mat_1080_1920_U0_ap_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_done = (xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_done & mem2mat_1080_1920_U0_ap_done);

assign gmem_RID = 1'd0;

assign gmem_RLAST = 1'b0;

assign gmem_RRESP = 2'd0;

assign gmem_RUSER = 1'd0;

assign indexr = mem2mat_1080_1920_U0_indexr;

assign mem2mat_1080_1920_U0_ap_continue = ap_sync_done;

assign mem2mat_1080_1920_U0_ap_start = ap_start;

assign start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_din = 1'b1;

assign vstream_TDATA = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TDATA;

assign vstream_TDEST = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TDEST;

assign vstream_TID = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TID;

assign vstream_TKEEP = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TKEEP;

assign vstream_TLAST = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TLAST;

assign vstream_TSTRB = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TSTRB;

assign vstream_TUSER = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TUSER;

assign vstream_TVALID = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_vstream_TVALID;

assign xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_continue = ap_sync_done;

assign xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_start = start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_empty_n;


reg find_df_deadlock = 0;
// synthesis translate_off
`include "mem2stream_hls_deadlock_detector.vh"
// synthesis translate_on

reg find_kernel_block = 0;
// synthesis translate_off
`include "mem2stream_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on

endmodule //mem2stream

