#!/bin/bash

export ARCH=arm
export PATH=/home/3lambda/kernel/arm-cortex_a15-linux-gnueabihf-linaro_4.9/bin:$PATH

mkdir output

make -C $(pwd) O=output alex_defconfig
make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
