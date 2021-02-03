#!/bin/bash
echo -e "\e[1;31m:: \033[1;97mFlashing $1 at $2..."
dd if=$1 of=$2 oflag=sync bs=4M status=progress
