# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_sparsemux_217_7_20_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


set name myproject_mul_20s_12s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_sparsemux_37_5_26_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config6_mult_s_outPgM BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config6_mult_s_w6_QgW BINDTYPE {storage} TYPE {rom_np} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_97 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_97 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_88 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_88 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_87 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_87 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_86 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_86 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_85 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_85 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_84 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_84 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_83 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_83 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_82 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_82 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_81 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_81 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_80 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_80 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_79 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_79 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_78 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_78 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_77 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_77 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_76 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_76 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_75 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_75 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_74 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_74 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_73 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_73 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_72 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_72 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_71 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_71 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_70 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_70 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_69 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_69 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_68 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_68 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_67 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_67 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_66 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_66 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_65 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_65 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_64 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_64 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_63 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_63 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_62 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_62 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_61 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_61 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_60 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_60 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_59 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_59 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_58 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_58 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_57 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_57 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_56 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_56 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_55 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_55 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_54 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_54 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_53 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_53 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_52 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_52 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_51 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_51 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_50 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_50 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_49 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_49 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_48 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_48 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_47 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_47 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_46 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_46 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_45 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_45 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_44 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_44 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_43 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_43 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_42 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_42 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_41 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_41 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_40 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_40 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_39 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_39 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_38 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_38 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_37 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_37 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_36 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_36 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_35 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_35 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_34 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_34 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_33 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_33 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_32 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_32 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_31 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_31 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_30 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_30 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_29 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_29 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_28 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_28 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_27 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_27 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_26 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_26 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_25 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_25 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_24 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_24 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_23 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_23 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_22 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_22 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_21 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_21 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_20 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_20 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_19 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_19 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_18 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_18 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_17 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_17 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_16 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_16 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_15 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_15 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_14 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_14 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_13 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_13 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_12 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_12 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_11 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_11 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_10 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_10 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_9 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_9 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_8 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_8 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_7 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_7 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_6 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_6 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_5 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_5 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_4 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_4 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_3 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_3 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_2 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_2 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_1 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_1 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_96 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_96 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_95 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_95 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_94 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_94 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_93 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_93 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_92 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_92 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_91 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_91 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_90 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_90 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_89 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL_89 { I 20 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName myproject_flow_control_loop_pipe_no_ap_cont_U
set CompName myproject_flow_control_loop_pipe_no_ap_cont
set name flow_control_loop_pipe_no_ap_cont
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix myproject_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


