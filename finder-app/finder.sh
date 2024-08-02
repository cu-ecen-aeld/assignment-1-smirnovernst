#!/bin/sh

if [ $# -lt 2 ]; then
    echo "Usage finder.sh <directory> <search string>"
    exit 1
fi

FILESDIR=$1
SEARCHSTR=$2

if [ -z "FILESDIR" ]; then 
    echo "Directory not found"
    exit 1
fi

FILESNUM=$(grep -rl $SEARCHSTR $FILESDIR | wc -l)
LINESNUM=$(grep -ro $SEARCHSTR $FILESDIR | wc -l)

echo "The number of files are $FILESNUM and the number of matching lines are $LINESNUM"