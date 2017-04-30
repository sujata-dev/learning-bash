#To simulate cash withdrawal process from bank. Take balance and withdrawal
#amount from user
#	if amount <= 1500 apply 2% tax
#	if amount > 1500 and amount <= 3000 apply 3% tax
#	if amount > 3000 and amount <= 5000  apply 4% tax
echo -e "\nEnter balance and withdrawal amount: "
read bal amt
if [ $bal -lt $amt ]
then
	 echo "You can't withdraw"
fi
if [ $amt -le 1500 ]
then
	 echo "2% tax applied"
	 tax=`echo $amt \* 0.02|bc -l`
	 rembal=`echo $bal - $tax|bc -l`
elif [ $amt -gt 1500 ] && [ $amt -le 3000 ]
then
	 echo "3% tax applied"
	 tax=`echo $amt \* 0.03|bc -l`
elif [ $amt -gt 3000 ] && [ $amt -le 5000 ]
then
	 echo "4% tax applied"
	 tax=`echo $amt \* 0.04|bc -l`
fi
rembal=`echo $bal - $tax|bc -l`
echo "Total deductable amount: $tax"
echo "Remaining balance: $rembal"
