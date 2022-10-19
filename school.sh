cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d ',' -f 7 | sed 's/\n/\n/g'| { sum=0;i=0;step=1; while read n; do sum=$(($sum + $n));i=$(($i+$step)); done; echo $sum,$(($sum/$i)); }
