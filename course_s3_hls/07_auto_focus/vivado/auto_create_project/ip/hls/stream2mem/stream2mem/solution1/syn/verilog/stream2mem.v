// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="stream2mem_stream2mem,hls_ip_2023_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.300000,HLS_SYN_LAT=-1,HLS_SYN_TPT=-1,HLS_SYN_MEM=5,HLS_SYN_DSP=0,HLS_SYN_FF=2574,HLS_SYN_LUT=3333,HLS_VERSION=2023_1}" *)

module stream2mem (
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
input  [23:0] vstream_TDATA;
input  [2:0] vstream_TKEEP;
input  [2:0] vstream_TSTRB;
input  [0:0] vstream_TUSER;
input  [0:0] vstream_TLAST;
input  [0:0] vstream_TID;
input  [0:0] vstream_TDEST;
output  [31:0] indexw;
input  [31:0] indexr;
input   vstream_TVALID;
output   vstream_TREADY;

 reg    ap_rst_n_inv;
wire   [63:0] pMemPort;
wire   [31:0] rows;
wire   [31:0] cols;
wire   [31:0] baseAddr_q0;
wire    gmem_AWREADY;
wire    gmem_WREADY;
wire    gmem_ARREADY;
wire    gmem_RVALID;
wire   [31:0] gmem_RDATA;
wire   [8:0] gmem_RFIFONUM;
wire    gmem_BVALID;
wire   [1:0] gmem_BRESP;
wire   [0:0] gmem_BID;
wire   [0:0] gmem_BUSER;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_start;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_done;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_continue;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_idle;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_ready;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_vstream_TREADY;
wire   [23:0] AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_data_din;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_data_write;
wire   [10:0] AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_rows_c_din;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_rows_c_write;
wire   [7:0] AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_cols_c_din;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_cols_c_write;
wire    mat2mem_1080_1920_U0_ap_start;
wire    mat2mem_1080_1920_U0_ap_done;
wire    mat2mem_1080_1920_U0_ap_continue;
wire    mat2mem_1080_1920_U0_ap_idle;
wire    mat2mem_1080_1920_U0_ap_ready;
wire    mat2mem_1080_1920_U0_img_rows_read;
wire    mat2mem_1080_1920_U0_img_cols_read;
wire    mat2mem_1080_1920_U0_img_data_read;
wire    mat2mem_1080_1920_U0_m_axi_gmem_AWVALID;
wire   [63:0] mat2mem_1080_1920_U0_m_axi_gmem_AWADDR;
wire   [0:0] mat2mem_1080_1920_U0_m_axi_gmem_AWID;
wire   [31:0] mat2mem_1080_1920_U0_m_axi_gmem_AWLEN;
wire   [2:0] mat2mem_1080_1920_U0_m_axi_gmem_AWSIZE;
wire   [1:0] mat2mem_1080_1920_U0_m_axi_gmem_AWBURST;
wire   [1:0] mat2mem_1080_1920_U0_m_axi_gmem_AWLOCK;
wire   [3:0] mat2mem_1080_1920_U0_m_axi_gmem_AWCACHE;
wire   [2:0] mat2mem_1080_1920_U0_m_axi_gmem_AWPROT;
wire   [3:0] mat2mem_1080_1920_U0_m_axi_gmem_AWQOS;
wire   [3:0] mat2mem_1080_1920_U0_m_axi_gmem_AWREGION;
wire   [0:0] mat2mem_1080_1920_U0_m_axi_gmem_AWUSER;
wire    mat2mem_1080_1920_U0_m_axi_gmem_WVALID;
wire   [31:0] mat2mem_1080_1920_U0_m_axi_gmem_WDATA;
wire   [3:0] mat2mem_1080_1920_U0_m_axi_gmem_WSTRB;
wire    mat2mem_1080_1920_U0_m_axi_gmem_WLAST;
wire   [0:0] mat2mem_1080_1920_U0_m_axi_gmem_WID;
wire   [0:0] mat2mem_1080_1920_U0_m_axi_gmem_WUSER;
wire    mat2mem_1080_1920_U0_m_axi_gmem_ARVALID;
wire   [63:0] mat2mem_1080_1920_U0_m_axi_gmem_ARADDR;
wire   [0:0] mat2mem_1080_1920_U0_m_axi_gmem_ARID;
wire   [31:0] mat2mem_1080_1920_U0_m_axi_gmem_ARLEN;
wire   [2:0] mat2mem_1080_1920_U0_m_axi_gmem_ARSIZE;
wire   [1:0] mat2mem_1080_1920_U0_m_axi_gmem_ARBURST;
wire   [1:0] mat2mem_1080_1920_U0_m_axi_gmem_ARLOCK;
wire   [3:0] mat2mem_1080_1920_U0_m_axi_gmem_ARCACHE;
wire   [2:0] mat2mem_1080_1920_U0_m_axi_gmem_ARPROT;
wire   [3:0] mat2mem_1080_1920_U0_m_axi_gmem_ARQOS;
wire   [3:0] mat2mem_1080_1920_U0_m_axi_gmem_ARREGION;
wire   [0:0] mat2mem_1080_1920_U0_m_axi_gmem_ARUSER;
wire    mat2mem_1080_1920_U0_m_axi_gmem_RREADY;
wire    mat2mem_1080_1920_U0_m_axi_gmem_BREADY;
wire   [1:0] mat2mem_1080_1920_U0_baseAddr_address0;
wire    mat2mem_1080_1920_U0_baseAddr_ce0;
wire   [31:0] mat2mem_1080_1920_U0_indexw;
wire    mat2mem_1080_1920_U0_indexw_ap_vld;
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

stream2mem_control_s_axi #(
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
    .baseAddr_address0(mat2mem_1080_1920_U0_baseAddr_address0),
    .baseAddr_ce0(mat2mem_1080_1920_U0_baseAddr_ce0),
    .baseAddr_q0(baseAddr_q0)
);

