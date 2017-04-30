#Shell script to swap two numbers without using third variable
echo -e "\nEnter 2 numbers: "
read a b
a=`expr $a + $b`
b=`expr $a - $b`
a=`expr $a - $b`
echo -e "\nSwapped numbers: $a $b"
