#ifndef MYPROJECT_H_
#define MYPROJECT_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"

#include "defines.h"

// Prototype of top level function for C-synthesis
void myproject(
    hls::stream<input_t> &mfcc_input,
    hls::stream<ap_axis<168, 0, 0, 0>> &layer12_out
);

// hls-fpga-machine-learning insert emulator-defines
#endif



