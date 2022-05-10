//AAAAA
//BBBB
//CCC
//DD
//E
#include<stdio.h>
#include<conio.h>
int main()
{
	int r,c,add=0;
	for(r=5;r>=1;r--)
	{
		add=add+1;
		for(c=1;c<=r;c++)
		{	
			printf("%c",(add+64));
		}
		printf("\n");
	}
	
}

