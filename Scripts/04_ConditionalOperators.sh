# i/bin/sh
# Shell script for conditional statements


echo "Enter a number"
read number

# only if

if [ $number -lt 0 ]; then
    echo "It is less than 0"
fi

