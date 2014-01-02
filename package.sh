#!/bin/bash

fn_hellow()
{
	#arg1=$1
	#echo "$arg1"
	echo "package installed in ubuntu system -->$1"
}

#===============================================================================


fn_install_package()
{

	
	sudo apt-get install "$1" -y
	fn_hellow $1
	#fn_hellow install_package

}


#================================================================================




fn_package()
{
		
	fn_hellow package_function
	
	
	foo=(	git
		gnupg 
		flex 
		bison 
		gperf 
		build-essential 
		zip 
		curl 
		libc6-dev 
		libncurses5-dev:i386 
		x11proto-core-dev 
		libx11-dev:i386 
		libreadline6-dev:i386 
		libgl1-mesa-dev 
		g++-multilib 
		mingw32 
		tofrodos 
		python-markdown 
		libxml2-utils 
		xsltproc 
		zlib1g-dev:i386
		tofrodos
		autoconf2.13 
		bison bzip2 
		 
		gcc 
		gcc-4.6 
		g++-4.6 
		g++-4.6-multilib 
		make)

	for index in ${!foo[*]}
	do
	#	printf "\n",${foo[$index]}
	
		fn_install_package ${foo[$index]}
	done	
	echo -e "\n total number for packages to be installed  $index"
}	

fn_packages () # package installer
{
	echo TO  create log file	
	var_path=$(pwd)
	
	echo $var_path
	
	mkdir -p Android_logs/sai/mohasnai
	#mkdir Labs/lab4a/{folder1,myfolder,foofolder}
	dpkg --l >log.txt 

	 dpkg -s apache-perl
}

clear
fn_package 
#fn_hellow main
