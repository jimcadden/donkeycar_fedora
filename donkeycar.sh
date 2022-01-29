#!/bin/bash
cd ~/
source ~/.bashrc 
git clone https://github.com/autorope/donkeycar
cd donkeycar
git checkout master 
micromamba create -p donkey #-y -f install/envs/ubuntu.yml 
micromamba activate donkey
micromamba install python=3.7 pip pandas -y -c conda-forge
pip install tensorflow==2.2.0
pip install -e .[pc]
