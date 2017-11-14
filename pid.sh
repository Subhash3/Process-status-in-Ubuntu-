bin/bash
#Based on ps
#Syntax: ./pid.sh <pid>
clear
if [ $# -ne 1 ]
then
        echo -e "\e[1;31m !!Ooppss!! \e[0m--\e[1;33m Bad Syntax\e[0m--"
        echo "Usage: ./pid.sh <pid>"
        echo ---------------------------
        exit 1
fi

if [ $(ps | awk '{print $1}' | grep -i $1$) ]
then
        echo -e "The process is \e[1;33m still running\e[0m"
else
        echo -e "The process is \e[1;33m not running\e[0m"
fi


"pid.sh" 20L, 400C
