#include<stdio.h>
#include<math.h>
#define delta b*b-(4*a*c)
#define kok1 (-b-sqrt(delta))/2*a
#define kok2 (-b+sqrt(delta))/2*a
int main(int argc, char const *argv[])
{
    int a,b,c;
    printf(" ax^2 +bx +c fonksiyonunun a,b ve c sini sirayla giriniz:");
    scanf("%d %d %d",&a,&b,&c);
    if(delta<0)
    printf("gercek kok yoktur");
    else if(delta==0)
    printf("kokler esittir : kok : %.2lf",kok1);
    else
    printf("iki farkli kok vardir: kok1: %.2lf : kok2 : %.2lf",kok1,kok2);
    return 0;
}
