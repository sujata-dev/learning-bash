#Shell Script to find whether given year is leap or not
echo -e "\nEnter year: "
read year
x=`expr $year % 4`
y=`expr $year % 100`
z=`expr $year % 400`
if [ $x -eq 0 ]
then
	if [ $y -eq 0 ]
	then
		if [ $z -eq 0 ]
		then
			echo -e "\nIt is a leap year"
		else
			echo -e "\nIt is not a leap year"
		fi
	else
		echo -e "\nIt is a leap year"
	fi
else
	echo -e "\nIt is not a leap year"
fi
