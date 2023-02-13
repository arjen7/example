#include<stdio.h>
#include<math.h>
double fonksiyon(double x,int y){
    return pow(x,y);
}
int main(int argc, char const *argv[])
{
    double x; int y;
    printf("gercel sayi ve kuvvetini sirayla giriniz:");
    scanf("%lf %d",&x,&y);
    printf("sonuc : %.2lf",fonksiyon(x,y));
    return 0;
}
