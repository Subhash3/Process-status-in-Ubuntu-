bin/bash
#Syntax : ./pid1.sh <pid>
clear
if [ $# -ne 1 ]
then
        echo -e "\e[1;31m !!Ooppss!! \e[0m--\e[1;33m Bad Syntax\e[0m--"                                       echo "Usage: ./.pid1.sh <pid>"
        echo ---------------------------
        exit 1
fi

if [ $(ps aux | awk '{if($5>0)print $0}' | awk '{if($6>0)print $2,$11}' | awk '{print $1}' | grep -i $1$) ]
then                                                       echo plz...wait for 5 seconds
        sleep 5;(clear)
        echo -e "The process  is \e[1;33m still running\e[0m"
else
        echo -e "The process is \e[1;33m not running\e[0m"
"pid1.sh" 20L, 500C              18,51-58
