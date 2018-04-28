#!bin/bash
read n
IFS=$'\n'
c1=0
s1=0
c2=0
s2=0

function traverse() {   

for file in "$1"/*;
do

    #current=${1}{$file}
    if [ ! -d "${file}" ]; then
    	#echo "${file##*.}"
		if [ "${file##*.}" = "c" ]; then
        	#echo "${file} is a file"
        	st=$(awk -f "q1.awk" $file)
        	s1=$(cut -d '|' -f1 <<< $st)
        	c1=$(cut -d '|' -f2 <<< $st)
        	s2=$[$s1+$s2]
        	c2=$[$c1+$c2]
        	#echo "-"$s1
        	#echo $c1
        fi
	#awk -f ${file}
    else
        #echo "${file} is a directory"
        traverse "${file}"
    fi
done
}

function main() {
    traverse $n
}

main $n
echo "$[$c2+2]"
echo "$[$s2/2]"
