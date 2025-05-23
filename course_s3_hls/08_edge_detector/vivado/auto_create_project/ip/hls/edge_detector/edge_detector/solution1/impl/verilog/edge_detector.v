// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="edge_detector_edge_detector,hls_ip_2023_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.050500,HLS_SYN_LAT=2086335,HLS_SYN_TPT=2086326,HLS_SYN_MEM=3,HLS_SYN_DSP=0,HLS_SYN_FF=1555,HLS_SYN_LUT=2974,HLS_VERSION=2023_1}" *)

module edge_detector (
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
        src_TDATA,
        src_TKEEP,
        src_TSTRB,
        src_TUSER,
        src_TLAST,
        src_TID,
        src_TDEST,
        dst_TDATA,
        dst_TKEEP,
        dst_TSTRB,
        dst_TUSER,
        dst_TLAST,
        dst_TID,
        dst_TDEST,
        src_TVALID,
        src_TREADY,
        dst_TVALID,
        dst_TREADY
);

parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

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
input  [23:0] src_TDATA;
input  [2:0] src_TKEEP;
input  [2:0] src_TSTRB;
input  [0:0] src_TUSER;
input  [0:0] src_TLAST;
input  [0:0] src_TID;
input  [0:0] src_TDEST;
output  [23:0] dst_TDATA;
output  [2:0] dst_TKEEP;
output  [2:0] dst_TSTRB;
output  [0:0] dst_TUSER;
output  [0:0] dst_TLAST;
output  [0:0] dst_TID;
output  [0:0] dst_TDEST;
input   src_TVALID;
output   src_TREADY;
output   dst_TVALID;
input   dst_TREADY;

 reg    ap_rst_n_inv;
