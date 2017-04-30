#Shell script to implement binary search
echo -e "\nEnter number of elements: "
read n
echo -e "\nEnter elements in ascending order: "
for ((i=0;i<n;i++))
do
	read arr[$i]
done
echo -e "\nEnter element to be searched: "
read item
first=0
last=`expr $n - 1`
flag=0
while [ $first -le $last ]
do
	mid=`expr $(($first+$last)) / 2`
	if [ ${arr[$mid]} -lt $item ]
	then
		first=`expr $mid + 1`
	elif [ ${arr[$mid]} -eq $item ]
	then
		loc=`expr $mid + 1`
		flag=1
		break
	else
		last=`expr $mid - 1`
	fi
done
if [ $flag -eq 1 ]
then
	echo -e "\nElement found at $loc"
else
	echo -e "\nElement not found"
fi
