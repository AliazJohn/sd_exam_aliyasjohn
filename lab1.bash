
read -p "enter limit of first array:" n1

echo "Enter numbers :"
i=0
  
while [ $i -lt $n1 ]
do
    read a[$i]
    i=`expr $i + 1`
done
    
read -p "enter limit of first array:" n2
echo "Enter numbers :"
i=0
  
while [ $i -lt $n2 ]
do
    read b[$i]
    i=`expr $i + 1`
done


c=( "${a[@]}" "${b[@]}" )
echo "Merged array is:"
echo ${c[@]}


IFS=$'\n' s=($(sort <<<"${c[*]}"));
unset IFS
echo "Sorted array is:"
echo "${s[*]}"

l=${#s[@]}
  if (( $l % 2 == 1 )); then 
    val="${s[ $(($s/2)) ]}"
  else 
    (( j=l/2 ))
    (( k=j-1 ))
    (( val=(${s[j]} + ${s[k]})/2 ))
  fi
  echo "Median is:"
  echo $val

