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
    name=$(basename $j)
    name=${name%.*}   #Remove file extension
    out=".out"
    str=$(echo "$name$out") #str = name + extension

    outputDir="./outputFiles_$i" #create output directory if none exists
    mkdir -p $outputDir
    outputFile="$outputDir/$str"

    $1 <$j >$outputFile #run program
  done
done

