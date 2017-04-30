#Shell Script to perform various arithmetic operations
echo -e "\nInteger Operations:"
echo -e "\nEnter 2 numbers: "
read a b
c=`expr $a + $b` # ` is inverted comma
echo -e "\nAddition: $c" #echo -e is used when \n is used, else use echo
c=`expr $a - $b`
echo "Subtraction: $c"
c=`expr $a \* $b` # \* is multiplication
echo "Product: $c"
c=`expr $a / $b`
echo "Quotient: $c"

echo -e "\nFloating Point Operations:"
echo -e "\nEnter 2 numbers: "
read a b
c=`echo $a + $b |bc -l`
echo -e "\nAddition: $c"
c=`echo $a - $b |bc -l`
echo "Subtraction: $c"
c=`echo $a \* $b |bc -l`
echo "Product: $c"
c=`echo $a / $b |bc -l` #use echo for float, scale upto 20 if not specified
echo "Quotient: $c"

