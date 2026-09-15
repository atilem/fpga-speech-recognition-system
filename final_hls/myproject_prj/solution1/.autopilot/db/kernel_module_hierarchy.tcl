set ModuleHierarchy {[{
"Name" : "myproject","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_1u_config13_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config13_Pipeline_PadBottomWidth_fu_56","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "3","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "PadMain","ID" : "4","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_1u_config13_Pipeline_CopyMain_fu_62","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "CopyMain","ID" : "6","Type" : "pipeline"},]},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_18_8_5_3_0_12u_config2_U0","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "8","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_18_8_5_3_0_12u_config2_s_fu_78","ID" : "9","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_20_10_5_3_0_1u_config2_s_fu_95","ID" : "10","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config2_mult_s_fu_123","ID" : "11","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "12","Type" : "pipeline"},]},]},]},]},
	{"Name" : "normalize_array_ap_fixed_12u_array_ap_fixed_39_19_5_3_0_12u_config3_U0","ID" : "13","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","ID" : "14","Type" : "pipeline"},]},
	{"Name" : "relu_array_ap_fixed_12u_array_ap_fixed_20_10_5_3_0_12u_relu_config4_U0","ID" : "15","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "16","Type" : "pipeline"},]},
	{"Name" : "pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config5_U0","ID" : "17","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "18","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246","ID" : "19","Type" : "pipeline"},]},]},
	{"Name" : "zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config14_U0","ID" : "20","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_12u_config14_Pipeline_PadTopWidth_fu_22","ID" : "21","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadTopWidth","ID" : "22","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config14_Pipeline_PadMain_fu_28","ID" : "23","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadMain","ID" : "24","Type" : "pipeline"},]},
		{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_12u_config14_Pipeline_PadBottomWidth_fu_36","ID" : "25","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "PadBottomWidth","ID" : "26","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_12u_array_ap_fixed_18_8_5_3_0_18u_config6_U0","ID" : "27","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "28","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_18_8_5_3_0_18u_config6_s_fu_366","ID" : "29","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config6_s_fu_425","ID" : "30","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_8_5_3_0_config6_mult_s_fu_717","ID" : "31","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "32","Type" : "pipeline"},]},]},]},]},
	{"Name" : "normalize_array_ap_fixed_18u_array_ap_fixed_39_19_5_3_0_18u_config7_U0","ID" : "33","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "BatchNormLoop","ID" : "34","Type" : "pipeline"},]},
	{"Name" : "relu_array_ap_fixed_18u_array_ap_fixed_20_10_5_3_0_18u_relu_config8_U0","ID" : "35","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "36","Type" : "pipeline"},]},
	{"Name" : "pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_18u_config9_U0","ID" : "37","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "38","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_18u_config9_s_fu_558","ID" : "39","Type" : "pipeline"},]},]},
	{"Name" : "dense_array_ap_fixed_18u_array_ap_fixed_24_12_5_3_0_7u_config12_U0","ID" : "40","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_dense_array_array_ap_fixed_24_12_5_3_0_7u_config12_Pipeline_DataPrepare_fu_1837","ID" : "41","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "DataPrepare","ID" : "42","Type" : "pipeline"},]},
		{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_24_12_5_3_0_config12_s_fu_2293","ID" : "43","Type" : "pipeline",
			"SubLoops" : [
			{"Name" : "ReuseLoop","ID" : "44","Type" : "pipeline"},]},]},
	{"Name" : "Block_entry_split_split_split_split_split_split_split_split_split_split_split_sp_U0","ID" : "45","Type" : "sequential"},]
}]}