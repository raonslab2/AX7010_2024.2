// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mult_constant_HH_
#define _mult_constant_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "mult_constant_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 5,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct mult_constant : public sc_module {
    // Port declarations 37
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<32> > in_data_TDATA;
    sc_in< sc_logic > in_data_TVALID;
    sc_out< sc_logic > in_data_TREADY;
    sc_in< sc_lv<4> > in_data_TKEEP;
    sc_in< sc_lv<4> > in_data_TSTRB;
    sc_in< sc_lv<1> > in_data_TUSER;
    sc_in< sc_lv<1> > in_data_TLAST;
    sc_in< sc_lv<1> > in_data_TID;
    sc_in< sc_lv<1> > in_data_TDEST;
    sc_out< sc_lv<32> > out_data_TDATA;
    sc_out< sc_logic > out_data_TVALID;
    sc_in< sc_logic > out_data_TREADY;
    sc_out< sc_lv<4> > out_data_TKEEP;
    sc_out< sc_lv<4> > out_data_TSTRB;
    sc_out< sc_lv<1> > out_data_TUSER;
    sc_out< sc_lv<1> > out_data_TLAST;
    sc_out< sc_lv<1> > out_data_TID;
    sc_out< sc_lv<1> > out_data_TDEST;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    mult_constant(sc_module_name name);
    SC_HAS_PROCESS(mult_constant);

    ~mult_constant();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    mult_constant_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* mult_constant_AXILiteS_s_axi_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<32> > in_data_data_V_0_data_out;
    sc_signal< sc_logic > in_data_data_V_0_vld_in;
    sc_signal< sc_logic > in_data_data_V_0_vld_out;
    sc_signal< sc_logic > in_data_data_V_0_ack_in;
    sc_signal< sc_logic > in_data_data_V_0_ack_out;
    sc_signal< sc_lv<32> > in_data_data_V_0_payload_A;
    sc_signal< sc_lv<32> > in_data_data_V_0_payload_B;
    sc_signal< sc_logic > in_data_data_V_0_sel_rd;
    sc_signal< sc_logic > in_data_data_V_0_sel_wr;
    sc_signal< sc_logic > in_data_data_V_0_sel;
    sc_signal< sc_logic > in_data_data_V_0_load_A;
    sc_signal< sc_logic > in_data_data_V_0_load_B;
    sc_signal< sc_lv<2> > in_data_data_V_0_state;
    sc_signal< sc_logic > in_data_data_V_0_state_cmp_full;
    sc_signal< sc_lv<4> > in_data_keep_V_0_data_out;
    sc_signal< sc_logic > in_data_keep_V_0_vld_in;
    sc_signal< sc_logic > in_data_keep_V_0_vld_out;
    sc_signal< sc_logic > in_data_keep_V_0_ack_in;
    sc_signal< sc_logic > in_data_keep_V_0_ack_out;
    sc_signal< sc_lv<4> > in_data_keep_V_0_payload_A;
    sc_signal< sc_lv<4> > in_data_keep_V_0_payload_B;
    sc_signal< sc_logic > in_data_keep_V_0_sel_rd;
    sc_signal< sc_logic > in_data_keep_V_0_sel_wr;
    sc_signal< sc_logic > in_data_keep_V_0_sel;
    sc_signal< sc_logic > in_data_keep_V_0_load_A;
    sc_signal< sc_logic > in_data_keep_V_0_load_B;
    sc_signal< sc_lv<2> > in_data_keep_V_0_state;
    sc_signal< sc_logic > in_data_keep_V_0_state_cmp_full;
    sc_signal< sc_lv<4> > in_data_strb_V_0_data_out;
    sc_signal< sc_logic > in_data_strb_V_0_vld_in;
    sc_signal< sc_logic > in_data_strb_V_0_vld_out;
    sc_signal< sc_logic > in_data_strb_V_0_ack_in;
    sc_signal< sc_logic > in_data_strb_V_0_ack_out;
    sc_signal< sc_lv<4> > in_data_strb_V_0_payload_A;
    sc_signal< sc_lv<4> > in_data_strb_V_0_payload_B;
    sc_signal< sc_logic > in_data_strb_V_0_sel_rd;
    sc_signal< sc_logic > in_data_strb_V_0_sel_wr;
    sc_signal< sc_logic > in_data_strb_V_0_sel;
    sc_signal< sc_logic > in_data_strb_V_0_load_A;
    sc_signal< sc_logic > in_data_strb_V_0_load_B;
    sc_signal< sc_lv<2> > in_data_strb_V_0_state;
    sc_signal< sc_logic > in_data_strb_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > in_data_user_V_0_data_out;
    sc_signal< sc_logic > in_data_user_V_0_vld_in;
    sc_signal< sc_logic > in_data_user_V_0_vld_out;
    sc_signal< sc_logic > in_data_user_V_0_ack_in;
    sc_signal< sc_logic > in_data_user_V_0_ack_out;
    sc_signal< sc_lv<1> > in_data_user_V_0_payload_A;
    sc_signal< sc_lv<1> > in_data_user_V_0_payload_B;
    sc_signal< sc_logic > in_data_user_V_0_sel_rd;
    sc_signal< sc_logic > in_data_user_V_0_sel_wr;
    sc_signal< sc_logic > in_data_user_V_0_sel;
    sc_signal< sc_logic > in_data_user_V_0_load_A;
    sc_signal< sc_logic > in_data_user_V_0_load_B;
    sc_signal< sc_lv<2> > in_data_user_V_0_state;
    sc_signal< sc_logic > in_data_user_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > in_data_last_V_0_data_out;
    sc_signal< sc_logic > in_data_last_V_0_vld_in;
    sc_signal< sc_logic > in_data_last_V_0_vld_out;
    sc_signal< sc_logic > in_data_last_V_0_ack_in;
    sc_signal< sc_logic > in_data_last_V_0_ack_out;
    sc_signal< sc_lv<1> > in_data_last_V_0_payload_A;
    sc_signal< sc_lv<1> > in_data_last_V_0_payload_B;
    sc_signal< sc_logic > in_data_last_V_0_sel_rd;
    sc_signal< sc_logic > in_data_last_V_0_sel_wr;
    sc_signal< sc_logic > in_data_last_V_0_sel;
    sc_signal< sc_logic > in_data_last_V_0_load_A;
    sc_signal< sc_logic > in_data_last_V_0_load_B;
    sc_signal< sc_lv<2> > in_data_last_V_0_state;
    sc_signal< sc_logic > in_data_last_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > in_data_id_V_0_data_out;
    sc_signal< sc_logic > in_data_id_V_0_vld_in;
    sc_signal< sc_logic > in_data_id_V_0_vld_out;
    sc_signal< sc_logic > in_data_id_V_0_ack_in;
    sc_signal< sc_logic > in_data_id_V_0_ack_out;
    sc_signal< sc_lv<1> > in_data_id_V_0_payload_A;
    sc_signal< sc_lv<1> > in_data_id_V_0_payload_B;
    sc_signal< sc_logic > in_data_id_V_0_sel_rd;
    sc_signal< sc_logic > in_data_id_V_0_sel_wr;
    sc_signal< sc_logic > in_data_id_V_0_sel;
    sc_signal< sc_logic > in_data_id_V_0_load_A;
    sc_signal< sc_logic > in_data_id_V_0_load_B;
    sc_signal< sc_lv<2> > in_data_id_V_0_state;
    sc_signal< sc_logic > in_data_id_V_0_state_cmp_full;
    sc_signal< sc_lv<1> > in_data_dest_V_0_data_out;
    sc_signal< sc_logic > in_data_dest_V_0_vld_in;
    sc_signal< sc_logic > in_data_dest_V_0_vld_out;
    sc_signal< sc_logic > in_data_dest_V_0_ack_in;
    sc_signal< sc_logic > in_data_dest_V_0_ack_out;
    sc_signal< sc_lv<1> > in_data_dest_V_0_payload_A;
    sc_signal< sc_lv<1> > in_data_dest_V_0_payload_B;
    sc_signal< sc_logic > in_data_dest_V_0_sel_rd;
    sc_signal< sc_logic > in_data_dest_V_0_sel_wr;
    sc_signal< sc_logic > in_data_dest_V_0_sel;
    sc_signal< sc_logic > in_data_dest_V_0_load_A;
    sc_signal< sc_logic > in_data_dest_V_0_load_B;
    sc_signal< sc_lv<2> > in_data_dest_V_0_state;
    sc_signal< sc_logic > in_data_dest_V_0_state_cmp_full;
    sc_signal< sc_lv<32> > out_data_data_V_1_data_out;
    sc_signal< sc_logic > out_data_data_V_1_vld_in;
    sc_signal< sc_logic > out_data_data_V_1_vld_out;
    sc_signal< sc_logic > out_data_data_V_1_ack_in;
    sc_signal< sc_logic > out_data_data_V_1_ack_out;
    sc_signal< sc_lv<32> > out_data_data_V_1_payload_A;
    sc_signal< sc_lv<32> > out_data_data_V_1_payload_B;
    sc_signal< sc_logic > out_data_data_V_1_sel_rd;
    sc_signal< sc_logic > out_data_data_V_1_sel_wr;
    sc_signal< sc_logic > out_data_data_V_1_sel;
    sc_signal< sc_logic > out_data_data_V_1_load_A;
    sc_signal< sc_logic > out_data_data_V_1_load_B;
    sc_signal< sc_lv<2> > out_data_data_V_1_state;
    sc_signal< sc_logic > out_data_data_V_1_state_cmp_full;
    sc_signal< sc_lv<4> > out_data_keep_V_1_data_out;
    sc_signal< sc_logic > out_data_keep_V_1_vld_in;
    sc_signal< sc_logic > out_data_keep_V_1_vld_out;
    sc_signal< sc_logic > out_data_keep_V_1_ack_in;
    sc_signal< sc_logic > out_data_keep_V_1_ack_out;
    sc_signal< sc_lv<4> > out_data_keep_V_1_payload_A;
    sc_signal< sc_lv<4> > out_data_keep_V_1_payload_B;
    sc_signal< sc_logic > out_data_keep_V_1_sel_rd;
    sc_signal< sc_logic > out_data_keep_V_1_sel_wr;
    sc_signal< sc_logic > out_data_keep_V_1_sel;
    sc_signal< sc_logic > out_data_keep_V_1_load_A;
    sc_signal< sc_logic > out_data_keep_V_1_load_B;
    sc_signal< sc_lv<2> > out_data_keep_V_1_state;
    sc_signal< sc_logic > out_data_keep_V_1_state_cmp_full;
    sc_signal< sc_lv<4> > out_data_strb_V_1_data_out;
    sc_signal< sc_logic > out_data_strb_V_1_vld_in;
    sc_signal< sc_logic > out_data_strb_V_1_vld_out;
    sc_signal< sc_logic > out_data_strb_V_1_ack_in;
    sc_signal< sc_logic > out_data_strb_V_1_ack_out;
    sc_signal< sc_lv<4> > out_data_strb_V_1_payload_A;
    sc_signal< sc_lv<4> > out_data_strb_V_1_payload_B;
    sc_signal< sc_logic > out_data_strb_V_1_sel_rd;
    sc_signal< sc_logic > out_data_strb_V_1_sel_wr;
    sc_signal< sc_logic > out_data_strb_V_1_sel;
    sc_signal< sc_logic > out_data_strb_V_1_load_A;
    sc_signal< sc_logic > out_data_strb_V_1_load_B;
    sc_signal< sc_lv<2> > out_data_strb_V_1_state;
    sc_signal< sc_logic > out_data_strb_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > out_data_user_V_1_data_out;
    sc_signal< sc_logic > out_data_user_V_1_vld_in;
    sc_signal< sc_logic > out_data_user_V_1_vld_out;
    sc_signal< sc_logic > out_data_user_V_1_ack_in;
    sc_signal< sc_logic > out_data_user_V_1_ack_out;
    sc_signal< sc_lv<1> > out_data_user_V_1_payload_A;
    sc_signal< sc_lv<1> > out_data_user_V_1_payload_B;
    sc_signal< sc_logic > out_data_user_V_1_sel_rd;
    sc_signal< sc_logic > out_data_user_V_1_sel_wr;
    sc_signal< sc_logic > out_data_user_V_1_sel;
    sc_signal< sc_logic > out_data_user_V_1_load_A;
    sc_signal< sc_logic > out_data_user_V_1_load_B;
    sc_signal< sc_lv<2> > out_data_user_V_1_state;
    sc_signal< sc_logic > out_data_user_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > out_data_last_V_1_data_out;
    sc_signal< sc_logic > out_data_last_V_1_vld_in;
    sc_signal< sc_logic > out_data_last_V_1_vld_out;
    sc_signal< sc_logic > out_data_last_V_1_ack_in;
    sc_signal< sc_logic > out_data_last_V_1_ack_out;
    sc_signal< sc_lv<1> > out_data_last_V_1_payload_A;
    sc_signal< sc_lv<1> > out_data_last_V_1_payload_B;
    sc_signal< sc_logic > out_data_last_V_1_sel_rd;
    sc_signal< sc_logic > out_data_last_V_1_sel_wr;
    sc_signal< sc_logic > out_data_last_V_1_sel;
    sc_signal< sc_logic > out_data_last_V_1_load_A;
    sc_signal< sc_logic > out_data_last_V_1_load_B;
    sc_signal< sc_lv<2> > out_data_last_V_1_state;
    sc_signal< sc_logic > out_data_last_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > out_data_id_V_1_data_out;
    sc_signal< sc_logic > out_data_id_V_1_vld_in;
    sc_signal< sc_logic > out_data_id_V_1_vld_out;
    sc_signal< sc_logic > out_data_id_V_1_ack_in;
    sc_signal< sc_logic > out_data_id_V_1_ack_out;
    sc_signal< sc_lv<1> > out_data_id_V_1_payload_A;
    sc_signal< sc_lv<1> > out_data_id_V_1_payload_B;
    sc_signal< sc_logic > out_data_id_V_1_sel_rd;
    sc_signal< sc_logic > out_data_id_V_1_sel_wr;
    sc_signal< sc_logic > out_data_id_V_1_sel;
    sc_signal< sc_logic > out_data_id_V_1_load_A;
    sc_signal< sc_logic > out_data_id_V_1_load_B;
    sc_signal< sc_lv<2> > out_data_id_V_1_state;
    sc_signal< sc_logic > out_data_id_V_1_state_cmp_full;
    sc_signal< sc_lv<1> > out_data_dest_V_1_data_out;
    sc_signal< sc_logic > out_data_dest_V_1_vld_in;
    sc_signal< sc_logic > out_data_dest_V_1_vld_out;
    sc_signal< sc_logic > out_data_dest_V_1_ack_in;
    sc_signal< sc_logic > out_data_dest_V_1_ack_out;
    sc_signal< sc_lv<1> > out_data_dest_V_1_payload_A;
    sc_signal< sc_lv<1> > out_data_dest_V_1_payload_B;
    sc_signal< sc_logic > out_data_dest_V_1_sel_rd;
    sc_signal< sc_logic > out_data_dest_V_1_sel_wr;
    sc_signal< sc_logic > out_data_dest_V_1_sel;
    sc_signal< sc_logic > out_data_dest_V_1_load_A;
    sc_signal< sc_logic > out_data_dest_V_1_load_B;
    sc_signal< sc_lv<2> > out_data_dest_V_1_state;
    sc_signal< sc_logic > out_data_dest_V_1_state_cmp_full;
    sc_signal< sc_lv<32> > constant_V;
    sc_signal< sc_lv<32> > constant_V_0_data_reg;
    sc_signal< sc_logic > constant_V_0_vld_reg;
    sc_signal< sc_logic > constant_V_0_ack_out;
    sc_signal< sc_logic > in_data_TDATA_blk_n;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > out_data_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > constant_V_read_reg_140;
    sc_signal< sc_lv<32> > in_data_data_V_tmp_reg_145;
    sc_signal< sc_lv<4> > in_data_keep_V_tmp_reg_150;
    sc_signal< sc_lv<4> > in_data_strb_V_tmp_reg_155;
    sc_signal< sc_lv<1> > in_data_user_V_tmp_reg_160;
    sc_signal< sc_lv<1> > in_data_last_V_tmp_reg_165;
    sc_signal< sc_lv<1> > in_data_id_V_tmp_reg_170;
    sc_signal< sc_lv<1> > in_data_dest_V_tmp_reg_175;
    sc_signal< sc_lv<32> > out_data_data_V_tmp_fu_135_p2;
    sc_signal< bool > ap_block_state4;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const int C_S_AXI_DATA_WIDTH;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_state4();
    void thread_ap_rst_n_inv();
    void thread_constant_V_0_ack_out();
    void thread_in_data_TDATA_blk_n();
    void thread_in_data_TREADY();
    void thread_in_data_data_V_0_ack_in();
    void thread_in_data_data_V_0_ack_out();
    void thread_in_data_data_V_0_data_out();
    void thread_in_data_data_V_0_load_A();
    void thread_in_data_data_V_0_load_B();
    void thread_in_data_data_V_0_sel();
    void thread_in_data_data_V_0_state_cmp_full();
    void thread_in_data_data_V_0_vld_in();
    void thread_in_data_data_V_0_vld_out();
    void thread_in_data_dest_V_0_ack_in();
    void thread_in_data_dest_V_0_ack_out();
    void thread_in_data_dest_V_0_data_out();
    void thread_in_data_dest_V_0_load_A();
    void thread_in_data_dest_V_0_load_B();
    void thread_in_data_dest_V_0_sel();
    void thread_in_data_dest_V_0_state_cmp_full();
    void thread_in_data_dest_V_0_vld_in();
    void thread_in_data_dest_V_0_vld_out();
    void thread_in_data_id_V_0_ack_in();
    void thread_in_data_id_V_0_ack_out();
    void thread_in_data_id_V_0_data_out();
    void thread_in_data_id_V_0_load_A();
    void thread_in_data_id_V_0_load_B();
    void thread_in_data_id_V_0_sel();
    void thread_in_data_id_V_0_state_cmp_full();
    void thread_in_data_id_V_0_vld_in();
    void thread_in_data_id_V_0_vld_out();
    void thread_in_data_keep_V_0_ack_in();
    void thread_in_data_keep_V_0_ack_out();
    void thread_in_data_keep_V_0_data_out();
    void thread_in_data_keep_V_0_load_A();
    void thread_in_data_keep_V_0_load_B();
    void thread_in_data_keep_V_0_sel();
    void thread_in_data_keep_V_0_state_cmp_full();
    void thread_in_data_keep_V_0_vld_in();
    void thread_in_data_keep_V_0_vld_out();
    void thread_in_data_last_V_0_ack_in();
    void thread_in_data_last_V_0_ack_out();
    void thread_in_data_last_V_0_data_out();
    void thread_in_data_last_V_0_load_A();
    void thread_in_data_last_V_0_load_B();
    void thread_in_data_last_V_0_sel();
    void thread_in_data_last_V_0_state_cmp_full();
    void thread_in_data_last_V_0_vld_in();
    void thread_in_data_last_V_0_vld_out();
    void thread_in_data_strb_V_0_ack_in();
    void thread_in_data_strb_V_0_ack_out();
    void thread_in_data_strb_V_0_data_out();
    void thread_in_data_strb_V_0_load_A();
    void thread_in_data_strb_V_0_load_B();
    void thread_in_data_strb_V_0_sel();
    void thread_in_data_strb_V_0_state_cmp_full();
    void thread_in_data_strb_V_0_vld_in();
    void thread_in_data_strb_V_0_vld_out();
    void thread_in_data_user_V_0_ack_in();
    void thread_in_data_user_V_0_ack_out();
    void thread_in_data_user_V_0_data_out();
    void thread_in_data_user_V_0_load_A();
    void thread_in_data_user_V_0_load_B();
    void thread_in_data_user_V_0_sel();
    void thread_in_data_user_V_0_state_cmp_full();
    void thread_in_data_user_V_0_vld_in();
    void thread_in_data_user_V_0_vld_out();
    void thread_out_data_TDATA();
    void thread_out_data_TDATA_blk_n();
    void thread_out_data_TDEST();
    void thread_out_data_TID();
    void thread_out_data_TKEEP();
    void thread_out_data_TLAST();
    void thread_out_data_TSTRB();
    void thread_out_data_TUSER();
    void thread_out_data_TVALID();
    void thread_out_data_data_V_1_ack_in();
    void thread_out_data_data_V_1_ack_out();
    void thread_out_data_data_V_1_data_out();
    void thread_out_data_data_V_1_load_A();
    void thread_out_data_data_V_1_load_B();
    void thread_out_data_data_V_1_sel();
    void thread_out_data_data_V_1_state_cmp_full();
    void thread_out_data_data_V_1_vld_in();
    void thread_out_data_data_V_1_vld_out();
    void thread_out_data_data_V_tmp_fu_135_p2();
    void thread_out_data_dest_V_1_ack_in();
    void thread_out_data_dest_V_1_ack_out();
    void thread_out_data_dest_V_1_data_out();
    void thread_out_data_dest_V_1_load_A();
    void thread_out_data_dest_V_1_load_B();
    void thread_out_data_dest_V_1_sel();
    void thread_out_data_dest_V_1_state_cmp_full();
    void thread_out_data_dest_V_1_vld_in();
    void thread_out_data_dest_V_1_vld_out();
    void thread_out_data_id_V_1_ack_in();
    void thread_out_data_id_V_1_ack_out();
    void thread_out_data_id_V_1_data_out();
    void thread_out_data_id_V_1_load_A();
    void thread_out_data_id_V_1_load_B();
    void thread_out_data_id_V_1_sel();
    void thread_out_data_id_V_1_state_cmp_full();
    void thread_out_data_id_V_1_vld_in();
    void thread_out_data_id_V_1_vld_out();
    void thread_out_data_keep_V_1_ack_in();
    void thread_out_data_keep_V_1_ack_out();
    void thread_out_data_keep_V_1_data_out();
    void thread_out_data_keep_V_1_load_A();
    void thread_out_data_keep_V_1_load_B();
    void thread_out_data_keep_V_1_sel();
    void thread_out_data_keep_V_1_state_cmp_full();
    void thread_out_data_keep_V_1_vld_in();
    void thread_out_data_keep_V_1_vld_out();
    void thread_out_data_last_V_1_ack_in();
    void thread_out_data_last_V_1_ack_out();
    void thread_out_data_last_V_1_data_out();
    void thread_out_data_last_V_1_load_A();
    void thread_out_data_last_V_1_load_B();
    void thread_out_data_last_V_1_sel();
    void thread_out_data_last_V_1_state_cmp_full();
    void thread_out_data_last_V_1_vld_in();
    void thread_out_data_last_V_1_vld_out();
    void thread_out_data_strb_V_1_ack_in();
    void thread_out_data_strb_V_1_ack_out();
    void thread_out_data_strb_V_1_data_out();
    void thread_out_data_strb_V_1_load_A();
    void thread_out_data_strb_V_1_load_B();
    void thread_out_data_strb_V_1_sel();
    void thread_out_data_strb_V_1_state_cmp_full();
    void thread_out_data_strb_V_1_vld_in();
    void thread_out_data_strb_V_1_vld_out();
    void thread_out_data_user_V_1_ack_in();
    void thread_out_data_user_V_1_ack_out();
    void thread_out_data_user_V_1_data_out();
    void thread_out_data_user_V_1_load_A();
    void thread_out_data_user_V_1_load_B();
    void thread_out_data_user_V_1_sel();
    void thread_out_data_user_V_1_state_cmp_full();
    void thread_out_data_user_V_1_vld_in();
    void thread_out_data_user_V_1_vld_out();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
