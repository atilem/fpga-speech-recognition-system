set moduleName Block_entry_split_split_split_split_split_split_split_split_split_split_split_sp
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {Block_entry.split.split.split.split.split.split.split.split.split.split.split.sp}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ local_output int 168 regular {fifo 0 volatile }  }
	{ layer12_out_V_data_V int 168 regular {axi_s 1 volatile  { layer12_out Data } }  }
	{ layer12_out_V_keep_V int 21 regular {axi_s 1 volatile  { layer12_out Keep } }  }
	{ layer12_out_V_strb_V int 21 regular {axi_s 1 volatile  { layer12_out Strb } }  }
	{ layer12_out_V_last_V int 1 regular {axi_s 1 volatile  { layer12_out Last } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "local_output", "interface" : "fifo", "bitwidth" : 168, "direction" : "READONLY"} , 
 	{ "Name" : "layer12_out_V_data_V", "interface" : "axis", "bitwidth" : 168, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer12_out_V_keep_V", "interface" : "axis", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer12_out_V_strb_V", "interface" : "axis", "bitwidth" : 21, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer12_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ local_output_dout sc_in sc_lv 168 signal 0 } 
	{ local_output_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ local_output_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ local_output_empty_n sc_in sc_logic 1 signal 0 } 
	{ local_output_read sc_out sc_logic 1 signal 0 } 
	{ layer12_out_TDATA sc_out sc_lv 168 signal 1 } 
	{ layer12_out_TVALID sc_out sc_logic 1 outvld 4 } 
	{ layer12_out_TREADY sc_in sc_logic 1 outacc 4 } 
	{ layer12_out_TKEEP sc_out sc_lv 21 signal 2 } 
	{ layer12_out_TSTRB sc_out sc_lv 21 signal 3 } 
	{ layer12_out_TLAST sc_out sc_lv 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "local_output_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "local_output", "role": "dout" }} , 
 	{ "name": "local_output_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_output", "role": "num_data_valid" }} , 
 	{ "name": "local_output_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_output", "role": "fifo_cap" }} , 
 	{ "name": "local_output_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_output", "role": "empty_n" }} , 
 	{ "name": "local_output_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_output", "role": "read" }} , 
 	{ "name": "layer12_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":168, "type": "signal", "bundle":{"name": "layer12_out_V_data_V", "role": "default" }} , 
 	{ "name": "layer12_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "layer12_out_V_last_V", "role": "default" }} , 
 	{ "name": "layer12_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "layer12_out_V_last_V", "role": "default" }} , 
 	{ "name": "layer12_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "layer12_out_V_keep_V", "role": "default" }} , 
 	{ "name": "layer12_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "layer12_out_V_strb_V", "role": "default" }} , 
 	{ "name": "layer12_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "layer12_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "Block_entry_split_split_split_split_split_split_split_split_split_split_split_sp",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "local_output", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "local_output_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer12_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "layer12_out",
				"BlockSignal" : [
					{"Name" : "layer12_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer12_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "layer12_out"},
			{"Name" : "layer12_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "layer12_out"},
			{"Name" : "layer12_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "layer12_out"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_layer12_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_layer12_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_layer12_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_layer12_out_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_entry_split_split_split_split_split_split_split_split_split_split_split_sp {
		local_output {Type I LastRead 0 FirstWrite -1}
		layer12_out_V_data_V {Type O LastRead -1 FirstWrite 0}
		layer12_out_V_keep_V {Type O LastRead -1 FirstWrite 0}
		layer12_out_V_strb_V {Type O LastRead -1 FirstWrite 0}
		layer12_out_V_last_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	local_output { ap_fifo {  { local_output_dout fifo_data_in 0 168 }  { local_output_num_data_valid fifo_status_num_data_valid 0 3 }  { local_output_fifo_cap fifo_update 0 3 }  { local_output_empty_n fifo_status 0 1 }  { local_output_read fifo_port_we 1 1 } } }
	layer12_out_V_data_V { axis {  { layer12_out_TDATA out_data 1 168 } } }
	layer12_out_V_keep_V { axis {  { layer12_out_TKEEP out_data 1 21 } } }
	layer12_out_V_strb_V { axis {  { layer12_out_TSTRB out_data 1 21 } } }
	layer12_out_V_last_V { axis {  { layer12_out_TVALID out_vld 1 1 }  { layer12_out_TREADY out_acc 0 1 }  { layer12_out_TLAST out_data 1 1 } } }
}
