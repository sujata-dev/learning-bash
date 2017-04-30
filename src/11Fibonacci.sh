#Shell Script to generate Fibonacci series upto a given term
echo -e "\nEnter a number: "
read n
echo -e "\nFibonacci series upto a given term: \n"
first=0
second=1
next=0
for ((i=0;i<n;i++))
do
	if [ $i -le 1 ]
	then
		next=$i
	else
		next=`expr $first + $second`
		first=$second
		second=$next
	fi
	if [ $next -le $n ]
	then
		echo -e "$next"
	fi
done
