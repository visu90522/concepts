#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then
  echo "ERROR:: please run with root user"
  exit1
# else
#   echo "you are the root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Mysql is error"
    exit1
else
    echo "Installlation is success"
fi

yum instak postfix -y

if [ $? -ne 0 ]
then
    echo "installation postfix is error"
    exit1
else
    echo "Installlation postfix is success"
fi
