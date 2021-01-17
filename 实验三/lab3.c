#include <stdio.h>
#include <string.h>
#define MAX 15

extern void strbubble(char*,char*,int);
extern void strsort(char*,int,int);

int main(void){
	int i,n;
	scanf("%d",&n);
	char a[n][MAX];
	int temp;
	for(i=0;i<n;i++)
	{
		scanf("%s",a[i]);
	}
	strsort(a[0],n-1,MAX);
	printf("\n");
	for(i=0;i<n;i++)
	{
		printf("%s\n",a[i]);
	}
	return 0;
}
