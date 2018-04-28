#!/bin/bash
read n
le=${#n}
i=0
a=${n:$i:1}
if [ "$n" -eq "$n" ] 2> /dev/null
then
   if [ $n -ge 0 ]; then 

	while [ $a -eq 0 ]; do
		i=$[$i+1]
		a=${n:$i:1}
		#echo ${n:$i:1}
		if [ $i = $le ]; then
			echo "zero "
			break
		fi
	done
		temp=$[$le-$i]
		if [ $temp -gt 11 ]; then
			echo "invalid input"
		fi
		if [ $temp -eq 11 ]; then

			if [ ${n:$i:1} = 1 ]; then
				echo -n "one thousand "
			elif [ ${n:$i:1} = 2 ]; then
				echo -n "two thousand "
			elif [ ${n:$i:1} = 3 ]; then
				echo -n "three thousand "
			elif [ ${n:$i:1} = 4 ]; then
				echo -n "four thousand "
			elif [ ${n:$i:1} = 5 ]; then
				echo -n  "five thousand "
			elif [ ${n:$i:1} = 6 ]; then
				echo -n  "six thousand "
			elif [ ${n:$i:1} = 7 ]; then
				echo -n "seven thousand  "
			elif [ ${n:$i:1} = 8 ]; then
				echo -n "eight thousand "
			elif [ ${n:$i:1} = 9 ]; then
				echo -n "nine thousand "
			fi
			i=$[$i+1]
			temp=$[$temp-1]
		fi

		if [ $temp -eq 10 ]; then
			if [ ${n:$i:1} = 1 ]; then
				echo -n "one hundred "
			elif [ ${n:$i:1} = 2 ]; then
				echo -n "two hundred "
			elif [ ${n:$i:1} = 3 ]; then
				echo -n "three hundred "
			elif [ ${n:$i:1} = 4 ]; then
				echo -n "four hundred "
			elif [ ${n:$i:1} = 5 ]; then
				echo -n "five hundred "
			elif [ ${n:$i:1} = 6 ]; then
				echo -n "six hundred "
			elif [ ${n:$i:1} = 7 ]; then
				echo -n "seven hundred  "
			elif [ ${n:$i:1} = 8 ]; then
				echo -n "eight hundred "
			elif [ ${n:$i:1} = 9 ]; then
				echo -n "nine hundred "
			fi
			i=$[$i+1]
			temp=$[$temp-1]
		fi

		if [ $temp -eq 9 ]; then
			if [ ${n:$i:1} = 1 ]; then
				i=$[$i+1]
				temp=$[$temp-1]
				if [ ${n:$i:1} = 0 ]; then
					echo -n "ten crore "
				elif [ ${n:$i:1} = 1 ]; then
					echo -n "eleven crore "
				elif [ ${n:$i:1} = 2 ]; then
					echo -n "twelve crore "
				elif [ ${n:$i:1} = 3 ]; then
					echo -n "thirteen crore "
				elif [ ${n:$i:1} = 4 ]; then
					echo -n "fourteen crore "
				elif [ ${n:$i:1} = 5 ]; then
					echo -n "fifteen crore "
				elif [ ${n:$i:1} = 6 ]; then
					echo -n "sixteen crore "
				elif [ ${n:$i:1} = 7 ]; then
					echo -n "seventeen crore "
				elif [ ${n:$i:1} = 8 ]; then
					echo -n "eighteen crore " 
				elif [ ${n:$i:1} = 9 ]; then
					echo -n "nineteen crore "
				fi

			elif [ ${n:$i:1} = 2 ]; then
				echo -n "twenty "
			elif [ ${n:$i:1} = 3 ]; then
				echo -n "thirty "
			elif [ ${n:$i:1} = 4 ]; then
				echo -n "fourty "
			elif [ ${n:$i:1} = 5 ]; then
				echo -n "fifty "
			elif [ ${n:$i:1} = 6 ]; then
				echo -n "sixty "
			elif [ ${n:$i:1} = 7 ]; then
				echo -n "seventy  "
			elif [ ${n:$i:1} = 8 ]; then
				echo -n "eighty "
			elif [ ${n:$i:1} = 9 ]; then
				echo -n "ninety "
			fi
			i=$[$i+1]
			temp=$[$temp-1]
		fi

		if [ $temp -eq 8 ]; then
	
			if [ ${n:$i:1} = 1 ]; then
				echo -n "one crore "
			elif [ ${n:$i:1} = 2 ]; then
				echo -n "two crore "
			elif [ ${n:$i:1} = 3 ]; then
				echo -n "three crore "
			elif [ ${n:$i:1} = 4 ]; then
				echo -n "four crore "
			elif [ ${n:$i:1} = 5 ]; then
				echo -n "five crore "
			elif [ ${n:$i:1} = 6 ]; then
				echo -n "six crore "
			elif [ ${n:$i:1} = 7 ]; then
				echo -n "seven crore  "
			elif [ ${n:$i:1} = 8 ]; then
				echo -n "eight crore "
			elif [ ${n:$i:1} = 9 ]; then
				echo -n "nine crore "
			fi
			i=$[$i+1]
			temp=$[$temp-1]
		fi

		if [ $temp -eq 7 ]; then

			if [ ${n:$i:1} = 1 ]; then
				i=$[$i+1]
				temp=$[$temp-1]
				if [ ${n:$i:1} = 0 ]; then
					echo -n "ten lakh "
				elif [ ${n:$i:1} = 1 ]; then
					echo -n "eleven lakh "
				elif [ ${n:$i:1} = 2 ]; then
					echo -n "twelve lakh "
				elif [ ${n:$i:1} = 3 ]; then
					echo -n "thirteen lakh "
				elif [ ${n:$i:1} = 4 ]; then
					echo -n "fourteen lakh "
				elif [ ${n:$i:1} = 5 ]; then
					echo -n "fifteen lakh "
				elif [ ${n:$i:1} = 6 ]; then
					echo -n "sixteen lakh "
				elif [ ${n:$i:1} = 7 ]; then
					echo -n "seventeen lakh "
				elif [ ${n:$i:1} = 8 ]; then
					echo -n "eighteen lakh " 
				elif [ ${n:$i:1} = 9 ]; then
					echo -n "nineteen lakh "
				fi

			elif [ ${n:$i:1} = 2 ]; then
				echo -n "twenty "
			elif [ ${n:$i:1} = 3 ]; then
				echo -n "thirty "
			elif [ ${n:$i:1} = 4 ]; then
				echo -n "fourty "
			elif [ ${n:$i:1} = 5 ]; then
				echo -n "fifty "
			elif [ ${n:$i:1} = 6 ]; then
				echo -n "sixty "
			elif [ ${n:$i:1} = 7 ]; then
				echo -n "seventy  "
			elif [ ${n:$i:1} = 8 ]; then
				echo -n "eighty "
			elif [ ${n:$i:1} = 9 ]; then
				echo -n "ninety "
			fi
			i=$[$i+1]
			temp=$[$temp-1]
		fi

		if [ $temp -eq 6 ]; then

			#if [ ${n:$i:1} = 0 ]; then
				#echo -n "lakh "
			if [ ${n:$i:1} = 1 ]; then
				echo -n "one lakh "
			elif [ ${n:$i:1} = 2 ]; then
				echo -n "two lakh "
			elif [ ${n:$i:1} = 3 ]; then
				echo -n "three lakh "
			elif [ ${n:$i:1} = 4 ]; then
				echo -n "four lakh "
			elif [ ${n:$i:1} = 5 ]; then
				echo -n "five lakh "
			elif [ ${n:$i:1} = 6 ]; then
				echo -n "six lakh "
			elif [ ${n:$i:1} = 7 ]; then
				echo -n "seven lakh  "
			elif [ ${n:$i:1} = 8 ]; then
				echo -n "eight lakh "
			elif [ ${n:$i:1} = 9 ]; then
				echo -n "nine lakh "
			fi
			i=$[$i+1]
			temp=$[$temp-1]
		fi

		if [ $temp -eq 5 ]; then

			if [ ${n:$i:1} = 1 ]; then
				i=$[$i+1]
				temp=$[$temp-1]
				if [ ${n:$i:1} = 0 ]; then
					echo -n "ten thousand "
				elif [ ${n:$i:1} = 1 ]; then
					echo -n "eleven thousand "
				elif [ ${n:$i:1} = 2 ]; then
					echo -n "twelve thousand "
				elif [ ${n:$i:1} = 3 ]; then
					echo -n "thirteen thousand "
				elif [ ${n:$i:1} = 4 ]; then
					echo -n "fourteen thousand "
				elif [ ${n:$i:1} = 5 ]; then
					echo -n "fifteen thousand "
				elif [ ${n:$i:1} = 6 ]; then
					echo -n "sixteen thousand "
				elif [ ${n:$i:1} = 7 ]; then
					echo -n "seventeen thousand "
				elif [ ${n:$i:1} = 8 ]; then
					echo -n "eighteen thousand " 
				elif [ ${n:$i:1} = 9 ]; then
					echo -n "nineteen thousand "
		
				fi
		
			elif [ ${n:$i:1} = 2 ]; then
				echo -n "twenty "
			elif [ ${n:$i:1} = 3 ]; then
				echo -n "thirty "
			elif [ ${n:$i:1} = 4 ]; then
				echo -n "fourty "
			elif [ ${n:$i:1} = 5 ]; then
				echo -n "fifty "
			elif [ ${n:$i:1} = 6 ]; then
				echo -n "sixty "
			elif [ ${n:$i:1} = 7 ]; then
				echo -n "seventy  "
			elif [ ${n:$i:1} = 8 ]; then
				echo -n "eighty "
			elif [ ${n:$i:1} = 9 ]; then
				echo -n "ninety "
			fi
			i=$[$i+1]
			temp=$[$temp-1]
		fi

		if [ $temp -eq 4 ]; then

			if [ ${n:$i:1} = 1 ]; then
				echo -n "one thousand "
			elif [ ${n:$i:1} = 2 ]; then
				echo -n "two thousand "
			elif [ ${n:$i:1} = 3 ]; then
				echo -n "three thousand "
			elif [ ${n:$i:1} = 4 ]; then
				echo -n  "four thousand "
			elif [ ${n:$i:1} = 5 ]; then
				echo -n "five thousand "
			elif [ ${n:$i:1} = 6 ]; then
				echo -n "six thousand "
			elif [ ${n:$i:1} = 7 ]; then
				echo -n "seven thousand "
			elif [ ${n:$i:1} = 8 ]; then
				echo -n "eight thousand "
			elif [ ${n:$i:1} = 9 ]; then
				echo -n "nine thousand "
			fi
			i=$[$i+1]
			temp=$[$temp-1]
		fi

		if [ $temp -eq 3 ]; then
			if [ ${n:$i:1} = 1 ]; then
				echo -n "one hundred "
			elif [ ${n:$i:1} = 2 ]; then
				echo -n "two hundred "
			elif [ ${n:$i:1} = 3 ]; then
				echo -n "three hundred "
			elif [ ${n:$i:1} = 4 ]; then
				echo -n "four hundred "
			elif [ ${n:$i:1} = 5 ]; then
				echo -n "five hundred "
			elif [ ${n:$i:1} = 6 ]; then
				echo -n "six hundred "
			elif [ ${n:$i:1} = 7 ]; then
				echo -n "seven hundred  "
			elif [ ${n:$i:1} = 8 ]; then
				echo -n "eight hundred "
			elif [ ${n:$i:1} = 9 ]; then
				echo -n "nine hundred "
			fi
			i=$[$i+1]
			temp=$[$temp-1]
		fi

		if [ $temp -eq 2 ]; then
			if [ ${n:$i:1} = 1 ]; then
				i=$[$i+1]
				temp=$[$temp-1]
				if [ ${n:$i:1} = 0 ]; then
					echo -n "ten "
				elif [ ${n:$i:1} = 1 ]; then
					echo -n "eleven "
				elif [ ${n:$i:1} = 2 ]; then
					echo -n "twelve "
				elif [ ${n:$i:1} = 3 ]; then
					echo -n "thirteen "
				elif [ ${n:$i:1} = 4 ]; then
					echo -n "fourteen "
				elif [ ${n:$i:1} = 5 ]; then
					echo -n "fifteen "
				elif [ ${n:$i:1} = 6 ]; then
					echo -n "sixteen "
				elif [ ${n:$i:1} = 7 ]; then
					echo -n "seventeen "
				elif [ ${n:$i:1} = 8 ]; then
					echo -n "eighteen " 
				elif [ ${n:$i:1} = 9 ]; then
					echo -n "nineteen "
		
				fi
	
			elif [ ${n:$i:1} = 2 ]; then
				echo -n "twenty "
			elif [ ${n:$i:1} = 3 ]; then
				echo -n "thirty "
			elif [ ${n:$i:1} = 4 ]; then
				echo -n "fourty "
			elif [ ${n:$i:1} = 5 ]; then
				echo -n "fifty "
			elif [ ${n:$i:1} = 6 ]; then
				echo -n "sixty "
			elif [ ${n:$i:1} = 7 ]; then
				echo -n "seventy  "
			elif [ ${n:$i:1} = 8 ]; then
				echo -n "eighty "
			elif [ ${n:$i:1} = 9 ]; then
				echo -n "ninety "
			fi
			i=$[$i+1]
			temp=$[$temp-1]
		fi

		if [ $temp -eq 1 ]; then
			if [ ${n:$i:1} = 1 ]; then
				echo -n "one "
			elif [ ${n:$i:1} = 2 ]; then
				echo -n "two "
			elif [ ${n:$i:1} = 3 ]; then
				echo -n "three "
			elif [ ${n:$i:1} = 4 ]; then
				echo -n "four "
			elif [ ${n:$i:1} = 5 ]; then
				echo -n "five "
			elif [ ${n:$i:1} = 6 ]; then
				echo -n "six "
			elif [ ${n:$i:1} = 7 ]; then
				echo -n "seven  "
			elif [ ${n:$i:1} = 8 ]; then
				echo -n "eight "
			elif [ ${n:$i:1} = 9 ]; then
				echo -n "nine "
			fi
		fi
   else
   	   echo "invalid input"
   fi 
else 
	echo "invalid input"
fi

