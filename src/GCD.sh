#Shell Script to find GCD of given 2 numbers
echo -e "\nEnter 2 numbers: "
read x y
for ((i=1;i<=x && i<=y;i++))
do
	a=`expr $x % $i`
	b=`expr $y % $i`
	if [ $a == 0 ] && [ $b == 0 ]
	then
		gcd=$i
	fi
done
echo "GCD: $gcd"
