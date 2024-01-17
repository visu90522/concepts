#!/bin/bash

USERID=$(id -u)

# this function should validate the previous command and inform user it is success or failure
VALIDATE() {

    if [ $1 -ne 0 ]
then
    echo "Installation...FAILURE"
    exit1
else
    echo "Installation...SUCCESS"
fi
}

if [ $USERID -ne 0 ]
then
  echo "ERROR:: please run with root user"
  exit1
# else
#   echo "you are the root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y

VALIDATE $?

yum install postfix -y

VALIDATE $?
