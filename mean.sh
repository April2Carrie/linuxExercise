#!/bin/bash
# prints the usage statement to standard error
if [[($# -ne 1)&&($# -ne 2) ]]
then # Recall: "-ne" checks integer inequality.
    echo "usage: $0 <column> <file.csv>" 1>&2 # write error message to stderr (below)
    exit 0

elif [[($# -eq 1)]]
then
    column=$1
    file=/dev/stdin
else
    column=$1
    file=$2
fi

cat $file | cut -d ',' -f $column | tail -n 2 | { sum=0;i=0;step=1; while read n; do sum=$(($sum + $n));i=$(($i+$step)); done; f=$(echo "scale=4; $(($sum/$i))"|bc); echo $f;}
