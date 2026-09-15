set SynModuleInfo {
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<20,10,5,3,0>,1u>,config13>_Pipeline_CopyMain MODELNAME zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_1u_config13_Pipeline_CopyMain RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_1u_config13_Pipeline_CopyMain
    SUBMODULES {
      {MODELNAME myproject_flow_control_loop_pipe_sequential_init RTLNAME myproject_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,1u>,config13>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_1u_config13_Pipeline_PadBottomWidth RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_1u_config13_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<20,10,5,3,0>,1u>,config13> MODELNAME zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_1u_config13_s RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_1u_config13_s
    SUBMODULES {
      {MODELNAME myproject_regslice_both RTLNAME myproject_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
  {SRCNAME {shift_line_buffer<array<ap_fixed<20, 10, 5, 3, 0>, 1u>, config2>} MODELNAME shift_line_buffer_array_ap_fixed_20_10_5_3_0_1u_config2_s RTLNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_1u_config2_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_1u_config2_s_void_conv_2d_bufferbkb RTLNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_1u_config2_s_void_conv_2d_bufferbkb BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<18,8,5,3,0>,config2_mult> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config2_mult_s RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config2_mult_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_19_4_20_1_1 RTLNAME myproject_sparsemux_19_4_20_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME myproject_mul_20s_11s_31_1_1 RTLNAME myproject_mul_20s_11s_31_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_sparsemux_25_4_26_1_1 RTLNAME myproject_sparsemux_25_4_26_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config2_mult_s_outdEe RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config2_mult_s_outdEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config2_mult_s_w2_eOg RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config2_mult_s_w2_eOg BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_flow_control_loop_pipe_no_ap_cont RTLNAME myproject_flow_control_loop_pipe_no_ap_cont BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_no_ap_cont_U}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<18,8,5,3,0>,12u>,config2> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_18_8_5_3_0_12u_config2_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_18_8_5_3_0_12u_config2_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,1u>,array<ap_fixed<18,8,5,3,0>,12u>,config2> MODELNAME conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_18_8_5_3_0_12u_config2_s RTLNAME myproject_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_18_8_5_3_0_12u_config2_s}
  {SRCNAME normalize<array<ap_fixed,12u>,array<ap_fixed<39,19,5,3,0>,12u>,config3> MODELNAME normalize_array_ap_fixed_12u_array_ap_fixed_39_19_5_3_0_12u_config3_s RTLNAME myproject_normalize_array_ap_fixed_12u_array_ap_fixed_39_19_5_3_0_12u_config3_s
    SUBMODULES {
      {MODELNAME myproject_mul_18s_10ns_27_1_1 RTLNAME myproject_mul_18s_10ns_27_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_18s_11ns_28_1_1 RTLNAME myproject_mul_18s_11ns_28_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_flow_control_loop_pipe RTLNAME myproject_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME relu<array<ap_fixed,12u>,array<ap_fixed<20,10,5,3,0>,12u>,relu_config4> MODELNAME relu_array_ap_fixed_12u_array_ap_fixed_20_10_5_3_0_12u_relu_config4_s RTLNAME myproject_relu_array_ap_fixed_12u_array_ap_fixed_20_10_5_3_0_12u_relu_config4_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<20, 10, 5, 3, 0>, 12u>, config5>} MODELNAME shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s RTLNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_void_pooling2d_cl_fYi RTLNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_void_pooling2d_cl_fYi BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pooling2d_cl<array,array<ap_fixed<20,10,5,3,0>,12u>,config5> MODELNAME pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config5_s RTLNAME myproject_pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config5_s}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,12u>,config14>_Pipeline_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_12u_config14_Pipeline_PadTopWidth RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_12u_config14_Pipeline_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<20,10,5,3,0>,12u>,config14>_Pipeline_PadMain MODELNAME zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config14_Pipeline_PadMain RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config14_Pipeline_PadMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,12u>,config14>_Pipeline_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_12u_config14_Pipeline_PadBottomWidth RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_12u_config14_Pipeline_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed<20,10,5,3,0>,12u>,config14> MODELNAME zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config14_s RTLNAME myproject_zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config14_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<20, 10, 5, 3, 0>, 12u>, config6>} MODELNAME shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config6_s RTLNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config6_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config6_s_p_ZZN4nnet26conv_2rcU RTLNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config6_s_p_ZZN4nnet26conv_2rcU BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<18,8,5,3,0>,config6_mult> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config6_mult_s RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config6_mult_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_217_7_20_1_1 RTLNAME myproject_sparsemux_217_7_20_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME myproject_mul_20s_12s_32_1_1 RTLNAME myproject_mul_20s_12s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_sparsemux_37_5_26_1_1 RTLNAME myproject_sparsemux_37_5_26_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config6_mult_s_outPgM RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config6_mult_s_outPgM BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config6_mult_s_w6_QgW RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config6_mult_s_w6_QgW BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<18,8,5,3,0>,18u>,config6> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_18_8_5_3_0_18u_config6_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_18_8_5_3_0_18u_config6_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,12u>,array<ap_fixed<18,8,5,3,0>,18u>,config6> MODELNAME conv_2d_cl_array_ap_fixed_12u_array_ap_fixed_18_8_5_3_0_18u_config6_s RTLNAME myproject_conv_2d_cl_array_ap_fixed_12u_array_ap_fixed_18_8_5_3_0_18u_config6_s}
  {SRCNAME normalize<array<ap_fixed,18u>,array<ap_fixed<39,19,5,3,0>,18u>,config7> MODELNAME normalize_array_ap_fixed_18u_array_ap_fixed_39_19_5_3_0_18u_config7_s RTLNAME myproject_normalize_array_ap_fixed_18u_array_ap_fixed_39_19_5_3_0_18u_config7_s
    SUBMODULES {
      {MODELNAME myproject_mul_18s_12ns_29_1_1 RTLNAME myproject_mul_18s_12ns_29_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME relu<array<ap_fixed,18u>,array<ap_fixed<20,10,5,3,0>,18u>,relu_config8> MODELNAME relu_array_ap_fixed_18u_array_ap_fixed_20_10_5_3_0_18u_relu_config8_s RTLNAME myproject_relu_array_ap_fixed_18u_array_ap_fixed_20_10_5_3_0_18u_relu_config8_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<20, 10, 5, 3, 0>, 18u>, config9>} MODELNAME shift_line_buffer_array_ap_fixed_20_10_5_3_0_18u_config9_s RTLNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_18u_config9_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_18u_config9_s_void_pooling2d_cl_Rg6 RTLNAME myproject_shift_line_buffer_array_ap_fixed_20_10_5_3_0_18u_config9_s_void_pooling2d_cl_Rg6 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pooling2d_cl<array,array<ap_fixed<20,10,5,3,0>,18u>,config9> MODELNAME pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_18u_config9_s RTLNAME myproject_pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_18u_config9_s}
  {SRCNAME dense<array,array<ap_fixed<24,12,5,3,0>,7u>,config12>_Pipeline_DataPrepare MODELNAME dense_array_array_ap_fixed_24_12_5_3_0_7u_config12_Pipeline_DataPrepare RTLNAME myproject_dense_array_array_ap_fixed_24_12_5_3_0_7u_config12_Pipeline_DataPrepare}
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<24,12,5,3,0>,config12> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_24_12_5_3_0_config12_s RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_24_12_5_3_0_config12_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_901_9_20_1_1 RTLNAME myproject_sparsemux_901_9_20_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME myproject_mul_20s_13s_32_1_1 RTLNAME myproject_mul_20s_13s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_sparsemux_15_3_26_1_1 RTLNAME myproject_sparsemux_15_3_26_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_24_12_5_3_0_config12_s_outidx9j0 RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_24_12_5_3_0_config12_s_outidx9j0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_24_12_5_3_0_config12_s_w12_RObak RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_24_12_5_3_0_config12_s_w12_RObak BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_fixed,18u>,array<ap_fixed<24,12,5,3,0>,7u>,config12> MODELNAME dense_array_ap_fixed_18u_array_ap_fixed_24_12_5_3_0_7u_config12_s RTLNAME myproject_dense_array_ap_fixed_18u_array_ap_fixed_24_12_5_3_0_7u_config12_s}
  {SRCNAME Block_entry.split.split.split.split.split.split.split.split.split.split.split.sp MODELNAME Block_entry_split_split_split_split_split_split_split_split_split_split_split_sp RTLNAME myproject_Block_entry_split_split_split_split_split_split_split_split_split_split_split_sp}
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1
    SUBMODULES {
      {MODELNAME myproject_fifo_w20_d4223_A RTLNAME myproject_fifo_w20_d4223_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer13_out_U}
      {MODELNAME myproject_fifo_w216_d1020_A RTLNAME myproject_fifo_w216_d1020_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME myproject_fifo_w468_d1020_A RTLNAME myproject_fifo_w468_d1020_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer3_out_U}
      {MODELNAME myproject_fifo_w240_d1020_A RTLNAME myproject_fifo_w240_d1020_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME myproject_fifo_w240_d250_A RTLNAME myproject_fifo_w240_d250_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME myproject_fifo_w240_d324_A RTLNAME myproject_fifo_w240_d324_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer14_out_U}
      {MODELNAME myproject_fifo_w324_d250_A RTLNAME myproject_fifo_w324_d250_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME myproject_fifo_w702_d250_A RTLNAME myproject_fifo_w702_d250_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer7_out_U}
      {MODELNAME myproject_fifo_w360_d250_A RTLNAME myproject_fifo_w360_d250_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME myproject_fifo_w360_d25_A RTLNAME myproject_fifo_w360_d25_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer9_out_U}
      {MODELNAME myproject_fifo_w168_d2_S RTLNAME myproject_fifo_w168_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME local_output_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_18_8_5_3_0_12u_config2_U0 RTLNAME myproject_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_18_8_5_3_0_12u_config2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_18_8_5_3_0_12u_config2_U0_U}
      {MODELNAME myproject_start_for_normalize_array_ap_fixed_12u_array_ap_fixed_39_19_5_3_0_12u_config3bbk RTLNAME myproject_start_for_normalize_array_ap_fixed_12u_array_ap_fixed_39_19_5_3_0_12u_config3bbk BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_12u_array_ap_fixed_39_19_5_3_0_12u_config3bbk_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_12u_array_ap_fixed_20_10_5_3_0_12u_relu_config4bck RTLNAME myproject_start_for_relu_array_ap_fixed_12u_array_ap_fixed_20_10_5_3_0_12u_relu_config4bck BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_12u_array_ap_fixed_20_10_5_3_0_12u_relu_config4bck_U}
      {MODELNAME myproject_start_for_pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config5_U0 RTLNAME myproject_start_for_pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config5_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config5_U0_U}
      {MODELNAME myproject_start_for_zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config14_U0 RTLNAME myproject_start_for_zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config14_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config14_U0_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_fixed_12u_array_ap_fixed_18_8_5_3_0_18u_config6bdk RTLNAME myproject_start_for_conv_2d_cl_array_ap_fixed_12u_array_ap_fixed_18_8_5_3_0_18u_config6bdk BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_12u_array_ap_fixed_18_8_5_3_0_18u_config6bdk_U}
      {MODELNAME myproject_start_for_normalize_array_ap_fixed_18u_array_ap_fixed_39_19_5_3_0_18u_config7bek RTLNAME myproject_start_for_normalize_array_ap_fixed_18u_array_ap_fixed_39_19_5_3_0_18u_config7bek BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_18u_array_ap_fixed_39_19_5_3_0_18u_config7bek_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_18u_array_ap_fixed_20_10_5_3_0_18u_relu_config8bfk RTLNAME myproject_start_for_relu_array_ap_fixed_18u_array_ap_fixed_20_10_5_3_0_18u_relu_config8bfk BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_18u_array_ap_fixed_20_10_5_3_0_18u_relu_config8bfk_U}
      {MODELNAME myproject_start_for_pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_18u_config9_U0 RTLNAME myproject_start_for_pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_18u_config9_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_18u_config9_U0_U}
      {MODELNAME myproject_start_for_dense_array_ap_fixed_18u_array_ap_fixed_24_12_5_3_0_7u_config12_U0 RTLNAME myproject_start_for_dense_array_ap_fixed_18u_array_ap_fixed_24_12_5_3_0_7u_config12_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_18u_array_ap_fixed_24_12_5_3_0_7u_config12_U0_U}
      {MODELNAME myproject_start_for_Block_entry_split_split_split_split_split_split_split_split_split_sbgk RTLNAME myproject_start_for_Block_entry_split_split_split_split_split_split_split_split_split_sbgk BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Block_entry_split_split_split_split_split_split_split_split_split_sbgk_U}
      {MODELNAME myproject_control_s_axi RTLNAME myproject_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
