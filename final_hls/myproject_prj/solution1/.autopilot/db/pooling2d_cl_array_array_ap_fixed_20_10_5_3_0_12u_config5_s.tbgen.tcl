set moduleName pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config5_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {pooling2d_cl<array,array<ap_fixed<20,10,5,3,0>,12u>,config5>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer4_out int 240 regular {fifo 0 volatile }  }
	{ layer5_out int 240 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer4_out", "interface" : "fifo", "bitwidth" : 240, "direction" : "READONLY"} , 
 	{ "Name" : "layer5_out", "interface" : "fifo", "bitwidth" : 240, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer4_out_dout sc_in sc_lv 240 signal 0 } 
	{ layer4_out_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ layer4_out_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ layer4_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer4_out_read sc_out sc_logic 1 signal 0 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ layer5_out_din sc_out sc_lv 240 signal 1 } 
	{ layer5_out_num_data_valid sc_in sc_lv 9 signal 1 } 
	{ layer5_out_fifo_cap sc_in sc_lv 9 signal 1 } 
	{ layer5_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer5_out_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer4_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":240, "type": "signal", "bundle":{"name": "layer4_out", "role": "dout" }} , 
 	{ "name": "layer4_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer4_out", "role": "num_data_valid" }} , 
 	{ "name": "layer4_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer4_out", "role": "fifo_cap" }} , 
 	{ "name": "layer4_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer4_out", "role": "empty_n" }} , 
 	{ "name": "layer4_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer4_out", "role": "read" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "layer5_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":240, "type": "signal", "bundle":{"name": "layer5_out", "role": "din" }} , 
 	{ "name": "layer5_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer5_out", "role": "num_data_valid" }} , 
 	{ "name": "layer5_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer5_out", "role": "fifo_cap" }} , 
 	{ "name": "layer5_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer5_out", "role": "full_n" }} , 
 	{ "name": "layer5_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer5_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "14"],
		"CDFG" : "pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2042", "EstimateLatencyMax" : "2042",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer4_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "1020", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer4_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "250", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_19", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_209", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_209", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_221", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_221", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_233", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_233", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_18", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_210", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_210", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_222", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_222", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_234", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_234", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_17", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_211", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_211", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_223", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_223", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_235", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_235", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_16", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_212", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_212", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_224", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_224", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_236", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_236", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_15", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_213", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_213", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_225", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_225", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_237", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_237", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_14", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_214", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_214", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_226", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_226", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_238", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_238", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_13", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_215", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_215", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_227", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_227", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_239", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_239", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_12", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_216", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_216", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_228", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_228", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_240", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_240", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_11", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_217", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_217", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_229", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_229", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_241", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_241", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_10", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_218", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_218", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_230", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_230", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_242", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_242", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_207", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_207", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_219", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_219", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_231", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_231", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_243", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_243", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_208", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_208", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_220", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_220", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_232", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_232", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_244", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_244", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "pX_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_9", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_8", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_7", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_7", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_6", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_6", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_5", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_5", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_4", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_4", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_3", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_2", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_1", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_9", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_9", "Inst_start_state" : "2", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_8", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Port" : "p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_8", "Inst_start_state" : "2", "Inst_end_state" : "2"}]}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_209", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_210", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_211", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_212", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_213", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_214", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_215", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_216", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_217", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_218", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_219", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_207", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_220", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_208", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_233", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_221", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_234", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_222", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_235", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_223", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_236", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_224", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_237", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_225", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_238", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_226", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_239", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_227", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_240", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_228", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_241", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_229", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_242", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_230", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_243", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_231", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_244", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_232", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_9", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_8", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_9", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_8", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_9_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_8_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_7_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_6_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_5_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_4_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_3_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_2_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_1_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_9_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln52_shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s_fu_246.p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_8_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pooling2d_cl_array_array_ap_fixed_20_10_5_3_0_12u_config5_s {
		layer4_out {Type I LastRead 1 FirstWrite -1}
		layer5_out {Type O LastRead -1 FirstWrite 2}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_209 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_221 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_233 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_210 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_222 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_234 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_211 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_223 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_235 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_212 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_224 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_236 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_213 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_225 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_237 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_214 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_226 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_238 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_215 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_227 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_239 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_216 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_228 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_240 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_217 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_229 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_241 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_218 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_230 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_242 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_207 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_219 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_231 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_243 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_208 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_220 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_232 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_244 {Type IO LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_9 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_8 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_7 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_6 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_5 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_4 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_9 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_8 {Type X LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_20_10_5_3_0_12u_config5_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_209 {Type IO LastRead 0 FirstWrite 0}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_19 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_210 {Type IO LastRead 0 FirstWrite 0}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_18 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_211 {Type IO LastRead 0 FirstWrite 0}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_17 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_212 {Type IO LastRead 0 FirstWrite 0}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_16 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_213 {Type IO LastRead 0 FirstWrite 0}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_15 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_214 {Type IO LastRead 0 FirstWrite 0}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_14 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_215 {Type IO LastRead 0 FirstWrite 0}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_13 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_216 {Type IO LastRead 0 FirstWrite 0}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_12 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_217 {Type IO LastRead 0 FirstWrite 0}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_11 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_218 {Type IO LastRead 0 FirstWrite 0}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_10 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_219 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_207 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_220 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_208 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_233 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_221 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_234 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_222 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_235 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_223 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_236 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_224 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_237 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_225 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_238 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_226 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_239 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_227 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_240 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_228 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_241 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_229 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_242 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_230 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_243 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_231 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_244 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9a_232 {Type O LastRead -1 FirstWrite 0}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_9 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_8 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_7 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_6 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_5 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_4 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_cl_stream_stream_array_ap_fixed_12u_0_line_buffer {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_9 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi20ELi10EL9ap_q_mode5EL9ap_o_mode3E_8 {Type X LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2042", "Max" : "2042"}
	, {"Name" : "Interval", "Min" : "2042", "Max" : "2042"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer4_out { ap_fifo {  { layer4_out_dout fifo_data_in 0 240 }  { layer4_out_num_data_valid fifo_status_num_data_valid 0 11 }  { layer4_out_fifo_cap fifo_update 0 11 }  { layer4_out_empty_n fifo_status 0 1 }  { layer4_out_read fifo_port_we 1 1 } } }
	layer5_out { ap_fifo {  { layer5_out_din fifo_data_in 1 240 }  { layer5_out_num_data_valid fifo_status_num_data_valid 0 9 }  { layer5_out_fifo_cap fifo_update 0 9 }  { layer5_out_full_n fifo_status 0 1 }  { layer5_out_write fifo_port_we 1 1 } } }
}
