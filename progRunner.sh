#!/usr/bin/env bash

if [ "$#" -ne 2 ]; then
  echo "Invalid commandline arguments please enter executable name and number of runs"
else
  echo "$1 and $2"
fi

for (( i=1; i<=$2; i++ ))
do
  echo "Run num: $i"
  for j in ./inputFiles/*
  do
    echo "run program with $j as input"
    #name=${j##*/}   #Remove file extension
    name=$(basename $j)
    name=${name%.*}   #Remove file extension
    #name="${name}.out"#Append new file extension
    name=$name"out"#Append new file extension
    echo " and output it to file named $name"
  done
done

