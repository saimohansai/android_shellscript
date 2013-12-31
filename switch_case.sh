#!/bin/bash

echo hellow shell

fun_hellow() #sample hellow world
{
	echo hellow world
fun_update_upgrade	
}


fun_update_upgrade() #sample hellow world
{
	sudo apt-get update && sudo apt-get upgrade &
	
}

clear
		echo -e "\n\r 1-> Update and upgrade linux system only ubuntu 64 bit supports" 
		
		echo -e	"\n\r 2-> Install required packages to build Android source"
		
		echo -e	"\n\r 3-> Sync the Android source"
	
		echo -e	"\n\r 4-> Build Android source and generate .img files"
	
		echo -e	"\n\r 5-> Flash the .img files to device"
	
		echo -e	"\n\r 6->update linux system only ubuntu supports"
	
		echo -e	"\n\r 7-> Factory images to flase the Android device  Nexus 4 5 7 10"


echo "Enter a number betwen 1 to 7 numbers." 

read Num
case $Num in
	
	1)	fun_hellow ;;
			
		
		
	2)	echo	"2-> Install required packages to build Android source";;
		
	3)	echo	"3-> Sync the Android source";;
	
	4)	echo	"4-> Build Android source and generate .img files";;
	
	5)	echo	"5-> Flash the .img files to device";;
	
	6)	echo	"6->update linux system only ubuntu supports";;
	
	7)	echo	"7-> Factory images to flase the Android device  Nexus 4 5 7 10";; 

	*)	echo	"invalid number";;
esac		

