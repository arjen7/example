#include<stdio.h>
#include<stdlib.h>
#include<stdarg.h>
double fonksiyon(int n,...){
    double sonuc=0;
    va_list arg;
    va_start(arg,n);
    for (int i = 1; i <= n; i++)
    {
       for (int j = va_arg(arg,int); j >0; j--)
       {
           sonuc+=1/(double)j;
       }
       
       printf("%d arguman icin sonuc: %.2lf\n",i,sonuc);
       sonuc=0;
    }
    va_end(arg);}
    int main(int argc, char const *argv[])
    {
        fonksiyon(4,2,3,6,7);
        return 0;
    }
    
