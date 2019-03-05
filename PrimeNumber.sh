echo "Enter a number :"
read num
i=2
while [ $i -le `expr $num / 2` ]
do
  if [ `expr $num % $i` -eq 0 ]
	then	
		break
  else
	i=`expr $i + 1`
  fi
done

if [ $i -ge `expr $num / 2` ]
	then
		echo "$num is a Prime Number"
	else
		echo "$num is not a Prime Number"
fi


  


