#!/bin/bash

USER=$(id -u)

if[ $USER -ne 0 ]
the
  echo "ERROR:: please run with root user"
  exit1
else
  echo "you are not the root user"
fi
  