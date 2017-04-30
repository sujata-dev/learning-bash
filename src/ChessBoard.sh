#Shell script to display chessboard
for ((i=1;i<=8;i++))
do
	for ((j=1;j<=8;j++))
	do
		tot=`expr $i + $j`
		tmp=`expr $tot % 2`
		if [ $tmp -eq 0 ]
		then
			echo -e -n "\033[47m  "	#set background to white
		else
			echo -e -n "\033[40m  " #set background to black, 42 is green
		fi
	done
	echo -e -n "\033[0m"	#restoring original color settings
	echo -e ""
done
