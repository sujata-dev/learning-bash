#Shell script to display daily wages of workers according to the given day
i=0
echo -e "\nDaily wages:\n"
for day in mon tue wed thur fri sat sun
do
	echo -e "\nDay $((i++)): $day"
	if [ $i -eq 6 ] || [ $i -eq 7 ]
	then
		echo -e "Wage: Rs. 350"
	else
		echo -e "Wage: Rs. 550"
	fi
done
