#include <algorithm>
#include <fstream>
#include <iostream>
#include <map>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <vector>

#include "firmware/myproject.h"
#include "firmware/nnet_utils/nnet_helpers.h"
#include "ap_axi_sdata.h"

namespace nnet {
bool trace_enabled = true;
std::map<std::string, void *> *trace_outputs = NULL;
size_t trace_type_size = sizeof(double);
} // namespace nnet

int main(int argc, char **argv) {

    std::ifstream fin("tb_data/tb_input_features.dat");
    if (!fin.is_open()) fin.open("../../../../tb_data/tb_input_features.dat");
    if (!fin.is_open()) fin.open("tb_input_features.dat");

    std::ifstream fpr("tb_data/tb_output_predictions.dat");
    if (!fpr.is_open()) fpr.open("../../../../tb_data/tb_output_predictions.dat");
    if (!fpr.is_open()) fpr.open("tb_output_predictions.dat");

#ifdef RTL_SIM
    std::string RESULTS_LOG = "tb_data/rtl_cosim_results.log";
#else
    std::string RESULTS_LOG = "tb_data/csim_results.log";
#endif
    std::ofstream fout(RESULTS_LOG);

    std::string iline;
    std::string pline;
    int e = 0;
    int fail_count = 0;

    if (fin.is_open() && fpr.is_open()) {
        while (std::getline(fin, iline) && std::getline(fpr, pline)) {
            
            char *cstr = const_cast<char *>(iline.c_str());
            char *current;
            std::vector<float> in;
            current = strtok(cstr, " ");
            while (current != NULL) {
                in.push_back(atof(current));
                current = strtok(NULL, " ");
            }

            cstr = const_cast<char *>(pline.c_str());
            std::vector<float> pr;
            current = strtok(cstr, " ");
            while (current != NULL) {
                pr.push_back(atof(current));
                current = strtok(NULL, " ");
            }

            hls::stream<input_t> mfcc_input("mfcc_input");
            nnet::copy_data<float, input_t, 0, 40*101*1>(in, mfcc_input);

            hls::stream< ap_axis<168, 0, 0, 0> > layer12_out("layer12_out");

            myproject(mfcc_input, layer12_out);

            ap_axis<168, 0, 0, 0> out_packet = layer12_out.read();
            
            ap_fixed<24, 12> csim_results[7];
            for (int i = 0; i < 7; i++) {
                int start_bit = 24 * i;         
                int end_bit = start_bit + 23;   
                csim_results[i].range() = out_packet.data.range(end_bit, start_bit);
            }

            std::cout << "UZORAK " << e << std::endl;
            
            int keras_argmax = 0;
            float keras_max = pr[0];
            int csim_argmax = 0;
            float csim_max = csim_results[0].to_float();

            for (int i = 0; i < 7; i++) {
                float keras_val = pr[i];
                float csim_val = csim_results[i].to_float();
                float diff = std::abs(keras_val - csim_val);

                if (keras_val > keras_max) { keras_max = keras_val; keras_argmax = i; }
                if (csim_val > csim_max) { csim_max = csim_val; csim_argmax = i; }

                std::cout << "  Klasa [" << i << "] -> Keras: " << keras_val 
                          << " | CSIM: " << csim_val 
                          << " | Razlika: " << diff << std::endl;

                fout << csim_val << " ";
            }
            fout << std::endl;

            std::cout << "--> Klasa Argmax | Keras: " << keras_argmax << " vs CSIM: " << csim_argmax << std::endl;

            if (keras_argmax != csim_argmax) {
                std::cout << ">> FAIL" << std::endl;
                fail_count++;
            } else {
                std::cout << ">> PASS" << std::endl;
            }

            e++;
        }
        fin.close();
        fpr.close();
    } else {
        std::cout << "ERROR" << std::endl;
        return 1;
    }

    fout.close();
    std::cout << "ZAVRŠEN TEST: Prošlo " << (e - fail_count) << " od " << e << " uzoraka." << std::endl;

    return fail_count;
}