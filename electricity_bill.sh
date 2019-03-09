# 0-50    ---  Rs. 3/unit
# 50-100  ---  Rs. 4/unit
# 100-150 ---  Rs. 5/unit
# >150    ---  Rs. 7/Unit

echo "Enter Number of Units : "
read unit
amount=0
if [ $unit -ge 50 ]
then
	amount=`expr $amount + 150 `
	
elif [ $unit -lt 50 -a $unit -gt 0 ]
then
	amount=`expr $amount + $(expr $unit \* 3)`
fi

if [ $unit -ge 100 ]
then
	amount=`expr $amount + 400`
elif [ $unit -lt 100 -a $unit -gt 50 ]
then
	amount=`expr $amount + $(expr $(expr $unit - 50)  \* 4)`
fi


if [ $unit -ge 150 ]
then
	amount=`expr $amount + 750`
elif [ $unit -lt 150 -a $unit -gt 100 ]
then
	amount=`expr $amount + $(expr $(expr $unit - 100)  \* 5)`
fi



if [ $unit -ge 150 ]
then
	amount=`expr $amount + $(expr $(expr $unit - 150)  \* 7)`

fi
echo "Total Bill Amount is : $amount"
