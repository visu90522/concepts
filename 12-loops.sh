#!/bin/bash

USERID=$(id -u)
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGSDIR=/home/centos/shellscript-logs
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"                                            
N="\e[0m"
Y="\e[33m"

VALIDATE() {

    if [ $1 -ne 0 ]
    then
        echo -e "INSTALLING $2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "INSTALLING $2 ... $G SUCCESS $N"
    fi
}

if [ $USERID -ne 0 ]
then    
    echo -e "$R ERROR:: run with the root user $N"
    exit1
fi


#all arguments
for i in $@
do
    yum list installed $i -y &>>$LOGFILE

    if [ $? -ne 0 ]
    then    
        echo "$i is not installed, lets install it"
        yum install $i -y &>>$LOGFILE
        VALIDATE $? "$i"
    else
        echo -e "$Y already installed $N"
    fi
done

# improvements
# implement log files
# implement colors
# implement validations
# implement validations through functions
# your script should check package is already installed or not, if already installed print yellow color
# if installed just print package is alredy installed, it should not run install command