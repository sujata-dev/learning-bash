#Shell Script to find whether given number is odd or even
echo -e "\nEnter number: "
read num
x=`expr $num % 2`
if [ $x -eq 0 ]
then
	echo "Even"
else
	echo "Odd"
fi
