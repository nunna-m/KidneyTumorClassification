'''
CNN
'''

# built-in

# external
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers
from tensorflow.keras.layers import Layer
from tensorflow.keras import Model
from tensorflow.python.keras.layers.advanced_activations import Softmax
# customs
from . import components

class CNN(Model):
    def __init__(
        self,
        filters=None,
        kernel_size=None,
        strides=None,
        dropout=None,
        trainable=True,
        activation='relu',
        classifier_activation='softmax',
        num_classes=2,
        **kargs,
    ):
        super().__init__(**kargs)
         # define all layers in init
        activation=layers.LeakyReLU()
        # Layer of Block 1
        self.conv1 = layers.Conv2D(64, 5, strides=2, activation=activation)
        self.max1  = layers.MaxPooling2D(3)
        self.bn1   = layers.BatchNormalization()

        # Layer of Block 2
        self.conv2 = layers.Conv2D(128, 5, strides=2, activation=activation)
        self.bn2   = layers.BatchNormalization()
        self.drop  = layers.Dropout(0.3)

        # Layer of Block 3
        self.conv3 = layers.Conv2D(256, 3, strides=2, activation=activation)
        self.bn2   = layers.BatchNormalization()
        self.drop  = layers.Dropout(0.5)

        self.flatten = layers.Flatten()
        # GAP, followed by Classifier
        self.gap   = layers.GlobalAveragePooling2D()
        self.dense = layers.Dense(64)
        self.classify = layers.Dense(num_classes, activation=classifier_activation)
    
    @tf.function
    def call(self, input_tensor, training=False):
        x = self.conv1(input_tensor)
        x = self.conv2(x)
        x = self.conv3(x)
        x = self.flatten(x)
        x = self.dense(x)
        x = self.drop(x)
        x = self.classify(x)
        return x

class linearCombiCNN(Model):
    def __init__(
        self,
        activation='relu',
        classifier_activation='softmax',
        num_classes=2,
        **kargs,
    ):
        super().__init__(**kargs)

        self.num_neurons = 224
        self.num_phases = 3
        self.linearphase1 = layers.Dense(224, activation=activation)
        self.linearphase2 = layers.Dense(224, activation=activation)
        self.linearphase3 = layers.Dense(224, activation=activation)

        self.compressNeuronPhase1 = layers.Dense(1, activation=activation)
        self.compressNeuronPhase2 = layers.Dense(1, activation=activation)
        self.compressNeuronPhase3 = layers.Dense(1, activation=activation)
        self.concat = layers.Concatenate()
        self.middleLayer = layers.Dense(3, activation=activation)
        self.linearchannel1 = layers.Dense(224*224, activation=activation)
        self.linearchannel2 = layers.Dense(224*224, activation=activation)
        self.linearchannel3 = layers.Dense(224*224, activation=activation)

        self.linearupsample = layers.Dense(self.num_neurons*self.num_neurons*3, activation=activation)
        self.reshape = layers.Reshape((self.num_neurons,self.num_neurons,3))

        self.conv1 = layers.Conv2D(64, 5, strides=2, activation=activation)
        self.max  = layers.MaxPooling2D()
        self.bn   = layers.BatchNormalization()

        # Layer of Block 2
        self.conv2 = layers.Conv2D(128, 5, strides=2, activation=activation)

        # Layer of Block 3
        self.conv3 = layers.Conv2D(256, 3, strides=2, activation=activation)
        self.drop  = layers.Dropout(0.5)

        self.flatten = layers.Flatten()
        # GAP, followed by Classifier
        self.gap   = layers.GlobalAveragePooling2D()
        self.dense = layers.Dense(64)
        self.classify = layers.Dense(num_classes, activation=classifier_activation)

        self.lambdaa1 = layers.Lambda(lambda x: x[:,:,:,0], input_shape=(self.num_neurons, self.num_neurons, self.num_phases))
        self.lambdaa2 = layers.Lambda(lambda x: x[:,:,:,1:2][...,None], input_shape=(self.num_neurons, self.num_neurons, self.num_phases))
        self.lambdaa3 = layers.Lambda(lambda x: x[:,:,:,2][...,None], input_shape=(self.num_neurons, self.num_neurons, self.num_phases))
    
    def filter_layer(self, input, index):
        x = input[:,:,:,index]
        x = tf.expand_dims(x, axis=3)
        #print(x.shape)
        return x

    @tf.function
    def call(self, input_tensor, training=False):
        
        #middle = self.middleLayer(self.concat([neuron0, neuron1, neuron2]))
        
        input0 = self.filter_layer(input_tensor,0)
        neuron0 = self.compressNeuronPhase1(input0)
        #neuron0 = self.compressNeuronPhase1(neuron0)
        channel0 = self.flatten(neuron0)
        #print("input 0, neuron0, channel0: ", input0.shape, neuron0.shape, channel0.shape)
        
        input1 = self.filter_layer(input_tensor,1)
        neuron1 = self.compressNeuronPhase2(input1)
        channel1 = self.flatten(neuron1)
        
        input2 = self.filter_layer(input_tensor,2)
        neuron2 = self.compressNeuronPhase3(input2)
        channel2 = self.flatten(neuron2)

        x = self.concat([channel0, channel1, channel2])
        x = self.reshape(x)
        x = self.conv1(x)
        x = self.conv2(x)
        x = self.conv3(x)
        x = self.flatten(x)
        x = self.dense(x)
        x = self.drop(x)
        x = self.classify(x)
        return x

class oldCNN(Model):
    def __init__(
        self,
        filters=None,
        kernel_size=None,
        strides=None,
        dropout=None,
        trainable=True,
        activation='relu',
        classifier_activation='softmax',
        num_classes=2,
        **kargs,
    ):
        super().__init__(**kargs)
        activation=layers.LeakyReLU()
        # Layer of Block 1
        self.conv1 = layers.Conv2D(64, 5, strides=2, activation=activation)
        self.max  = layers.MaxPooling2D()
        self.bn   = layers.BatchNormalization()

        # Layer of Block 2
        self.conv2 = layers.Conv2D(128, 5, strides=2, activation=activation)

        # Layer of Block 3
        self.conv3 = layers.Conv2D(256, 3, strides=2, activation=activation)
        self.drop  = layers.Dropout(0.5)

        self.flatten = layers.Flatten()
        # GAP, followed by Classifier
        self.gap   = layers.GlobalAveragePooling2D()
        self.dense = layers.Dense(64)
        self.classify = layers.Dense(num_classes, activation=classifier_activation)
    
    @tf.function
    def call(self, input_tensor, training=False):
        # forward pass: block 1 
        x = self.conv1(input_tensor)
        x = self.max(x)
        #x = self.bn(x)

        # forward pass: block 2 
        x = self.conv2(x)
        x = self.max(x)
        #x = self.bn(x)

        # forward pass: block 3 
        x = self.conv3(x)
        x = self.max(x)
        #x = self.bn(x)

        # droput followed by gap and classifier
        #x = self.drop(x)
        #x = self.gap(x)
        x = self.flatten(x)
        x = self.dense(x)
        x = self.drop(x)
        x = self.classify(x)
        return x