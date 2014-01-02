#!/bin/bash

echo hellow shell

Fun_Hellow() #sample hellow world
{
	echo hellow world
#fun_update_upgrade	
}

#==========================================================================================================================================
Fun_Update_Upgrade() 
{
# theis block of code is used to update and upgrade the system to latest version of ubuntu 

	sudo apt-get update 
	sudo do-release-upgrade -d
}
#===============================================================================================================================================

Fun_install_Package()
{
# theis block of code is used to check latest version of package and install  in system 
	
	sudo apt-get remove vlc -y
}	
#===============================================================================================================================================
Fun_Remove_Package()
{
	# theis block of code is used to Remove packages from system 
	
	sudo apt-get remove vlc -y

} 

#=================================================================================================================================================
Fun_Systen_Check()   
{
# theis block of code is used to check where the system is 64 bit and it has ubuntu operating system


	system=$(uname -m)

	echo $system

	if [ "$system" == "x86_64" ]; then
		echo "the system is 64 bit operating system and it has ubuntu"
	
	else
		echo "the system wont supports 32 bit os please install 64 bit operating system and it should be ubuntu"
		exit 1
	fi

}

#====================================================================================================================================================
fn_clear()
{

	clear
}



#====================================================================================================================================================================
clear

		echo -e "\n\r 1-> Check your system is 64 bit and ubuntu system" 
		
		echo -e "\n\r 2-> Update and upgrade linux system only ubuntu 64 bit supports" 
		
		echo -e	"\n\r 3-> Install required packages to build Android source"
		
		echo -e	"\n\r 4-> Sync the Android source"
	
		echo -e	"\n\r 5-> Build Android source and generate .img files"
	
		echo -e	"\n\r 6-> Flash the .img files to device"
	
		echo -e	"\n\r 7->update linux system only ubuntu supports"
	
		echo -e	"\n\r 8-> Factory images to flase the Android device  Nexus 4 5 7 10"

echo "Enter a number betwen 1 to 7 numbers." 

read Num
case $Num in
	
	1)	Fun_Systen_Check ;;   
	
	2)	Fun_Update_Upgrade ;;
			
	3)	Fun_install_Package ;;	
	
	4)	Fun_Remove_Package ;;
	
	5)	echo	"4-> Build Android source and generate .img files";;
	
	6)	echo	"5-> Flash the .img files to device";;
	
	7)	echo	"6->update linux system only ubuntu supports";;
	
	8)	echo	"7-> Factory images to flase the Android device  Nexus 4 5 7 10";; 

	*)	echo	"invalid number";;
esac		

