#!/bin/bash

mkdir ./five
cd ./five

for i in 1 2 3 4 5
do
    dir="dir"$i
    mkdir ./$dir
    cd ./$dir
    
    for j in 1 2 3 4
    do
	file="file"$j
        echo  $j > $file.txt
    done

    cd ..
    
done

