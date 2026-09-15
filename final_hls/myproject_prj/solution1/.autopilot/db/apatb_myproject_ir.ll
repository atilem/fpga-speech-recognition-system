; ModuleID = 'C:/Users/Melita/Desktop/dodov_mod/final_hls/myproject_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>" = type { %"struct.nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>" }
%"struct.nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>" = type { [1 x %"struct.ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>"] }
%"struct.ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<20, 10, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<20, 10, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<20, true>" }
%"struct.ssdm_int<20, true>" = type { i20 }
%"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>" = type { %"struct.hls::axis<ap_int<168>, 0, 0, 0, '8', false>" }
%"struct.hls::axis<ap_int<168>, 0, 0, 0, '8', false>" = type { %"struct.ap_int<168>", %"struct.ap_uint<21>", %"struct.ap_uint<21>", %"class.std::ios_base::Init", %"struct.ap_uint<1>", %"class.std::ios_base::Init", %"class.std::ios_base::Init" }
%"struct.ap_int<168>" = type { %"struct.ap_int_base<168, true>" }
%"struct.ap_int_base<168, true>" = type { %"struct.ssdm_int<168, true>" }
%"struct.ssdm_int<168, true>" = type { i168 }
%"struct.ap_uint<21>" = type { %"struct.ap_int_base<21, false>" }
%"struct.ap_int_base<21, false>" = type { %"struct.ssdm_int<21, false>" }
%"struct.ssdm_int<21, false>" = type { i21 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"class.std::ios_base::Init" = type { i8 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_myproject_ir(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias nocapture nonnull dereferenceable(4) %mfcc_input, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(64) %layer12_out) local_unnamed_addr #1 {
entry:
  %mfcc_input_copy = alloca %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>", align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %mfcc_input_copy, i32 0) ]
  %layer12_out_copy.data = alloca i168, align 512
  %layer12_out_copy.keep = alloca i21, align 512
  %layer12_out_copy.strb = alloca i21, align 512
  %layer12_out_copy.last = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* nonnull %mfcc_input, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* nonnull align 512 %mfcc_input_copy, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* nonnull %layer12_out, i168* nonnull align 512 %layer12_out_copy.data, i21* nonnull align 512 %layer12_out_copy.keep, i21* nonnull align 512 %layer12_out_copy.strb, i1* nonnull align 512 %layer12_out_copy.last)
  call void @apatb_myproject_hw(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %mfcc_input_copy, i168* %layer12_out_copy.data, i21* %layer12_out_copy.keep, i21* %layer12_out_copy.strb, i1* %layer12_out_copy.last)
  call void @copy_back(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %mfcc_input, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %mfcc_input_copy, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %layer12_out, i168* %layer12_out_copy.data, i21* %layer12_out_copy.keep, i21* %layer12_out_copy.strb, i1* %layer12_out_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias align 512, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* noalias, i168* noalias align 512 "unpacked"="3.0" %_V_data_V, i21* noalias align 512 "unpacked"="3.1" %_V_keep_V, i21* noalias align 512 "unpacked"="3.2" %_V_strb_V, i1* noalias align 512 "unpacked"="3.3" %_V_last_V) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* align 512 %1, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"(i168* align 512 %_V_data_V, i21* align 512 %_V_keep_V, i21* align 512 %_V_strb_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias align 512 %dst, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %dst, null
  %1 = icmp eq %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* nonnull align 512 %dst, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias nocapture align 512, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>", %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %2
  %8 = bitcast %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"(i168* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i21* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i21* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"(i168* align 512 %dst_V_data_V, i21* align 512 %dst_V_keep_V, i21* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"(i168* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i21* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i21* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"
  %2 = alloca i168
  %3 = alloca i21
  %4 = alloca i21
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  %7 = call i1 @fpga_fifo_not_empty_64(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_64(i8* %8, i8* %9)
  %10 = load volatile %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>" %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>" %10, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>" %10, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>" %10, 0, 4, 0, 0, 0
  store i168 %.fca.0.0.0.0.0.extract, i168* %2
  %11 = bitcast i168* %2 to i8*
  %12 = bitcast i168* %_V_data_V to i8*
  call void @fpga_fifo_push_32(i8* %11, i8* %12)
  store i21 %.fca.0.1.0.0.0.extract, i21* %4
  %13 = bitcast i21* %4 to i8*
  %14 = bitcast i21* %_V_keep_V to i8*
  call void @fpga_fifo_push_4(i8* %13, i8* %14)
  store i21 %.fca.0.2.0.0.0.extract, i21* %3
  %15 = bitcast i21* %3 to i8*
  %16 = bitcast i21* %_V_strb_V to i8*
  call void @fpga_fifo_push_4(i8* %15, i8* %16)
  store i1 %.fca.0.4.0.0.0.extract, i1* %5
  %17 = bitcast i1* %5 to i8*
  %18 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %17, i8* %18)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias align 512, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* noalias, i168* noalias align 512 "unpacked"="3.0" %_V_data_V, i21* noalias align 512 "unpacked"="3.1" %_V_keep_V, i21* noalias align 512 "unpacked"="3.2" %_V_strb_V, i1* noalias align 512 "unpacked"="3.3" %_V_last_V) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %0, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>.256"(%"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %2, i168* align 512 %_V_data_V, i21* align 512 %_V_keep_V, i21* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>.256"(%"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* noalias %dst, i168* noalias align 512 "unpacked"="1.0" %src_V_data_V, i21* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i21* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>.259"(%"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i168* align 512 %src_V_data_V, i21* align 512 %src_V_keep_V, i21* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>.259"(%"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* noalias nocapture, i168* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i21* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i21* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca i168
  %2 = alloca i21
  %3 = alloca i21
  %4 = alloca i1
  %5 = alloca %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i168* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_32(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i168* %1 to i8*
  %9 = bitcast i168* %_V_data_V to i8*
  call void @fpga_fifo_pop_32(i8* %8, i8* %9)
  %10 = load volatile i168, i168* %1
  %11 = bitcast i21* %3 to i8*
  %12 = bitcast i21* %_V_keep_V to i8*
  call void @fpga_fifo_pop_4(i8* %11, i8* %12)
  %13 = bitcast i21* %3 to i24*
  %14 = load i24, i24* %13
  %15 = trunc i24 %14 to i21
  %16 = bitcast i21* %2 to i8*
  %17 = bitcast i21* %_V_strb_V to i8*
  call void @fpga_fifo_pop_4(i8* %16, i8* %17)
  %18 = bitcast i21* %2 to i24*
  %19 = load i24, i24* %18
  %20 = trunc i24 %19 to i21
  %21 = bitcast i1* %4 to i8*
  %22 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i1* %4 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>" undef, i168 %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i21 %15, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i21 %20, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %25, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %5
  %26 = bitcast %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %5 to i8*
  %27 = bitcast %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %26, i8* %27)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_myproject_hw(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"*, i168*, i21*, i21*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias align 512, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* noalias, i168* noalias align 512 "unpacked"="3.0" %_V_data_V, i21* noalias align 512 "unpacked"="3.1" %_V_keep_V, i21* noalias align 512 "unpacked"="3.2" %_V_strb_V, i1* noalias align 512 "unpacked"="3.3" %_V_last_V) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %0, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>.256"(%"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %2, i168* align 512 %_V_data_V, i21* align 512 %_V_keep_V, i21* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  ret void
}

define void @myproject_hw_stub_wrapper(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"*, i168*, i21*, i21*, i1*) #6 {
entry:
  %5 = alloca %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"
  call void @copy_out(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* null, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %0, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %5, i168* %1, i21* %2, i21* %3, i1* %4)
  call void @myproject_hw_stub(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %0, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %5)
  call void @copy_in(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* null, %"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* %0, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* %5, i168* %1, i21* %2, i21* %3, i1* %4)
  ret void
}

declare void @myproject_hw_stub(%"class.hls::stream<nnet::array<ap_fixed<20, 10, AP_TRN, AP_WRAP, 0>, 1>, 0>"* noalias nocapture nonnull, %"class.hls::stream<hls::axis<ap_int<168>, 0, 0, 0, '8', false>, 0>"* noalias nonnull)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="32" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
