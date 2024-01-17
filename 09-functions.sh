#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

# this function should validate the previous command and inform user it is success or failure
VALIDATE() {

    if [ $1 -ne 0 ]
then
    echo "$2... $R FAILURE $N"
    exit1
else
    echo "$2... $G SUCCESS $N"
fi
}

R="\e[31m"
G="\e[32m"
N="\e[0m"

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "ERROR:: please run with root user"
  exit1
# else
#   echo "you are the root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MySQL"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installing Postfix"
