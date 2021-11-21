# raspberrypi-mnist
This is a method of recognizing handwritten numbers using Raspberry Pi 3/4.

## Training Data

<center> Mnist Dataset </center>

![image](https://github.com/everylumi/raspberrypi-mnist/doc/MnistExamples.png)


## requirements 
- Raspberry Pi 3 or 4
- Python 3.7 or above
- OpenCV 4
- TensorFlow 2.1.0 or above

## Installation

#### Step 1 clone repository
```sh
cd ~
git clone https://github.com/everylumi/raspberrypi-mnist.git
cd raspberrypi-mnist
```

#### Step 2 update Raspberry Pi OS to install OpenCV/TensorFlow
```sh
    sudo apt update
    sudo apt upgrade
```

#### Step 3 install OpenCV (skip, if installed already)
```sh
bash get_pi_requirements_opencv.sh
pip3 install opencv-contrib-python==4.1.0.25
```

#### Step 4 install tensorflow (skip, if installed already)
```sh
bash install_tensorflow-2.4.0.sh
```

#### Step 5 check version
```
python3
>>> import cv2
>>> cv2.__version__
>>> import tensorflow as tf
>>> tf.__version__
```


## Usage
```sh
cd ~/raspberrypi-mnist
python3 TFLite_mnist_webcam.py --modeldir=mnist_model
```
![image](https://github.com/everylumi/raspberrypi-mnist/doc/2021-11-21.png)


## License  
This project is licensed under the terms of the MIT license.