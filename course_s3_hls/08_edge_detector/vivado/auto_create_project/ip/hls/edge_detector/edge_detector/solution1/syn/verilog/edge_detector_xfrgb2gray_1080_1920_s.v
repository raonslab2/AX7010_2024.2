// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module edge_detector_xfrgb2gray_1080_1920_s (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        srcImg_data_dout,
        srcImg_data_num_data_valid,
        srcImg_data_fifo_cap,
        srcImg_data_empty_n,
        srcImg_data_read,
        grayImg_data_din,
        grayImg_data_num_data_valid,
        grayImg_data_fifo_cap,
        grayImg_data_full_n,
        grayImg_data_write,
        start_out,
        start_write
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [23:0] srcImg_data_dout;
input  [1:0] srcImg_data_num_data_valid;
input  [1:0] srcImg_data_fifo_cap;
input   srcImg_data_empty_n;
output   srcImg_data_read;
output  [7:0] grayImg_data_din;
input  [1:0] grayImg_data_num_data_valid;
input  [1:0] grayImg_data_fifo_cap;
input   grayImg_data_full_n;
output   grayImg_data_write;
output   start_out;
output   start_write;

reg ap_idle;
reg srcImg_data_read;
reg grayImg_data_write;
reg start_write;

reg    real_start;
reg    start_once_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    internal_ap_ready;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
reg    ap_block_state6_pp0_stage0_iter5;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln65_fu_85_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    srcImg_data_blk_n;
wire    ap_block_pp0_stage0;
reg    grayImg_data_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [7:0] trunc_ln8_fu_102_p1;
reg   [7:0] trunc_ln8_reg_184;
reg   [7:0] trunc_ln8_reg_184_pp0_iter2_reg;
reg   [7:0] G_assign2_reg_189;
wire   [21:0] mul_ln886_fu_136_p2;
reg   [20:0] indvar_flatten_fu_60;
wire   [20:0] add_ln65_fu_91_p2;
wire    ap_loop_init;
reg   [20:0] ap_sig_allocacmp_indvar_flatten_load;
reg    ap_block_pp0_stage0_01001;
wire   [7:0] B_assign3_fu_116_p4;
wire   [7:0] mul_ln886_fu_136_p0;
wire   [14:0] mul_ln886_fu_136_p1;
wire   [21:0] grp_fu_155_p3;
wire   [22:0] grp_fu_164_p3;
wire   [7:0] grp_fu_155_p0;
wire   [11:0] grp_fu_155_p1;
wire   [7:0] grp_fu_164_p0;
wire   [14:0] grp_fu_164_p1;
wire   [21:0] grp_fu_164_p2;
reg    grp_fu_155_ce;
reg    grp_fu_164_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [19:0] grp_fu_155_p00;
wire   [22:0] grp_fu_164_p00;
wire   [22:0] grp_fu_164_p20;
wire   [21:0] mul_ln886_fu_136_p00;
reg    ap_condition_140;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
end

edge_detector_mul_8ns_15ns_22_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 22 ))
mul_8ns_15ns_22_1_1_U49(
    .din0(mul_ln886_fu_136_p0),
    .din1(mul_ln886_fu_136_p1),
    .dout(mul_ln886_fu_136_p2)
);

edge_detector_mac_muladd_8ns_12ns_22ns_22_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 22 ),
    .dout_WIDTH( 22 ))
mac_muladd_8ns_12ns_22ns_22_4_1_U50(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_155_p0),
    .din1(grp_fu_155_p1),
    .din2(mul_ln886_fu_136_p2),
    .ce(grp_fu_155_ce),
    .dout(grp_fu_155_p3)
);

edge_detector_mac_muladd_8ns_15ns_22ns_23_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 22 ),
    .dout_WIDTH( 23 ))
mac_muladd_8ns_15ns_22ns_23_4_1_U51(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_164_p0),
    .din1(grp_fu_164_p1),
    .din2(grp_fu_164_p2),
    .ce(grp_fu_164_ce),
    .dout(grp_fu_164_p3)
);

edge_detector_flow_control_loop_pipe flow_control_loop_pipe_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(real_start),
    .ap_ready(internal_ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int),
    .ap_continue(ap_continue)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_140)) begin
        if ((icmp_ln65_fu_85_p2 == 1'd0)) begin
            indvar_flatten_fu_60 <= add_ln65_fu_91_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_60 <= 21'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        G_assign2_reg_189 <= {{srcImg_data_dout[15:8]}};
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln8_reg_184 <= trunc_ln8_fu_102_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        trunc_ln8_reg_184_pp0_iter2_reg <= trunc_ln8_reg_184;
    end
end

always @ (*) begin
    if (((icmp_ln65_fu_85_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 21'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_60;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        grayImg_data_blk_n = grayImg_data_full_n;
    end else begin
        grayImg_data_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        grayImg_data_write = 1'b1;
    end else begin
        grayImg_data_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_155_ce = 1'b1;
    end else begin
        grp_fu_155_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_164_ce = 1'b1;
    end else begin
        grp_fu_164_ce = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        srcImg_data_blk_n = srcImg_data_empty_n;
    end else begin
        srcImg_data_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        srcImg_data_read = 1'b1;
    end else begin
        srcImg_data_read = 1'b0;
    end
end

always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign B_assign3_fu_116_p4 = {{srcImg_data_dout[23:16]}};

assign add_ln65_fu_91_p2 = (ap_sig_allocacmp_indvar_flatten_load + 21'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((grayImg_data_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((srcImg_data_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((grayImg_data_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((srcImg_data_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((grayImg_data_full_n == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((srcImg_data_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_done_reg == 1'b1) & (ap_start_int == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = (srcImg_data_empty_n == 1'b0);
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter5 = (grayImg_data_full_n == 1'b0);
end

always @ (*) begin
    ap_condition_140 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_ready = internal_ap_ready;

assign grayImg_data_din = {{grp_fu_164_p3[22:15]}};

assign grp_fu_155_p0 = grp_fu_155_p00;

assign grp_fu_155_p00 = B_assign3_fu_116_p4;

assign grp_fu_155_p1 = 20'd3736;

assign grp_fu_164_p0 = grp_fu_164_p00;

assign grp_fu_164_p00 = G_assign2_reg_189;

assign grp_fu_164_p1 = 23'd19235;

assign grp_fu_164_p2 = grp_fu_164_p20;

assign grp_fu_164_p20 = grp_fu_155_p3;

assign icmp_ln65_fu_85_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 21'd2073600) ? 1'b1 : 1'b0);

assign mul_ln886_fu_136_p0 = mul_ln886_fu_136_p00;

assign mul_ln886_fu_136_p00 = trunc_ln8_reg_184_pp0_iter2_reg;

assign mul_ln886_fu_136_p1 = 22'd9798;

assign start_out = real_start;

assign trunc_ln8_fu_102_p1 = srcImg_data_dout[7:0];

endmodule //edge_detector_xfrgb2gray_1080_1920_s
