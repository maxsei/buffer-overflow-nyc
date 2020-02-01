#!/usr/bin/env sh
gcc exploit.c -o exploit -fno-stack-protector && \
./exploit example_data.txt
