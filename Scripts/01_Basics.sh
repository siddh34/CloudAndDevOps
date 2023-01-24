# !/bin/sh


# * echo is equivalent to printf but it by defaults prints new line
echo 'Enter a number: '
read number
echo 'You have entered ' $number
echo "You have entered " $number
printf "You have entered %d \n" $number
