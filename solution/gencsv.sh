#!./bin/bash
i=1
#cat /dev/null > inputdata
while [ $i -le 10 ]
do

    VAR=$(shuf -i 1-100 -n 1)
    echo "$i, $VAR" >> inputdata
    i=$(($i+1))
done
