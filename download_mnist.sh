#!/bin/sh
# https://github.com/golbin/TensorFlow-MNIST/tree/master/mnist/data
# https://stackoverflow.com/questions/40427435/extract-images-from-idx3-ubyte-file-or-gzip-via-python

# Download from thie repo https://github.com/fgnt/mnist
url_base=https://raw.githubusercontent.com/fgnt/mnist/master/
dataset_path=dataset

mkdir -p ${dataset_path}
# links to download the dataset. Got from 
wget -P ${dataset_path} ${url_base}/train-images-idx3-ubyte.gz
wget -P ${dataset_path} ${url_base}/train-labels-idx1-ubyte.gz
wget -P ${dataset_path} ${url_base}/t10k-images-idx3-ubyte.gz
wget -P ${dataset_path} ${url_base}/t10k-labels-idx1-ubyte.gz

gunzip ${dataset_path}/*.gz
