cat number.txt | while read num
do

        if [ `echo "${num} % 2" | bc` -eq 0 ] 
        then  
                echo ${num} >> even.txt
        else
                echo ${num} >> odd.txt
        fi
done
