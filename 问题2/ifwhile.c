#include<stdio.h>
int main() 
{ 
   int a,i,r;
   i=0;
   scanf("%d", &a);
   if(a%2==0)
   {
      printf("%s\n", "这是一个偶数");
   }
   else
   {
      printf("%s\n", "这是一个奇数");
   }
   while(i<a){
      r=2*r;
      i++;
   }
   return 0;
}
