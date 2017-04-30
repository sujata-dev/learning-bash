#Shell script to print the elements of an array in a sorted order (asc or desc)
#Bubble sort
echo -e "\nEnter number of elements: "
read n
echo -e "\nEnter elements: "
for ((i=0;i<n;i++))
do
	read arr[$i]
done

m=`expr $n - 1`
for ((i=0;i<n;i++))
do
	for ((j=0;j<m;j++))
	do
		k=`expr $j + 1`
		if [ ${arr[$j]} -gt ${arr[$k]} ]
		then
			swap=${arr[$j]}
			arr[$j]=${arr[$k]}
			arr[$k]=$swap
		fi
	done
done
echo -e "\nElements in ascending order: "
for ((i=0;i<n;i++))
do
	echo -e "${arr[$i]}"
done

#############

m=`expr $n - 1`
for ((i=0;i<n;i++))
do
	for ((j=0;j<m;j++))
	do
		k=`expr $j + 1`
		if [ ${arr[$j]} -lt ${arr[$k]} ]
		then
			swap=${arr[$j]}
			arr[$j]=${arr[$k]}
			arr[$k]=$swap
		fi
	done
done
echo -e "\nElements in descending order: "
for ((i=0;i<n;i++))
do
	echo -e "${arr[$i]}"
done
