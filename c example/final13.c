#include<stdio.h>
#include<math.h>
#define pi 3.14
#define alan(a,b,l) pi*(a+b)*l
#define hacim(a,b,h) pi*h*(pow(a,2)+a*b+pow(b,2))/3
double konialan(int a, int b, int l){
    return pi*(a+b)*l;
}
double konihacim(int a,int b,int h){
    return pi*h*(pow(a,2)+a*b+pow(b,2))/3;
}
int main(int argc, char const *argv[])
{
    int a,b,l,h;
    printf(" taban tavan yükseklik ve yanal uzunluklari sirayla giriniz:");
    scanf("%d %d %d %d",&a,&b,&h,&l);
    printf("alan: %.2lf\n",konialan(a,b,l));
    printf("hacim: %.2lf\n",konihacim(a,b,h));
    printf("makro fonksiyon ile alan: %.2lf\n",alan(a,b,l));
    printf("makro fonksiyon ile hacim: %.2lf\n",hacim(a,b,h));
    return 0;
}
