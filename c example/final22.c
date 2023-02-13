#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#define delta b*b-(4*a*c)

int main(int argc, char const *argv[])
{
    int a,b,c;
    double kok1,kok2;
    if(argc==4)
    { 
       a=atoi(argv[1]);
       b=atoi(argv[2]);
       c=atoi(argv[3]);
       kok1=(-b-sqrt(delta))/2*a;
       kok2=(-b+sqrt(delta))/2*a;
       if(delta<0)
           printf("gercek kok yoktur");
       else if(delta==0)
           printf("kokler esittir : kok : %.2lf",kok1);
       else
           printf("iki farkli kok vardir: kok1: %.2lf : kok2 : %.2lf",kok1,kok2);
    }
    else
    printf("lutfen 3 sayi giriniz");
}
