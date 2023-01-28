#i/bin/sh

echo "Enter a numbers"
read number
if [ $number -lt 0 ]; then
    echo "Less than zero"
else
    echo "Greater than or equal to zero"
fi