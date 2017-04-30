#Shell Script to calculate a^b
echo -e "\nEnter base and exponent: "
read base exp
ans=1
while [ $exp -ne 0 ]
do
	ans=`expr $ans \* $base`
	exp=`expr $exp - 1`
done
echo -e "\nAnswer: $ans"
