#!/bin/bash

## For Loop
for i in {0..9}
do
    #let j=2*$i+1
    ((j=2*$i+1))
    echo $j
done

## Arithmetic
read x
read y

echo $((x + y))
echo $((x - y))
echo $((x * y))
echo $((x / y))

## Slice
echo "London" | head -c 4 | tail -c 2
cut -c 1-3 # first 3 char
cut -d ' ' -f 1-3 # -d for delimeter, -f for field
cut -f2-

head -n 22 | tail -n +12 # between 12~22 lines
tr '()' '[]'
tr -s ' ' # -s for squeeze

## Remove all lowercase letters
tr -d [:lower:]
tr -d a-z

sort -r # -r for reverse
sort -t $'\t' -k 2 -rn # -t for delimeter, -k for field, -r reverse, -n numerical
uniq -c | cut -f7-

## Print Average No
read n
x=0
for ((i=0;i<n;i++))
do
read y
let x+=y
done
echo "scale=3; $x/$n"|bc -l

: <<'END' ## Comment Block
read n
x=0
for ((i=0;i<n;i++))
do
read y
let x+=y
done
echo "scale=3; $x/$n"|bc -l
END

## printf "%.3f\n" "$(bc -l ...)"
## echo $((x/n))
## bc <<< "scale = 3; $((x/n))"
read n
arr=($(cat)) 
arr=${arr[*]}
printf "%.3f" $(echo $((${arr// /+}))/$n | bc -l)
##


## Conditions
read x
if [ $x == Y ] || [ $x == y ] ; then
    echo "YES"
elif [ $x == N ] || [ $x == n ] ; then
    echo "NO"
fi

## Calculation
read num
echo $num | bc -l | xargs printf "%.3f"

##
declare -A arr
arr2=(A B B C D A B)

for i in "${arr2[@]}"; do  #Run trough array

    if [[ -v arr[$i] ]];  #Check if key exists at associative array
    then
        arr[$i]=$((${arr[$i]}+1)) #Increment value
    else
        arr[$i]=1     #Create key/value pair
    fi
done

for i in ${!arr[@]} #Run trough associative array
do
  echo $i ${arr[$i]}
done

##
sort | uniq
tr -cd 'e' | wc -c
$NF == "SJC"
awk '/[^[:upper:] ]/'
$3 ~ /^[567]/
awk -F: '{

## Frequency of occurrence
sort | uniq -c | sort -nr
cat list-1 list-2 list-3 | sort | uniq > final.list
