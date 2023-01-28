
echo "Enter number :"
read number

if [ $number -lt 0 ]; then
    echo "less than zero"
elif [ $number -gt 0 ]; then
    echo "greater than zero"
else
    echo "its a zero"
fi