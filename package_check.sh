#!/bin/bash

fn_hellow()
{
	#arg1=$1
	#echo "$arg1"
	echo "package installed in ubuntu system -->$1"
}


Fn_Package_Check()
{
	
	#echo "package is installed"
	
	var_path=$(which $1  >/dev/null && echo "program installed")
	
	if [ "$var_path" != "program installed" ]
	then
		echo "ACCESS DENIED! to install package----> $1"
		apt-get install $1	
	else
	
		echo "$var_path",
	fi
}


fn_package()
{
		
#	fn_hellow package_function
	
	
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
	
		Fn_Package_Check ${foo[$index]}
		#Fn_Package_Check()
	done	
#	echo -e "\n total number for packages to be installed  $index"
}	

#Fn_Package_Check
fn_package
