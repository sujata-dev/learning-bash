#Shell script to calculate no. of words, characters and spaces of a given
#string. And find out whether given character is vowel or consonant.
echo -e "\n1)Enter string"
echo -e "2)Enter character"
echo -e "Enter choice: "
read ch
case "$ch" in
1)	echo -e "\nEnter string: "
	read str
	words=`echo -n $str|wc -w`	# -n means no newline, w means 
	chars=`echo -n $str|wc -c`
	space=`expr $words - 1`
	#wc -l prints the line count
	#wc -m prints the character count
	#wc -w prints the word count
	echo "No. of words: $words"
	echo "No. of characters: $chars"
	echo "No. of spaces: $space"
	;;
2)	echo -e "\nEnter character: "
	read char
	if [ $char == "a" -o $char == "e" -o $char == "i" -o $char == "o" -o $char == "u" ]
	then
		echo -e "\nCharacter is a vowel"
	else
		echo -e "\nCharacter is a consonant"
	fi
	;;
*)	echo -e "\nInvalid Choice"
	;;
esac
