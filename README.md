# cudnn and cublas for neural networks
Simplistic test on CuDNN and CuBLAS for a simple neural net (LeNET?) training using MNIST dataset.

# Disclaimer

nvcc - cuda_12.4.r12.4/compiler.33961263_0

gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0

The code was tested on CuDNN9.5

Previous version than 8.0 are not longer supported.

# How to use

```bash
$ bash download-mnist-dataset.sh
$ make
$ ./train
```

# Expected output
```bash
[TRAIN]
loading ./dataset/train-images-idx3-ubyte
loaded 60000 items..
.. model Configuration ..
CUDA: conv1
CUDA: pool
CUDA: conv2
CUDA: pool
CUDA: dense1
CUDA: relu
CUDA: dense2
CUDA: softmax
conv1: Available Algorithm Count [FWD]: 10
conv1: Available Algorithm Count [BWD-filter]: 9
conv1: Available Algorithm Count [BWD-data]: 8
.. initialized conv1 layer ..
conv2: Available Algorithm Count [FWD]: 10
conv2: Available Algorithm Count [BWD-filter]: 9
conv2: Available Algorithm Count [BWD-data]: 8
.. initialized conv2 layer ..
.. initialized dense1 layer ..
.. initialized dense2 layer ..
step:  200, loss: 0.348, acc: 72.475%
step:  400, loss: 0.278, acc: 90.805%
step:  600, loss: 0.167, acc: 92.857%
step:  800, loss: 0.220, acc: 93.934%
step: 1000, loss: 0.170, acc: 94.688%
step: 1200, loss: 0.128, acc: 95.287%
step: 1400, loss: 0.172, acc: 95.744%
step: 1600, loss: 0.118, acc: 96.131%
step: 1800, loss: 0.165, acc: 96.367%
step: 2000, loss: 0.095, acc: 96.637%
step: 2200, loss: 0.088, acc: 96.818%
step: 2400, loss: 0.090, acc: 96.945%
[INFERENCE]
loading ./dataset/t10k-images-idx3-ubyte
loaded 10000 items..
conv1: Available Algorithm Count [FWD]: 10
conv1: Available Algorithm Count [BWD-filter]: 9
conv1: Available Algorithm Count [BWD-data]: 8
conv2: Available Algorithm Count [FWD]: 10
conv2: Available Algorithm Count [BWD-filter]: 9
conv2: Available Algorithm Count [BWD-data]: 8
loss: 0.006, acc: 97.250%
Done.
```
