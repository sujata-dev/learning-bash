#Shell Script to print mathematical table of given number
echo -e "\nEnter a number: "
read x
for ((i=1;i<=10;i++))
do
	a=`expr $x \* $i`
	echo -e "$x * $i = $a"
done
