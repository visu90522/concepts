#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then
  echo "ERROR:: please run with root user"
  exit1
else
  echo "you are not the root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql is error"
    exit 1
else
    echo "Installation of mysql is success"
fi

yum install postfix -y

if [ $? -ne 0 ]
then
    echo "Installation of postfix is error"
    exit 1
else
    echo "Installation of postfix is success"
fi