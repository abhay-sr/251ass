#!/bin/bash

end_of_file=0
> app.out
>runtest
while read num; do
	#echo $num
	while read n2; do
		#echo $n2
		for (( i=1; i<=100; i++))
		do
			
			echo -n $num" "$n2" " >> app.out
			./app $num $n2 >> app.out
		done
	done < <( cat "$2" | tr ' ' '\n' )
done < <( cat "$1" | tr ' ' '\n' )
echo "control" >> runtest
