#!/bin/bash
sum=0
for i in {1000..2000}
	 #2000
do
    first=$(($i/1000))
    second=$(($i%1000/100))
    third=$(($i%1000%100/10))
    fourth=$(($i%1000%100%10))
    if [[(($first -eq 1)||($first -eq 0))&&(($second -eq 1)||($second -eq 0))&&(($third -eq 1)||($third -eq 0))&&(($fourth -eq 1)||($fourth -eq 0))]]
    then
#	echo "$i"
	sum=$(($sum+i))
    fi
done
echo "$sum"