wire   [7:0] threshold;
wire    Block_entry1_proc_U0_ap_start;
wire    Block_entry1_proc_U0_ap_done;
wire    Block_entry1_proc_U0_ap_continue;
wire    Block_entry1_proc_U0_ap_idle;
wire    Block_entry1_proc_U0_ap_ready;
wire   [7:0] Block_entry1_proc_U0_ap_return;
wire    threshold_1_channel_full_n;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_start;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_done;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_continue;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_idle;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_ready;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_start_out;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_start_write;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_src_TREADY;
wire   [23:0] AXIvideo2xfMat_24_16_1080_1920_1_2_U0_srcImg_data_din;
wire    AXIvideo2xfMat_24_16_1080_1920_1_2_U0_srcImg_data_write;
wire    xfrgb2gray_1080_1920_U0_ap_start;
wire    xfrgb2gray_1080_1920_U0_ap_done;
wire    xfrgb2gray_1080_1920_U0_ap_continue;
wire    xfrgb2gray_1080_1920_U0_ap_idle;
wire    xfrgb2gray_1080_1920_U0_ap_ready;
wire    xfrgb2gray_1080_1920_U0_srcImg_data_read;
wire   [7:0] xfrgb2gray_1080_1920_U0_grayImg_data_din;
wire    xfrgb2gray_1080_1920_U0_grayImg_data_write;
wire    xfrgb2gray_1080_1920_U0_start_out;
wire    xfrgb2gray_1080_1920_U0_start_write;
wire    xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_start;
wire    xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_done;
wire    xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_continue;
wire    xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_idle;
wire    xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_ready;
wire    xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_start_out;
wire    xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_start_write;
wire    xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_grayImg_data_read;
wire   [7:0] xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_x_data_din;
wire    xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_x_data_write;
wire   [7:0] xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_y_data_din;
wire    xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_y_data_write;
wire    AddWeightedKernel_1080_1920_U0_ap_start;
wire    AddWeightedKernel_1080_1920_U0_ap_done;
wire    AddWeightedKernel_1080_1920_U0_ap_continue;
wire    AddWeightedKernel_1080_1920_U0_ap_idle;
wire    AddWeightedKernel_1080_1920_U0_ap_ready;
wire    AddWeightedKernel_1080_1920_U0_sobelImg_x_data_read;
wire    AddWeightedKernel_1080_1920_U0_sobelImg_y_data_read;
wire   [7:0] AddWeightedKernel_1080_1920_U0_sobelImg_data_din;
wire    AddWeightedKernel_1080_1920_U0_sobelImg_data_write;
wire    thresholding_1080_1920_U0_ap_start;
wire    thresholding_1080_1920_U0_ap_done;
wire    thresholding_1080_1920_U0_ap_continue;
wire    thresholding_1080_1920_U0_ap_idle;
wire    thresholding_1080_1920_U0_ap_ready;
wire    thresholding_1080_1920_U0_start_out;
wire    thresholding_1080_1920_U0_start_write;
wire    thresholding_1080_1920_U0_sobelImg_data_read;
wire   [7:0] thresholding_1080_1920_U0_thresholdImg_data_din;
wire    thresholding_1080_1920_U0_thresholdImg_data_write;
wire    xfgray2rgb_1080_1920_U0_ap_start;
wire    xfgray2rgb_1080_1920_U0_ap_done;
wire    xfgray2rgb_1080_1920_U0_ap_continue;
wire    xfgray2rgb_1080_1920_U0_ap_idle;
wire    xfgray2rgb_1080_1920_U0_ap_ready;
wire    xfgray2rgb_1080_1920_U0_thresholdImg_data_read;
wire   [23:0] xfgray2rgb_1080_1920_U0_rgbSobel_data_din;
wire    xfgray2rgb_1080_1920_U0_rgbSobel_data_write;
wire    xfgray2rgb_1080_1920_U0_start_out;
wire    xfgray2rgb_1080_1920_U0_start_write;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_start;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_done;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_continue;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_idle;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_ready;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_rgbSobel_data_read;
wire   [23:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TDATA;
wire    xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TVALID;
wire   [2:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TKEEP;
wire   [2:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TSTRB;
wire   [0:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TUSER;
wire   [0:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TLAST;
wire   [0:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TID;
wire   [0:0] xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TDEST;
wire   [7:0] threshold_1_channel_dout;
wire   [3:0] threshold_1_channel_num_data_valid;
wire   [3:0] threshold_1_channel_fifo_cap;
wire    threshold_1_channel_empty_n;
wire    srcImg_data_full_n;
wire   [23:0] srcImg_data_dout;
wire   [1:0] srcImg_data_num_data_valid;
wire   [1:0] srcImg_data_fifo_cap;
wire    srcImg_data_empty_n;
wire    grayImg_data_full_n;
wire   [7:0] grayImg_data_dout;
wire   [1:0] grayImg_data_num_data_valid;
wire   [1:0] grayImg_data_fifo_cap;
wire    grayImg_data_empty_n;
wire    sobelImg_x_data_full_n;
wire   [7:0] sobelImg_x_data_dout;
wire   [1:0] sobelImg_x_data_num_data_valid;
wire   [1:0] sobelImg_x_data_fifo_cap;
wire    sobelImg_x_data_empty_n;
wire    sobelImg_y_data_full_n;
wire   [7:0] sobelImg_y_data_dout;
wire   [1:0] sobelImg_y_data_num_data_valid;
wire   [1:0] sobelImg_y_data_fifo_cap;
wire    sobelImg_y_data_empty_n;
wire    sobelImg_data_full_n;
wire   [7:0] sobelImg_data_dout;
wire   [1:0] sobelImg_data_num_data_valid;
wire   [1:0] sobelImg_data_fifo_cap;
wire    sobelImg_data_empty_n;
wire    thresholdImg_data_full_n;
wire   [7:0] thresholdImg_data_dout;
wire   [1:0] thresholdImg_data_num_data_valid;
wire   [1:0] thresholdImg_data_fifo_cap;
wire    thresholdImg_data_empty_n;
wire    rgbSobel_data_full_n;
wire   [23:0] rgbSobel_data_dout;
wire   [1:0] rgbSobel_data_num_data_valid;
wire   [1:0] rgbSobel_data_fifo_cap;
wire    rgbSobel_data_empty_n;
wire   [0:0] start_for_xfrgb2gray_1080_1920_U0_din;
wire    start_for_xfrgb2gray_1080_1920_U0_full_n;
wire   [0:0] start_for_xfrgb2gray_1080_1920_U0_dout;
wire    start_for_xfrgb2gray_1080_1920_U0_empty_n;
wire   [0:0] start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_din;
wire    start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_full_n;
wire   [0:0] start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_dout;
wire    start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_empty_n;
wire   [0:0] start_for_AddWeightedKernel_1080_1920_U0_din;
wire    start_for_AddWeightedKernel_1080_1920_U0_full_n;
wire   [0:0] start_for_AddWeightedKernel_1080_1920_U0_dout;
wire    start_for_AddWeightedKernel_1080_1920_U0_empty_n;
wire   [0:0] start_for_xfgray2rgb_1080_1920_U0_din;
wire    start_for_xfgray2rgb_1080_1920_U0_full_n;
wire   [0:0] start_for_xfgray2rgb_1080_1920_U0_dout;
wire    start_for_xfgray2rgb_1080_1920_U0_empty_n;
wire   [0:0] start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_din;
wire    start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_full_n;
wire   [0:0] start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dout;
wire    start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_empty_n;

edge_detector_control_s_axi #(
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
    .threshold(threshold)
);

edge_detector_Block_entry1_proc Block_entry1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_entry1_proc_U0_ap_start),
    .ap_done(Block_entry1_proc_U0_ap_done),
    .ap_continue(Block_entry1_proc_U0_ap_continue),
    .ap_idle(Block_entry1_proc_U0_ap_idle),
    .ap_ready(Block_entry1_proc_U0_ap_ready),
    .threshold(threshold),
    .ap_return(Block_entry1_proc_U0_ap_return)
);

edge_detector_AXIvideo2xfMat_24_16_1080_1920_1_2_s AXIvideo2xfMat_24_16_1080_1920_1_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_start),
    .start_full_n(start_for_xfrgb2gray_1080_1920_U0_full_n),
    .ap_done(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_done),
    .ap_continue(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_continue),
    .ap_idle(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_idle),
    .ap_ready(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_ready),
    .start_out(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_start_out),
    .start_write(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_start_write),
    .src_TDATA(src_TDATA),
    .src_TVALID(src_TVALID),
    .src_TREADY(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_src_TREADY),
    .src_TKEEP(src_TKEEP),
    .src_TSTRB(src_TSTRB),
    .src_TUSER(src_TUSER),
    .src_TLAST(src_TLAST),
    .src_TID(src_TID),
    .src_TDEST(src_TDEST),
    .srcImg_data_din(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_srcImg_data_din),
    .srcImg_data_num_data_valid(srcImg_data_num_data_valid),
    .srcImg_data_fifo_cap(srcImg_data_fifo_cap),
    .srcImg_data_full_n(srcImg_data_full_n),
    .srcImg_data_write(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_srcImg_data_write)
);

edge_detector_xfrgb2gray_1080_1920_s xfrgb2gray_1080_1920_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(xfrgb2gray_1080_1920_U0_ap_start),
    .start_full_n(start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_full_n),
    .ap_done(xfrgb2gray_1080_1920_U0_ap_done),
    .ap_continue(xfrgb2gray_1080_1920_U0_ap_continue),
    .ap_idle(xfrgb2gray_1080_1920_U0_ap_idle),
    .ap_ready(xfrgb2gray_1080_1920_U0_ap_ready),
    .srcImg_data_dout(srcImg_data_dout),
    .srcImg_data_num_data_valid(srcImg_data_num_data_valid),
    .srcImg_data_fifo_cap(srcImg_data_fifo_cap),
    .srcImg_data_empty_n(srcImg_data_empty_n),
    .srcImg_data_read(xfrgb2gray_1080_1920_U0_srcImg_data_read),
    .grayImg_data_din(xfrgb2gray_1080_1920_U0_grayImg_data_din),
    .grayImg_data_num_data_valid(grayImg_data_num_data_valid),
    .grayImg_data_fifo_cap(grayImg_data_fifo_cap),
    .grayImg_data_full_n(grayImg_data_full_n),
    .grayImg_data_write(xfrgb2gray_1080_1920_U0_grayImg_data_write),
    .start_out(xfrgb2gray_1080_1920_U0_start_out),
    .start_write(xfrgb2gray_1080_1920_U0_start_write)
);

