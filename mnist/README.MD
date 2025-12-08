##Running Python Script

#Required Libraries: 
* pyTorch 
* torchVision
* scipi
* tkinter
* pyserial

#Usage:
``python3 train_mnist_fc.py`` 
This executable will train the MMIST Model and create a Mnist_fc.pth file containing the model. Typically you would want to run this first before running the other scripts.

``python3 mnist_gui.py``
This executable will create a GUI interface to streamline testing. It provides a 28x28 canvas for inferencing and a method to stream input activations and weights. To connect the FPGA we recommend running this file in powershell and open Windows Device Manager and find the FPGA port under Ports (COM & LPT).

``python3 mnist.py _____.png``
This file contains the model for inferencing a 28x28 image. You can use [Pixilart](https://www.pixilart.com/draw) to generate testfiles for mnist.py





