#include<stdio.h>
#include<stdarg.h>
#include<math.h>
double arguman(double x, int n,...){
    double toplam=0.0;
    int a;
    va_list argn;
    va_start(argn,n);
    for (int i = 0; i < n; i++)
    {
        a=va_arg(argn,double);
        toplam+=a/pow(x,i);
    }return toplam;
    va_end(argn);
}
int main(int argc, char const *argv[])
{
    double a,b,c,toplam,x;
    printf("katsayi sayisini giriniz sonra x i ve katsayilari:");
    scanf("%lf %lf %lf %lf ",&x,&a,&b,&c);
    toplam=arguman(x,3,a,b,c);
    printf("%.2lf",toplam);

    return 0;
}