edge_detector_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_s xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_start),
    .start_full_n(start_for_AddWeightedKernel_1080_1920_U0_full_n),
    .ap_done(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_done),
    .ap_continue(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_continue),
    .ap_idle(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_idle),
    .ap_ready(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_ready),
    .start_out(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_start_out),
    .start_write(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_start_write),
    .grayImg_data_dout(grayImg_data_dout),
    .grayImg_data_num_data_valid(grayImg_data_num_data_valid),
    .grayImg_data_fifo_cap(grayImg_data_fifo_cap),
    .grayImg_data_empty_n(grayImg_data_empty_n),
    .grayImg_data_read(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_grayImg_data_read),
    .sobelImg_x_data_din(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_x_data_din),
    .sobelImg_x_data_num_data_valid(sobelImg_x_data_num_data_valid),
    .sobelImg_x_data_fifo_cap(sobelImg_x_data_fifo_cap),
    .sobelImg_x_data_full_n(sobelImg_x_data_full_n),
    .sobelImg_x_data_write(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_x_data_write),
    .sobelImg_y_data_din(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_y_data_din),
    .sobelImg_y_data_num_data_valid(sobelImg_y_data_num_data_valid),
    .sobelImg_y_data_fifo_cap(sobelImg_y_data_fifo_cap),
    .sobelImg_y_data_full_n(sobelImg_y_data_full_n),
    .sobelImg_y_data_write(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_y_data_write)
);

