import tensorflow as tf
import hls4ml

model = tf.keras.models.load_model('model.h5')

config = hls4ml.utils.config_from_keras_model(model, granularity='name', backend='Vitis')

config['Model']['Precision'] = 'ap_fixed<20,10>'

if 'mfcc_input' in config['LayerName']:
    config['LayerName']['mfcc_input']['Precision'] = {
        'result': 'ap_fixed<20,10>'
    }

if 'conv2d' in config['LayerName']:
    config['LayerName']['conv2d']['ReuseFactor'] = 108
    config['LayerName']['conv2d']['Strategy'] = 'Resource'
    config['LayerName']['conv2d']['Precision'] = {
        'weight': 'ap_fixed<18,8>',
        'bias': 'ap_fixed<18,8>',
        'accum': 'ap_fixed<26,12>',
        'result': 'ap_fixed<18,8>'
    }

if 'conv2d_1' in config['LayerName']:
    config['LayerName']['conv2d_1']['ReuseFactor'] = 1944
    config['LayerName']['conv2d_1']['Strategy'] = 'Resource'
    config['LayerName']['conv2d_1']['Precision'] = {
        'weight': 'ap_fixed<18,8>',
        'bias': 'ap_fixed<18,8>',
        'accum': 'ap_fixed<26,12>',
        'result': 'ap_fixed<18,8>'
    }

if 'output' in config['LayerName']:
    config['LayerName']['output']['ReuseFactor'] = 3150
    config['LayerName']['output']['Strategy'] = 'Resource'
    config['LayerName']['output']['Precision'] = {
        'weight': 'ap_fixed<18,8>',
        'bias': 'ap_fixed<18,8>',
        'accum': 'ap_fixed<26,12>',
        'result': 'ap_fixed<24,12>'
    }


hls_model = hls4ml.converters.convert_from_keras_model(
    model, 
    hls_config=config, 
    output_dir='final_hls',
    backend='Vitis',
    part='xc7z020clg400-1',
    clock_period=20,
    io_type='io_stream',
    interface='axi_stream'
)

hls_model.write()
