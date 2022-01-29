#!/bin/bash
cd ~/
source ~/.bashrc 
git clone https://github.com/tawnkramer/gym-donkeycar
cd gym-donkeycar/
micromamba activate donkey
pip install -e .[gym-donkeycar]
