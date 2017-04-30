#Shell Script to find largest and smallest of given 3 numbers
echo -e "\nEnter 3 numbers: "
read a b c
#for largest
if [ $a -gt $b ]
then
	if [ $a -gt $c ]
	then
		l=$a
	fi
elif [ $b -gt $c ]
then
	if [ $b -gt $c ]
	then
		l=$b
	fi
else
	l=$c
fi

#for smallest
if [ $a -lt $b ]
then
	if [ $a -lt $c ]
	then
		s=$a
	fi
elif [ $b -lt $c ]
then
	if [ $b -lt $c ]
	then
		s=$b
	fi
else
	s=$c
fi

echo -e "\nLargest number: $l Smallest number: $s"

