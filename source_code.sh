#!/bin/bash
#**************************************************************************************

#OS_NAME
echo -e "\e[1;33mOS Name\e[0m" : `uname -o`
echo ""

#**************************************************************************************

#Architecture
echo -e "\e[1;34mArchitecture\e[0m" : `uname -m`
echo ""

#**************************************************************************************

#Kernel_Version
echo -e "\e[1;35mKernel Version\e[0m" : `uname -r`
echo ""

#**************************************************************************************

#Internet_Status
ping -c 1 www.instagram.com > /dev/null 2> /dev/null
if [ $? -eq 0 ]
then
	echo -e "\e[1;36mInternet Status\e[0m" : "\e[32mInternet Is Connected.\e[0m"
echo ""
else
	echo -e "\e[1;36mInternet Status\e[0m" : "\e[31mNot Connected To Internet.\e[0m"
echo ""
fi

#**************************************************************************************

#Private_IP_Address
echo -e "\e[1;33mPrivate IP Address\e[0m" : $(hostname -I)
echo ""

#**************************************************************************************

#Public_IP_Address
echo -e "\e[1;34mPublic IP Address\e[0m" : $(hostname -i)
echo ""

#**************************************************************************************

#Memory_Usage
echo -e "\e[1;35mMemory Usage\e[0m" :-
free -h
echo ""

#**************************************************************************************

#DiskFile_System_Usage
echo -e "\e[1;36mDiskFile System Usage\e[0m" :-
df -h | head
echo ""

#**************************************************************************************

#System_UpTime
echo -e "\e[1;33mSystem UpTime\e[0m" : $(uptime -s)

#**************************************************************************************
