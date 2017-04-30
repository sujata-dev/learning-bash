#Shell Script to calculate factorial of a number
echo -e "\nEnter number: "
read num
fact=1
for ((i=num;i>=1;i--))
do
	fact=`expr $fact \* $i`
done
echo -e "\nFactorial: $fact"
