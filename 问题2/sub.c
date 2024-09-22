#include<stdio.h>
int sub(int a, int b) 
{ 
    int c=a-b;
	return c;
}
int main()
{
    int d,e;
    scanf("%d", &d);
    scanf("%d", &e);
    int f=sub(d,e);
    printf("%d\n",f);
    return 0;
}