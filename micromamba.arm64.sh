#!/bin/bash
cd / 
wget -qO- https://anaconda.org/conda-forge/micromamba/0.20.0/download/linux-aarch64/micromamba-0.20.0-0.tar.bz2 | tar -xvj bin/micromamba
micromamba shell init -s bash -p ~/micromamba
source ~/.bashrc
