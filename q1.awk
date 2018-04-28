#!/usr/bin/gawk

a1=0
d1=0
d2=0

BEGIN {
	
}

{
	d1++;
	for(i=0; i<=NF; i++)
	{
		
		#printf("%s ",$i)
		if(index($i, "/*") != 0)
		{
			if((a1%2)==0)
			{
				a1++;
				d2=d1;
			}
		}
		if(index($i, "*/") != 0)
		{
			a1++;
			if((a1%2)==0)
				c=c+d1-d2+1;
		}
		if((index($i, "//") != 0) && (index($i, "\"") != 0) )
		{
			if((a1%2)==0)
			{
				if (index($i, "//") < index($i, "\""))
					c++;
				else 
					s++;
				break
			}
		}
		if(index($i, "\"") != 0)
		{
			if ((a1%2)==0)
			{
				j=substr($i,index($i, "\"")+1)
				#printf("%s",j);
			
				if(index($j, "\"") != 0)
				{
					s++;
				}
				else
				{
					for(i=i+1; i<=NF; i++)
					{
						if(index($i, "\"") != 0)
						{
							s++;
							break;
						}
					}
					continue;
				}
			}

		}
		if(index($i, "//") != 0)
		{
			if((a1%2)==0)
			{
				c++;
				break;
			}
		}
			
	}
}	
END {
	#printf("%d %d\n", s,c);
	print s"|"c"|"
	
}




