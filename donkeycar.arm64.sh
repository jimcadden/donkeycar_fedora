#!/bin/bash

# Prepare RPi 
echo "start_x=1" | tee -a /boot/config.txt
echo "gpu_mem=128" | tee -a /boot/config.txt
dnf install i2c-tools -y

# Install donkeycar
cd ~/
git clone https://github.com/jimcadden/donkeycar
cd donkeycar
git checkout fedora 
rm -rf ./donkeycar/.git
bash ./install/pi/install.sh
source ~/env/bin/activate 
pip install -e .[pi]