edge_detector_AddWeightedKernel_1080_1920_s AddWeightedKernel_1080_1920_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AddWeightedKernel_1080_1920_U0_ap_start),
    .ap_done(AddWeightedKernel_1080_1920_U0_ap_done),
    .ap_continue(AddWeightedKernel_1080_1920_U0_ap_continue),
    .ap_idle(AddWeightedKernel_1080_1920_U0_ap_idle),
    .ap_ready(AddWeightedKernel_1080_1920_U0_ap_ready),
    .sobelImg_x_data_dout(sobelImg_x_data_dout),
    .sobelImg_x_data_num_data_valid(sobelImg_x_data_num_data_valid),
    .sobelImg_x_data_fifo_cap(sobelImg_x_data_fifo_cap),
    .sobelImg_x_data_empty_n(sobelImg_x_data_empty_n),
    .sobelImg_x_data_read(AddWeightedKernel_1080_1920_U0_sobelImg_x_data_read),
    .sobelImg_y_data_dout(sobelImg_y_data_dout),
    .sobelImg_y_data_num_data_valid(sobelImg_y_data_num_data_valid),
    .sobelImg_y_data_fifo_cap(sobelImg_y_data_fifo_cap),
    .sobelImg_y_data_empty_n(sobelImg_y_data_empty_n),
    .sobelImg_y_data_read(AddWeightedKernel_1080_1920_U0_sobelImg_y_data_read),
    .sobelImg_data_din(AddWeightedKernel_1080_1920_U0_sobelImg_data_din),
    .sobelImg_data_num_data_valid(sobelImg_data_num_data_valid),
    .sobelImg_data_fifo_cap(sobelImg_data_fifo_cap),
    .sobelImg_data_full_n(sobelImg_data_full_n),
    .sobelImg_data_write(AddWeightedKernel_1080_1920_U0_sobelImg_data_write)
);

edge_detector_thresholding_1080_1920_s thresholding_1080_1920_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(thresholding_1080_1920_U0_ap_start),
    .start_full_n(start_for_xfgray2rgb_1080_1920_U0_full_n),
    .ap_done(thresholding_1080_1920_U0_ap_done),
    .ap_continue(thresholding_1080_1920_U0_ap_continue),
    .ap_idle(thresholding_1080_1920_U0_ap_idle),
    .ap_ready(thresholding_1080_1920_U0_ap_ready),
    .start_out(thresholding_1080_1920_U0_start_out),
    .start_write(thresholding_1080_1920_U0_start_write),
    .sobelImg_data_dout(sobelImg_data_dout),
    .sobelImg_data_num_data_valid(sobelImg_data_num_data_valid),
    .sobelImg_data_fifo_cap(sobelImg_data_fifo_cap),
    .sobelImg_data_empty_n(sobelImg_data_empty_n),
    .sobelImg_data_read(thresholding_1080_1920_U0_sobelImg_data_read),
    .thresholdImg_data_din(thresholding_1080_1920_U0_thresholdImg_data_din),
    .thresholdImg_data_num_data_valid(thresholdImg_data_num_data_valid),
    .thresholdImg_data_fifo_cap(thresholdImg_data_fifo_cap),
    .thresholdImg_data_full_n(thresholdImg_data_full_n),
    .thresholdImg_data_write(thresholding_1080_1920_U0_thresholdImg_data_write),
    .p_read(threshold_1_channel_dout)
);

