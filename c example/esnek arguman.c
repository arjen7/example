#include<stdarg.h>// esnek arguman için gerekli kütüphane
#include<stdio.h>
#include<math.h>
int fonk(int x,int n,...){
    // fonk(veri tipi parametre sayısı, ...)
    //  int n, ... şeklinde n tane veri gelecek demek
    int a, t=0.0;
    int i;
    va_list arjen;
    // va_list tipinde olan arjeni oluşturduk
    va_start(arjen,n);
    // va_list tipinde ki arjen için n adet yer ayırdık
    for (int i = 1; i <= n; i++)
    {
        a= va_arg(arjen,int);
        // arjenin çinde ki argumanları veri tipine göre sırayla aldık
        t+= a*pow(x,i);
    }

    va_end(arjen);
    // arjen için ayrılan beleği boşalttık
    return t;
    

}
int main(int argc, char const *argv[])
{
    int x=2;
    printf("%d",fonk(x,2,3,4));
    return 0;
}
