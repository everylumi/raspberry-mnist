#!/bin/bash

# the tools needed
sudo apt-get install cmake curl
# download the latest TensorFlow version (2.6.0)
wget -O tensorflow.zip https://github.com/tensorflow/tensorflow/archive/v2.6.0.zip
# unpack and give the folder a convenient name
unzip tensorflow.zip
mv tensorflow-2.6.0 tensorflow
cd tensorflow
# get the dependencies
./tensorflow/lite/tools/make/download_dependencies.sh
# run the C++ installation (± 25 min)
./tensorflow/lite/tools/make/build_rpi_lib.sh

version=$(getconf LONG_BIT)

if [ $version == "32" ]; then
./tensorflow/lite/tools/make/build_rpi_lib.sh
fi

if [ $version == "64" ]; then
./tensorflow/lite/tools/make/build_aarch64_lib.sh
fi