stream2mem_gmem_m_axi #(
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
    .I_ARVALID(1'b0),
    .I_ARREADY(gmem_ARREADY),
    .I_ARADDR(64'd0),
    .I_ARLEN(32'd0),
    .I_RVALID(gmem_RVALID),
    .I_RREADY(1'b0),
    .I_RDATA(gmem_RDATA),
    .I_RFIFONUM(gmem_RFIFONUM),
    .I_AWVALID(mat2mem_1080_1920_U0_m_axi_gmem_AWVALID),
    .I_AWREADY(gmem_AWREADY),
    .I_AWADDR(mat2mem_1080_1920_U0_m_axi_gmem_AWADDR),
    .I_AWLEN(mat2mem_1080_1920_U0_m_axi_gmem_AWLEN),
    .I_WVALID(mat2mem_1080_1920_U0_m_axi_gmem_WVALID),
    .I_WREADY(gmem_WREADY),
    .I_WDATA(mat2mem_1080_1920_U0_m_axi_gmem_WDATA),
    .I_WSTRB(mat2mem_1080_1920_U0_m_axi_gmem_WSTRB),
    .I_BVALID(gmem_BVALID),
    .I_BREADY(mat2mem_1080_1920_U0_m_axi_gmem_BREADY)
);

stream2mem_AXIvideo2xfMat_24_16_1080_1920_1_2_s AXIvideo2xfMat_24_16_1080_1920_1_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_start),
    .ap_done(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_done),
    .ap_continue(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_continue),
    .ap_idle(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_idle),
    .ap_ready(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_ready),
    .vstream_TDATA(vstream_TDATA),
    .vstream_TVALID(vstream_TVALID),
    .vstream_TREADY(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_vstream_TREADY),
    .vstream_TKEEP(vstream_TKEEP),
    .vstream_TSTRB(vstream_TSTRB),
    .vstream_TUSER(vstream_TUSER),
    .vstream_TLAST(vstream_TLAST),
    .vstream_TID(vstream_TID),
    .vstream_TDEST(vstream_TDEST),
    .img_data_din(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_data_din),
    .img_data_num_data_valid(img_data_num_data_valid),
    .img_data_fifo_cap(img_data_fifo_cap),
    .img_data_full_n(img_data_full_n),
    .img_data_write(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_data_write),
    .img_rows_c_din(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_rows_c_din),
    .img_rows_c_num_data_valid(img_rows_c_num_data_valid),
    .img_rows_c_fifo_cap(img_rows_c_fifo_cap),
    .img_rows_c_full_n(img_rows_c_full_n),
    .img_rows_c_write(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_rows_c_write),
    .img_cols_c_din(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_cols_c_din),
    .img_cols_c_num_data_valid(img_cols_c_num_data_valid),
    .img_cols_c_fifo_cap(img_cols_c_fifo_cap),
    .img_cols_c_full_n(img_cols_c_full_n),
    .img_cols_c_write(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_cols_c_write)
);

stream2mem_mat2mem_1080_1920_s mat2mem_1080_1920_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(mat2mem_1080_1920_U0_ap_start),
    .ap_done(mat2mem_1080_1920_U0_ap_done),
    .ap_continue(mat2mem_1080_1920_U0_ap_continue),
    .ap_idle(mat2mem_1080_1920_U0_ap_idle),
    .ap_ready(mat2mem_1080_1920_U0_ap_ready),
    .img_rows_dout(img_rows_c_dout),
    .img_rows_num_data_valid(img_rows_c_num_data_valid),
    .img_rows_fifo_cap(img_rows_c_fifo_cap),
    .img_rows_empty_n(img_rows_c_empty_n),
    .img_rows_read(mat2mem_1080_1920_U0_img_rows_read),
    .img_cols_dout(img_cols_c_dout),
    .img_cols_num_data_valid(img_cols_c_num_data_valid),
    .img_cols_fifo_cap(img_cols_c_fifo_cap),
    .img_cols_empty_n(img_cols_c_empty_n),
    .img_cols_read(mat2mem_1080_1920_U0_img_cols_read),
    .img_data_dout(img_data_dout),
    .img_data_num_data_valid(img_data_num_data_valid),
    .img_data_fifo_cap(img_data_fifo_cap),
    .img_data_empty_n(img_data_empty_n),
    .img_data_read(mat2mem_1080_1920_U0_img_data_read),
    .m_axi_gmem_AWVALID(mat2mem_1080_1920_U0_m_axi_gmem_AWVALID),
    .m_axi_gmem_AWREADY(gmem_AWREADY),
    .m_axi_gmem_AWADDR(mat2mem_1080_1920_U0_m_axi_gmem_AWADDR),
    .m_axi_gmem_AWID(mat2mem_1080_1920_U0_m_axi_gmem_AWID),
    .m_axi_gmem_AWLEN(mat2mem_1080_1920_U0_m_axi_gmem_AWLEN),
    .m_axi_gmem_AWSIZE(mat2mem_1080_1920_U0_m_axi_gmem_AWSIZE),
    .m_axi_gmem_AWBURST(mat2mem_1080_1920_U0_m_axi_gmem_AWBURST),
    .m_axi_gmem_AWLOCK(mat2mem_1080_1920_U0_m_axi_gmem_AWLOCK),
    .m_axi_gmem_AWCACHE(mat2mem_1080_1920_U0_m_axi_gmem_AWCACHE),
    .m_axi_gmem_AWPROT(mat2mem_1080_1920_U0_m_axi_gmem_AWPROT),
    .m_axi_gmem_AWQOS(mat2mem_1080_1920_U0_m_axi_gmem_AWQOS),
    .m_axi_gmem_AWREGION(mat2mem_1080_1920_U0_m_axi_gmem_AWREGION),
    .m_axi_gmem_AWUSER(mat2mem_1080_1920_U0_m_axi_gmem_AWUSER),
    .m_axi_gmem_WVALID(mat2mem_1080_1920_U0_m_axi_gmem_WVALID),
    .m_axi_gmem_WREADY(gmem_WREADY),
    .m_axi_gmem_WDATA(mat2mem_1080_1920_U0_m_axi_gmem_WDATA),
    .m_axi_gmem_WSTRB(mat2mem_1080_1920_U0_m_axi_gmem_WSTRB),
    .m_axi_gmem_WLAST(mat2mem_1080_1920_U0_m_axi_gmem_WLAST),
    .m_axi_gmem_WID(mat2mem_1080_1920_U0_m_axi_gmem_WID),
    .m_axi_gmem_WUSER(mat2mem_1080_1920_U0_m_axi_gmem_WUSER),
    .m_axi_gmem_ARVALID(mat2mem_1080_1920_U0_m_axi_gmem_ARVALID),
    .m_axi_gmem_ARREADY(1'b0),
    .m_axi_gmem_ARADDR(mat2mem_1080_1920_U0_m_axi_gmem_ARADDR),
    .m_axi_gmem_ARID(mat2mem_1080_1920_U0_m_axi_gmem_ARID),
    .m_axi_gmem_ARLEN(mat2mem_1080_1920_U0_m_axi_gmem_ARLEN),
    .m_axi_gmem_ARSIZE(mat2mem_1080_1920_U0_m_axi_gmem_ARSIZE),
    .m_axi_gmem_ARBURST(mat2mem_1080_1920_U0_m_axi_gmem_ARBURST),
    .m_axi_gmem_ARLOCK(mat2mem_1080_1920_U0_m_axi_gmem_ARLOCK),
    .m_axi_gmem_ARCACHE(mat2mem_1080_1920_U0_m_axi_gmem_ARCACHE),
    .m_axi_gmem_ARPROT(mat2mem_1080_1920_U0_m_axi_gmem_ARPROT),
    .m_axi_gmem_ARQOS(mat2mem_1080_1920_U0_m_axi_gmem_ARQOS),
    .m_axi_gmem_ARREGION(mat2mem_1080_1920_U0_m_axi_gmem_ARREGION),
    .m_axi_gmem_ARUSER(mat2mem_1080_1920_U0_m_axi_gmem_ARUSER),
    .m_axi_gmem_RVALID(1'b0),
    .m_axi_gmem_RREADY(mat2mem_1080_1920_U0_m_axi_gmem_RREADY),
    .m_axi_gmem_RDATA(32'd0),
    .m_axi_gmem_RLAST(1'b0),
    .m_axi_gmem_RID(1'd0),
    .m_axi_gmem_RFIFONUM(9'd0),
    .m_axi_gmem_RUSER(1'd0),
    .m_axi_gmem_RRESP(2'd0),
    .m_axi_gmem_BVALID(gmem_BVALID),
    .m_axi_gmem_BREADY(mat2mem_1080_1920_U0_m_axi_gmem_BREADY),
    .m_axi_gmem_BRESP(gmem_BRESP),
    .m_axi_gmem_BID(gmem_BID),
    .m_axi_gmem_BUSER(gmem_BUSER),
    .pMemPort(pMemPort),
    .baseAddr_address0(mat2mem_1080_1920_U0_baseAddr_address0),
    .baseAddr_ce0(mat2mem_1080_1920_U0_baseAddr_ce0),
    .baseAddr_q0(baseAddr_q0),
    .indexw(mat2mem_1080_1920_U0_indexw),
    .indexw_ap_vld(mat2mem_1080_1920_U0_indexw_ap_vld),
    .r(indexr)
);

stream2mem_fifo_w24_d2_S img_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_data_din),
    .if_full_n(img_data_full_n),
    .if_write(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_data_write),
    .if_dout(img_data_dout),
    .if_num_data_valid(img_data_num_data_valid),
    .if_fifo_cap(img_data_fifo_cap),
    .if_empty_n(img_data_empty_n),
    .if_read(mat2mem_1080_1920_U0_img_data_read)
);

stream2mem_fifo_w11_d2_S img_rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_rows_c_din),
    .if_full_n(img_rows_c_full_n),
    .if_write(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_rows_c_write),
    .if_dout(img_rows_c_dout),
    .if_num_data_valid(img_rows_c_num_data_valid),
    .if_fifo_cap(img_rows_c_fifo_cap),
    .if_empty_n(img_rows_c_empty_n),
    .if_read(mat2mem_1080_1920_U0_img_rows_read)
);

stream2mem_fifo_w8_d2_S_x img_cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_cols_c_din),
    .if_full_n(img_cols_c_full_n),
    .if_write(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_img_cols_c_write),
    .if_dout(img_cols_c_dout),
    .if_num_data_valid(img_cols_c_num_data_valid),
    .if_fifo_cap(img_cols_c_fifo_cap),
    .if_empty_n(img_cols_c_empty_n),
    .if_read(mat2mem_1080_1920_U0_img_cols_read)
);

assign AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_continue = 1'b1;

assign AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_start = 1'b1;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign gmem_BID = 1'd0;

assign gmem_BRESP = 2'd0;

assign gmem_BUSER = 1'd0;

assign indexw = mat2mem_1080_1920_U0_indexw;

assign mat2mem_1080_1920_U0_ap_continue = 1'b1;

assign mat2mem_1080_1920_U0_ap_start = 1'b1;

assign vstream_TREADY = AXIvideo2xfMat_24_16_1080_1920_1_2_U0_vstream_TREADY;

endmodule //stream2mem
