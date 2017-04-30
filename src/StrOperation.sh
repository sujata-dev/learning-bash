#Shell Script to perform various string operations
ans="y"
a=0
t=0
while [ $ans == "y" ]
do
	echo -e "1) Compare 2 strings"
	echo -e "2) Concatenate 2 strings"
	echo -e "3) Find string length"
	echo -e "4) Print odd characters"
	echo -e "5) Check palindrome"
	echo -e "6) Reverse string"
	echo -e "7) Replacing a substring"
	echo -e "8) Exit"
	echo -e "Enter choice: "
	read ch
	case $ch in
	1)	echo -e "Enter string1: "
		read str1
		echo -e "Enter string2: "
		read str2
		if [ $str1 == $str2 ]
		then
			echo -e "Strings equal"
		else
			echo -e "Strings not equal"
		fi
		;;
	2)	echo -e "Enter string1: "
		read str1
		echo -e "Enter string2: "
		read str2
		str3=$str1$str2
		echo -e "Concatenated string: $str3"
		;;
	3)	echo -e "Enter string: "
		read str1
		len=`echo -n $str1|wc -c`
		echo -e "String length: $len"
		;;
	4)	echo -e "Enter string: "
		read str1
		len=`echo -n $str1|wc -c`
		i=1
		while [ $i -le $len ]
		do
			a=`echo $str1|cut -c $i`
			echo $a
			i=`expr $i + 2`
		done
		;;
	5)	echo -e "Enter string: "
		read str1
		len=`echo -n $str1|wc -c`
		i=1
		j=`expr $len / 2`
		while [ $i -le $j ]
		do
			k=`echo $str1|cut -c $i`
			l=`echo $str1|cut -c $len`
			if [ $k != $l ]
			then
				echo -e "String not palindrome"
				exit
			fi
			i=`expr $i + 1`
			len=`expr $len - 1`
		done
		echo -e "String is a palindrome"
		;;
	6)	echo -e "Enter string: "
		read str1
		len=`echo -n $str1|wc -c`
		i=1
		str3=""
		while [ $len -ne 0 ]
		do
			rev=`echo $str1|cut -c $len`
			str3=$str3$rev
			len=`expr $len - 1`
		done
		echo -e "Reversed String: $str3"
		;;
	7)	echo -e "Enter string: "
		read str1
		echo -e "Enter substring to be replaced: "
		read substr1
		echo -e "Enter new substring: "
		read substr2
		echo ${str1[@]//$substr1/$substr2}
		;;
	8)	exit
		;;
	*)	echo -e "Invalid choice"
	esac
	echo -e "Want to continue?"
	read ans
	if [ $ans != "y" ]
	then
		exit
	fi
done
		
