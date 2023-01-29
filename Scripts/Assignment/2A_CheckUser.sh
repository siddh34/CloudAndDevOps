# !/bin/sh

# Author : Siddharth Sutar
# Date : 28 Jan 2023

# Algorithm
# We can either check whoami if it is root or EUID whether it is zero if EUID is >=1000 then it is not root user

if [ `whoami` != root ] || [ "$EUID" -ne 0 ]; then
    echo "you are not a root user!"
    exit
else
    echo "you are a root user!"
fi
