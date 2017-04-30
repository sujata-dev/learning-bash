#Shell Script to print elements of an array
echo -e "\nEnter number of elements: "
read n
echo -e "\nEnter elements: "
for ((i=0;i<n;i++))
do
	read arr[$i]
done
echo -e "\nElements of an array: "
for ((i=0;i<n;i++))
do
	echo "${arr[$i]} "
done
