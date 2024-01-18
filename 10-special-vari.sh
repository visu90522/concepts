#!/bin/bash

VAR1=$1
VAR2=$2

# it will display the script name 
echo "script name: $0"

# it will display the var1 ex- 20 30 ans-20
echo "variable 1: $VAR1"

## all variables will return
echo "all vars: $@" 

## it will dissplay the count of variables 
echo "number of vars: $#"