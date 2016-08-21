#!/bin/sh

/usr/local/gcc-arm-none-eabi-4_7-2013q3/bin/arm-none-eabi-gcc -O0 -mfpu=neon-vfpv4 -mfloat-abi=hard -march=armv7-a -mtune=cortex-a7 -g armc-01.c -o kernel.elf