edge_detector_xfgray2rgb_1080_1920_s xfgray2rgb_1080_1920_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(xfgray2rgb_1080_1920_U0_ap_start),
    .start_full_n(start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_full_n),
    .ap_done(xfgray2rgb_1080_1920_U0_ap_done),
    .ap_continue(xfgray2rgb_1080_1920_U0_ap_continue),
    .ap_idle(xfgray2rgb_1080_1920_U0_ap_idle),
    .ap_ready(xfgray2rgb_1080_1920_U0_ap_ready),
    .thresholdImg_data_dout(thresholdImg_data_dout),
    .thresholdImg_data_num_data_valid(thresholdImg_data_num_data_valid),
    .thresholdImg_data_fifo_cap(thresholdImg_data_fifo_cap),
    .thresholdImg_data_empty_n(thresholdImg_data_empty_n),
    .thresholdImg_data_read(xfgray2rgb_1080_1920_U0_thresholdImg_data_read),
    .rgbSobel_data_din(xfgray2rgb_1080_1920_U0_rgbSobel_data_din),
    .rgbSobel_data_num_data_valid(rgbSobel_data_num_data_valid),
    .rgbSobel_data_fifo_cap(rgbSobel_data_fifo_cap),
    .rgbSobel_data_full_n(rgbSobel_data_full_n),
    .rgbSobel_data_write(xfgray2rgb_1080_1920_U0_rgbSobel_data_write),
    .start_out(xfgray2rgb_1080_1920_U0_start_out),
    .start_write(xfgray2rgb_1080_1920_U0_start_write)
);

edge_detector_xfMat2AXIvideo_24_16_1080_1920_1_2_s xfMat2AXIvideo_24_16_1080_1920_1_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_start),
    .ap_done(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_done),
    .ap_continue(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_continue),
    .ap_idle(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_idle),
    .ap_ready(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_ready),
    .rgbSobel_data_dout(rgbSobel_data_dout),
    .rgbSobel_data_num_data_valid(rgbSobel_data_num_data_valid),
    .rgbSobel_data_fifo_cap(rgbSobel_data_fifo_cap),
    .rgbSobel_data_empty_n(rgbSobel_data_empty_n),
    .rgbSobel_data_read(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_rgbSobel_data_read),
    .dst_TDATA(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TDATA),
    .dst_TVALID(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TVALID),
    .dst_TREADY(dst_TREADY),
    .dst_TKEEP(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TKEEP),
    .dst_TSTRB(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TSTRB),
    .dst_TUSER(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TUSER),
    .dst_TLAST(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TLAST),
    .dst_TID(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TID),
    .dst_TDEST(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TDEST)
);

edge_detector_fifo_w8_d5_S threshold_1_channel_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_entry1_proc_U0_ap_return),
    .if_full_n(threshold_1_channel_full_n),
    .if_write(Block_entry1_proc_U0_ap_done),
    .if_dout(threshold_1_channel_dout),
    .if_num_data_valid(threshold_1_channel_num_data_valid),
    .if_fifo_cap(threshold_1_channel_fifo_cap),
    .if_empty_n(threshold_1_channel_empty_n),
    .if_read(thresholding_1080_1920_U0_ap_ready)
);

edge_detector_fifo_w24_d2_S srcImg_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_srcImg_data_din),
    .if_full_n(srcImg_data_full_n),
    .if_write(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_srcImg_data_write),
    .if_dout(srcImg_data_dout),
    .if_num_data_valid(srcImg_data_num_data_valid),
    .if_fifo_cap(srcImg_data_fifo_cap),
    .if_empty_n(srcImg_data_empty_n),
    .if_read(xfrgb2gray_1080_1920_U0_srcImg_data_read)
);

