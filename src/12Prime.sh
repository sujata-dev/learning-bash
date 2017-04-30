#Shell Script to display prime numbers upto a given term
echo -e "\nEnter a number: "
read n
echo -e "\nPrime numbers upto a given term: \n"
for ((i=2;i<=n;i++))
do
	isprime=1
	k1=`expr $i / 2`
	for ((j=2;j<=k1;j++))
	do
		k2=`expr $i % $j`
		if [ $k2 -eq 0 ]
		then
			isprime=0
			break
		fi
	done
	if [ $isprime -eq 1 ] && [ $n -ne 1 ]   #-ne is not equal
	then
		echo "$i "
	fi
done
