#!/bin/bash
# Install Raspberry Pi user libraries 

dnf install -y cmake gcc-c++
git clone https://github.com/raspberrypi/userland/
cd userland/
git revert -n f97b1af1b3e653f9da2c1a3643479bfd469e3b74
git revert -n e31da99739927e87707b2e1bc978e75653706b9c
./buildme --aarch64

cd ../
rm -rf userland
dnf remove -y cmake gcc-c++
