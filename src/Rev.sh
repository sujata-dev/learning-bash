#Shell Script to reverse a number
echo -e "\nEnter number: "
read num
ans=0
while [ $num -ne 0 ]
do
	rem=`expr $num % 10`
	ans=`expr $ans \* 10 + $rem`
	num=`expr $num / 10`
done
echo -e "\nReversed number: $ans"
