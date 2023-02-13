#include<stdio.h>
#include<math.h>
void ebob(int x,int sayi[])
{   int i,c,b=0, ebob,a;
    a=sayi[0];
    for(i=0;i<1;a--)
    {   for(c=0;c<x;c++)
        {  if(sayi[c]%a==0)
            { b++; }  }
        if(b==x)
        {  ebob=a; printf("ebob=%d\n",ebob); i++;  }
        b=0;  }  }
void ekok(int x,int sayi[])
{   int i, a=1, c=0, b=0;
    unsigned long long int ekok;
    for(i=0;i<1;a++)
    {   for(c=0;c<x;c++)
        {  if(a%sayi[c]==0)
              b=b+1;   }
        if(b==x)
        {  ekok=a; printf("ekok=%llu\n",ekok); i++;  }
        b=0;  }  }        
int main(int argc, char const *argv[])
{   int x, i=0, sayi[x];
    printf("isleme giren sayıların adet sayısı=");
    scanf("%d",&x);
     for(i;i<x;i++)
    {   printf("ekok ebob alinacak %d.sayi =",i+1);
        scanf("%d",&sayi[i]);  }
        ekok(x,sayi);
        ebob(x,sayi);
       
}








