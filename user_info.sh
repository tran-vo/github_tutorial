#!bin/bash
echo User info:
echo Home directory : $(cat /etc/passwd | grep $1 | cut -d ":" -f 6)
echo Shell : $(cat /etc/passwd | grep $1 | cut -d ":" -f 7)
echo User group : $(id $1 | cut -d " " -f 2 | cut -d "=" -f 2)
echo Other group user belong to : $(id $1 | cut -d "=" -f 4)
