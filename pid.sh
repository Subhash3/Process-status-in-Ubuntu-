#!/bin/bash
#Syntax:./pid2.sh <pid>
#Usage: Says the excact info about a process
#By the co-ordination of Anurag

#if [ $# -ne 1 ]
#then 
#       echo "Syntax: pid1.sh <pid>"
#fi
var=$(ps aux | awk '$2=="'$1'"{print $8}')

case $var
in
        Ss)   echo "interruptible sleep-a session leader";;
        S+)   echo "interruptible sleep-in foreground process";;
        Sl)   echo "interruptible sleep-multi threaded";;
        Rl)   echo "running-multi threaded";;
        Ssl)  echo "interruptible sleep-a session leader-multi threaded";;
        Rsl)  echo "running-a session leader-multi threaded";;
        S)    echo "interruptible sleep";;
        S'<')   echo "interruptible sleep-high priority";;
        S'<'l)  echo "interruptible sleep-high priority-multi threaded";;
        SLsl) echo "interruptible sleep-locked pages in memory-a session leader-multi threaded";;
        SN)   echo "interruptible sleep-low_priority";;
        SNsl) echo "interruptible sleep-low_priority-session leader-multi threaded";;
        Ss+)  echo "interruptible sleep-a session leader-foreground process";;
        Ssl+) echo "interruptible sleep-a session leader-multi threaded-foreground";;
        R+)   echo "running-foreground process";;

esac

