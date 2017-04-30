#Shell Script to calculate gross salary of employee such that:
#	da= 40% of basic salary
#	hra= 20% of basic salary
#	gross= da + hra + basic salary
#	Final salary should only get calculated for days employee has come to work
echo -e "\nEnter basic salary: "
read bsal
echo -e "\nEnter no. of days: "
read days
da=`echo 0.4 \* $bsal|bc -l`
hra=`echo 0.2 \* $bsal|bc -l`
gross=`echo $da + $hra + $bsal|bc -l`
finalsal=`echo $days \* $gross|bc -l`
echo -e "\nGross Salary: $gross"
echo -e "\nFinal Salary: $finalsal"
