#!/bin/bash
# Install donkeycar
cd ~/
[[ -d donkeycar ]] || git clone https://github.com/jimcadden/donkeycar --branch fedora
cd donkeycar
rm -rf ./donkeycar/.git
bash ./install/pi/install.sh
source ~/env/bin/activate 
pip install -e .[pi]

echo "export LD_LIBRARY_PATH=/opt/vc/lib:\$LD_LIBRARY_PATH" >> ~/.bashrc

dnf remove -y git vim
