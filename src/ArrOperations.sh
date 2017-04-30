#Shell script to implement all basic array operations
arr=(apple bat dog hat cat)
echo -e "\nElements of array: "
echo ${arr[@]}
echo ${arr[@]:0}
echo -e "\nElements of array minus first element: "
echo ${arr[@]:1}
echo -e "\nElements of array in a particular range: "
echo ${arr[@]:1:3}
echo -e "\nLength of first element of array: "
echo ${#arr[0]}
echo -e "\nTotal number of elements in array: "
echo ${#arr[@]}
echo ${#arr[*]}
echo -e "\nReplacing substring: "
echo ${arr[@]//a/A}
echo ${arr[@]//og/AT}
