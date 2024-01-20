#!/bin/bash

#all arguments
for i in $@
do
    yum install $i -y
done