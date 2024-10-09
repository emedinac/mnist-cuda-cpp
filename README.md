# cuda-for-deep-learning
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
== MNIST training with CUDNN ==
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
.. initialized conv1 layer ..
.. initialized conv2 layer ..
.. initialized dense1 layer ..
.. initialized dense2 layer ..
step:  200, loss: 0.561, acc: 75.762%
step:  400, loss: 2.754, acc: 96.574%
step:  600, loss: 0.157, acc: 97.004%
step:  800, loss: 0.005, acc: 97.006%
step: 1000, loss: 0.178, acc: 97.016%
step: 1200, loss: 0.014, acc: 96.998%
step: 1400, loss: 0.854, acc: 96.998%
step: 1600, loss: 0.165, acc: 96.984%
step: 1800, loss: 0.051, acc: 97.006%
step: 2000, loss: 0.284, acc: 97.025%
step: 2200, loss: 0.002, acc: 96.996%
step: 2400, loss: 0.013, acc: 96.990%
[INFERENCE]
loading ./dataset/t10k-images-idx3-ubyte
loaded 10000 items..
loss: 3.165, acc: 85.500%
Done.
```


All these features requires re-compilation
