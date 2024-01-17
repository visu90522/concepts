#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then
  echo "ERROR:: please run with root user"
  exit1
# else
#   echo "you are not the root user"
fi
