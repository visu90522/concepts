#!/bin/bash

# this is call as array
PERSONS=("vishu" "abc" "efg")

echo "First Person: ${PERSONS[0]}"

echo "All Persons: ${PERSONS[@]}"