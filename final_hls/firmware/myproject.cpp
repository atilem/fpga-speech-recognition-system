#include <iostream>

#include "myproject.h"
#include "parameters.h"
#include "ap_axi_sdata.h"


void myproject(
    hls::stream<input_t> &mfcc_input,
    hls::stream< ap_axis<168, 0, 0, 0> > &layer12_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE s_axilite port=return bundle=control
    #pragma HLS INTERFACE axis port=mfcc_input
    #pragma HLS INTERFACE axis port=layer12_out
    #pragma HLS DATAFLOW

    hls::stream<result_t> local_output("local_output");
    #pragma HLS STREAM variable=local_output depth=2

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<conv2d_weight_t, 108>(w2, "w2.txt");
        nnet::load_weights_from_txt<conv2d_bias_t, 12>(b2, "b2.txt");
        nnet::load_weights_from_txt<batch_normalization_scale_t, 12>(s3, "s3.txt");
        nnet::load_weights_from_txt<batch_normalization_bias_t, 12>(b3, "b3.txt");
        nnet::load_weights_from_txt<conv2d_1_weight_t, 1944>(w6, "w6.txt");
        nnet::load_weights_from_txt<conv2d_1_bias_t, 18>(b6, "b6.txt");
        nnet::load_weights_from_txt<batch_normalization_1_scale_t, 18>(s7, "s7.txt");
        nnet::load_weights_from_txt<batch_normalization_1_bias_t, 18>(b7, "b7.txt");
        nnet::load_weights_from_txt<output_weight_t, 3150>(w12, "w12.txt");
        nnet::load_weights_from_txt<output_bias_t, 7>(b12, "b12.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer13_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=4223

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=1020

    hls::stream<batch_normalization_result_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=1020

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=1020

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=250

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=324

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=250

    hls::stream<batch_normalization_1_result_t> layer7_out("layer7_out");
    #pragma HLS STREAM variable=layer7_out depth=250

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=250

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=25

    auto& layer10_out = layer9_out;
    nnet::zeropad2d_cl<input_t, layer13_t, config13>(mfcc_input, layer13_out); // zp2d_conv2d

    nnet::conv_2d_cl<layer13_t, layer2_t, config2>(layer13_out, layer2_out, w2, b2); // conv2d

    nnet::normalize<layer2_t, batch_normalization_result_t, config3>(layer2_out, layer3_out, s3, b3); // batch_normalization

    nnet::relu<batch_normalization_result_t, layer4_t, relu_config4>(layer3_out, layer4_out); // activation

    nnet::pooling2d_cl<layer4_t, layer5_t, config5>(layer4_out, layer5_out); // max_pooling2d

    nnet::zeropad2d_cl<layer5_t, layer14_t, config14>(layer5_out, layer14_out); // zp2d_conv2d_1

    nnet::conv_2d_cl<layer14_t, layer6_t, config6>(layer14_out, layer6_out, w6, b6); // conv2d_1

    nnet::normalize<layer6_t, batch_normalization_1_result_t, config7>(layer6_out, layer7_out, s7, b7); // batch_normalization_1

    nnet::relu<batch_normalization_1_result_t, layer8_t, relu_config8>(layer7_out, layer8_out); // activation_1

    nnet::pooling2d_cl<layer8_t, layer9_t, config9>(layer8_out, layer9_out); // max_pooling2d_1

    nnet::dense<layer9_t, result_t, config12>(layer10_out, local_output, w12, b12); // output

    result_t out_val = local_output.read();

    ap_axis<168, 0, 0, 0> stream_data;
    ap_uint<168> packed_data = 0;

    for(int i = 0; i < 7; i++) {
        #pragma HLS UNROLL

        int start_bit = 24 * i;
        int end_bit = start_bit + 23;

        packed_data.range(end_bit, start_bit) = out_val[i].range();
    }

    stream_data.data = packed_data;
    stream_data.last = 1;
    stream_data.keep = -1;

    layer12_out.write(stream_data);

}

