#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <array>
#include <cstddef>
#include <cstdio>
#include <tuple>
#include <tuple>


// hls-fpga-machine-learning insert numbers

// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_fixed<20,10>, 1*1> input_t;
typedef nnet::array<ap_fixed<20,10>, 1*1> layer13_t;
typedef ap_fixed<26,12> conv2d_accum_t;
typedef nnet::array<ap_fixed<18,8>, 12*1> layer2_t;
typedef ap_fixed<18,8> conv2d_weight_t;
typedef ap_fixed<18,8> conv2d_bias_t;
typedef nnet::array<ap_fixed<39,19>, 12*1> batch_normalization_result_t;
typedef ap_fixed<20,10> batch_normalization_scale_t;
typedef ap_fixed<20,10> batch_normalization_bias_t;
typedef nnet::array<ap_fixed<20,10>, 12*1> layer4_t;
typedef ap_fixed<18,8> activation_table_t;
typedef ap_fixed<20,10> max_pooling2d_accum_t;
typedef nnet::array<ap_fixed<20,10>, 12*1> layer5_t;
typedef nnet::array<ap_fixed<20,10>, 12*1> layer14_t;
typedef ap_fixed<26,12> conv2d_1_accum_t;
typedef nnet::array<ap_fixed<18,8>, 18*1> layer6_t;
typedef ap_fixed<18,8> conv2d_1_weight_t;
typedef ap_fixed<18,8> conv2d_1_bias_t;
typedef nnet::array<ap_fixed<39,19>, 18*1> batch_normalization_1_result_t;
typedef ap_fixed<20,10> batch_normalization_1_scale_t;
typedef ap_fixed<20,10> batch_normalization_1_bias_t;
typedef nnet::array<ap_fixed<20,10>, 18*1> layer8_t;
typedef ap_fixed<18,8> activation_1_table_t;
typedef ap_fixed<20,10> max_pooling2d_1_accum_t;
typedef nnet::array<ap_fixed<20,10>, 18*1> layer9_t;
typedef ap_fixed<26,12> output_accum_t;
typedef nnet::array<ap_fixed<24,12>, 7*1> result_t;
typedef ap_fixed<18,8> output_weight_t;
typedef ap_fixed<18,8> output_bias_t;
typedef ap_uint<1> layer12_index;

// hls-fpga-machine-learning insert emulator-defines


#endif