edge_detector_fifo_w8_d2_S grayImg_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(xfrgb2gray_1080_1920_U0_grayImg_data_din),
    .if_full_n(grayImg_data_full_n),
    .if_write(xfrgb2gray_1080_1920_U0_grayImg_data_write),
    .if_dout(grayImg_data_dout),
    .if_num_data_valid(grayImg_data_num_data_valid),
    .if_fifo_cap(grayImg_data_fifo_cap),
    .if_empty_n(grayImg_data_empty_n),
    .if_read(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_grayImg_data_read)
);

edge_detector_fifo_w8_d2_S sobelImg_x_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_x_data_din),
    .if_full_n(sobelImg_x_data_full_n),
    .if_write(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_x_data_write),
    .if_dout(sobelImg_x_data_dout),
    .if_num_data_valid(sobelImg_x_data_num_data_valid),
    .if_fifo_cap(sobelImg_x_data_fifo_cap),
    .if_empty_n(sobelImg_x_data_empty_n),
    .if_read(AddWeightedKernel_1080_1920_U0_sobelImg_x_data_read)
);

edge_detector_fifo_w8_d2_S sobelImg_y_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_y_data_din),
    .if_full_n(sobelImg_y_data_full_n),
    .if_write(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_sobelImg_y_data_write),
    .if_dout(sobelImg_y_data_dout),
    .if_num_data_valid(sobelImg_y_data_num_data_valid),
    .if_fifo_cap(sobelImg_y_data_fifo_cap),
    .if_empty_n(sobelImg_y_data_empty_n),
    .if_read(AddWeightedKernel_1080_1920_U0_sobelImg_y_data_read)
);

edge_detector_fifo_w8_d2_S sobelImg_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AddWeightedKernel_1080_1920_U0_sobelImg_data_din),
    .if_full_n(sobelImg_data_full_n),
    .if_write(AddWeightedKernel_1080_1920_U0_sobelImg_data_write),
    .if_dout(sobelImg_data_dout),
    .if_num_data_valid(sobelImg_data_num_data_valid),
    .if_fifo_cap(sobelImg_data_fifo_cap),
    .if_empty_n(sobelImg_data_empty_n),
    .if_read(thresholding_1080_1920_U0_sobelImg_data_read)
);

edge_detector_fifo_w8_d2_S thresholdImg_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(thresholding_1080_1920_U0_thresholdImg_data_din),
    .if_full_n(thresholdImg_data_full_n),
    .if_write(thresholding_1080_1920_U0_thresholdImg_data_write),
    .if_dout(thresholdImg_data_dout),
    .if_num_data_valid(thresholdImg_data_num_data_valid),
    .if_fifo_cap(thresholdImg_data_fifo_cap),
    .if_empty_n(thresholdImg_data_empty_n),
    .if_read(xfgray2rgb_1080_1920_U0_thresholdImg_data_read)
);

edge_detector_fifo_w24_d2_S rgbSobel_data_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(xfgray2rgb_1080_1920_U0_rgbSobel_data_din),
    .if_full_n(rgbSobel_data_full_n),
    .if_write(xfgray2rgb_1080_1920_U0_rgbSobel_data_write),
    .if_dout(rgbSobel_data_dout),
    .if_num_data_valid(rgbSobel_data_num_data_valid),
    .if_fifo_cap(rgbSobel_data_fifo_cap),
    .if_empty_n(rgbSobel_data_empty_n),
    .if_read(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_rgbSobel_data_read)
);

edge_detector_start_for_xfrgb2gray_1080_1920_U0 start_for_xfrgb2gray_1080_1920_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_xfrgb2gray_1080_1920_U0_din),
    .if_full_n(start_for_xfrgb2gray_1080_1920_U0_full_n),
    .if_write(AXIvideo2xfMat_24_16_1080_1920_1_2_U0_start_write),
    .if_dout(start_for_xfrgb2gray_1080_1920_U0_dout),
    .if_empty_n(start_for_xfrgb2gray_1080_1920_U0_empty_n),
    .if_read(xfrgb2gray_1080_1920_U0_ap_ready)
);

edge_detector_start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0 start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_din),
    .if_full_n(start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_full_n),
    .if_write(xfrgb2gray_1080_1920_U0_start_write),
    .if_dout(start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_dout),
    .if_empty_n(start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_empty_n),
    .if_read(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_ready)
);

