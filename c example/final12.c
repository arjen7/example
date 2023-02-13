#include<stdio.h>
#include<math.h>
#define pi 3.14
#define alan(r,h)   pi*r*r*h
#define hacim(r,h)  2*pi*r*h
double silindiralan(int r,int h){
    return pi*r*r*h;
}
double silindirhacim(int r,int h){
    return 2*pi*r*h;
}
int main(int argc, char const *argv[])
{
    int r,h;
    printf("yaricap ve yukseklik giriniz:");
    scanf("%d %d",&r,&h);
    printf("alan:%.2lf\n",silindiralan(r,h));
    printf("hacim:%.2lf\n",silindirhacim(r,h));
    printf("alan makro fonksiyon:%.2lf\n",alan(r,h));
    printf("hacim makro fonksiyon:%.2lf\n",hacim(r,h));
    return 0;
}
