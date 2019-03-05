echo "Enter a number:"
read num
if [ `expr $num % 2` -eq 0 ]
then 
	echo "$num is a Even number"
else
echo "$num is a Odd Number"
fi

