#!/bin/bash


fn_process () # this function displays only one process information 
{
	while true
	do	
		ps -p 9478  -o pid,ppid,tid,psr,pcpu
	sleep 1
	
	done
}




fn_helloworld () # this function displays only hellow world  
{
	echo hellow world
}	

fn_package_install ()
{
	#dpkg --get-select
	fn_helloworld
}



fn_helloworld 

fn_package_install

fn_process
