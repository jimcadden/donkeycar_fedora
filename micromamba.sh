#!/bin/bash

cd / 
wget -qO- https://micromamba.snakepit.net/api/micromamba/linux-64/latest | tar -xvj bin/micromamba
micromamba shell init -s bash -p ~/micromamba
source ~/.bashrc
