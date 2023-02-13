#include<stdio.h>
#include<stdlib.h>
int main(int argc, char const *argv[])
{
    int toplam=0,a,b,gecici;
    printf("iki sayi giriniz");
    if(argc>3||argc<2)
    goto etiket;
    if(atoi(argv[2])>atoi(argv[1]))
    { 
        for (int i = atoi(argv[1]); i <= atoi(argv[2]); i++){
           toplam+=i;}
    }
    else if(atoi(argv[1])>atoi(argv[2]))
    { 
        for (int i = atoi(argv[2]); i <= atoi(argv[1]); i++){
           toplam+=i;}
    }
    else {
    printf("sayilar esittir");
    goto etiket; }
    printf("iki sayi dahil aralarindaki sayilarin toplamı: %d",toplam);
    break;
    etiket:
    printf("lutfen iki farkli sayi giriniz");
    
    
    return 0;
}