edge_detector_start_for_AddWeightedKernel_1080_1920_U0 start_for_AddWeightedKernel_1080_1920_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_AddWeightedKernel_1080_1920_U0_din),
    .if_full_n(start_for_AddWeightedKernel_1080_1920_U0_full_n),
    .if_write(xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_start_write),
    .if_dout(start_for_AddWeightedKernel_1080_1920_U0_dout),
    .if_empty_n(start_for_AddWeightedKernel_1080_1920_U0_empty_n),
    .if_read(AddWeightedKernel_1080_1920_U0_ap_ready)
);

edge_detector_start_for_xfgray2rgb_1080_1920_U0 start_for_xfgray2rgb_1080_1920_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_xfgray2rgb_1080_1920_U0_din),
    .if_full_n(start_for_xfgray2rgb_1080_1920_U0_full_n),
    .if_write(thresholding_1080_1920_U0_start_write),
    .if_dout(start_for_xfgray2rgb_1080_1920_U0_dout),
    .if_empty_n(start_for_xfgray2rgb_1080_1920_U0_empty_n),
    .if_read(xfgray2rgb_1080_1920_U0_ap_ready)
);

edge_detector_start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0 start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_din),
    .if_full_n(start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_full_n),
    .if_write(xfgray2rgb_1080_1920_U0_start_write),
    .if_dout(start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dout),
    .if_empty_n(start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_empty_n),
    .if_read(xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_ready)
);

assign AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_continue = 1'b1;

assign AXIvideo2xfMat_24_16_1080_1920_1_2_U0_ap_start = 1'b1;

assign AddWeightedKernel_1080_1920_U0_ap_continue = 1'b1;

assign AddWeightedKernel_1080_1920_U0_ap_start = start_for_AddWeightedKernel_1080_1920_U0_empty_n;

assign Block_entry1_proc_U0_ap_continue = threshold_1_channel_full_n;

assign Block_entry1_proc_U0_ap_start = 1'b1;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign dst_TDATA = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TDATA;

assign dst_TDEST = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TDEST;

assign dst_TID = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TID;

assign dst_TKEEP = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TKEEP;

assign dst_TLAST = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TLAST;

assign dst_TSTRB = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TSTRB;

assign dst_TUSER = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TUSER;

assign dst_TVALID = xfMat2AXIvideo_24_16_1080_1920_1_2_U0_dst_TVALID;

assign src_TREADY = AXIvideo2xfMat_24_16_1080_1920_1_2_U0_src_TREADY;

assign start_for_AddWeightedKernel_1080_1920_U0_din = 1'b1;

assign start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_din = 1'b1;

assign start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_din = 1'b1;

assign start_for_xfgray2rgb_1080_1920_U0_din = 1'b1;

assign start_for_xfrgb2gray_1080_1920_U0_din = 1'b1;

assign thresholding_1080_1920_U0_ap_continue = 1'b1;

assign thresholding_1080_1920_U0_ap_start = threshold_1_channel_empty_n;

assign xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_continue = 1'b1;

assign xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_ap_start = start_for_xFSobelFilter3x3_0_0_1080_1920_1_0_0_1_2_2_2_1_1_1920_false_U0_empty_n;

assign xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_continue = 1'b1;

assign xfMat2AXIvideo_24_16_1080_1920_1_2_U0_ap_start = start_for_xfMat2AXIvideo_24_16_1080_1920_1_2_U0_empty_n;

assign xfgray2rgb_1080_1920_U0_ap_continue = 1'b1;

assign xfgray2rgb_1080_1920_U0_ap_start = start_for_xfgray2rgb_1080_1920_U0_empty_n;

assign xfrgb2gray_1080_1920_U0_ap_continue = 1'b1;

assign xfrgb2gray_1080_1920_U0_ap_start = start_for_xfrgb2gray_1080_1920_U0_empty_n;


reg find_df_deadlock = 0;
// synthesis translate_off
`include "edge_detector_hls_deadlock_detector.vh"
// synthesis translate_on

reg find_kernel_block = 0;
// synthesis translate_off
`include "edge_detector_hls_deadlock_kernel_monitor_top.vh"
// synthesis translate_on

endmodule //edge_detector

