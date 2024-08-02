#!/bin/sh

if [ $# -lt 2 ]
then 
    echo "Usage: writer.sh <filename> <string>"
    exit 1
fi

WRITEFILE=$1
WRITESTR=$2

DIRNAME=$(dirname $WRITEFILE)
if [ ! -d $DIRNAME ]
then
    mkdir -p $DIRNAME
fi

echo $WRITESTR > $WRITEFILE
if [ $? -ne 0 ]
then
    echo "Error: Unable to create file $WRITEFILE"
    exit 1
fi
