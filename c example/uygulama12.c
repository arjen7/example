#include<stdio.h>
#include<stdlib.h>
#include<time.h>
int main(int argc, char const *argv[])
{
    int tahmin,sayi,sayac=1;
    srand(time(NULL));
    tahmin=rand()%50 + 1 ;
    puts("1 ile 50 aralıgında sayı giriniz:");
    while (1)
    { 
        
        scanf("%d",&sayi);
        if (sayi<1||sayi>50)
        {
            puts(" lütfen bir 1 ile 50 arasında deger giriniz:");
            sayac++;
        }
        
        else if (sayi==tahmin)
        {
            printf("%d denemede buldunuz tebrikler:\n",sayac);
            break;
        }
        else if (sayi<tahmin)
        {
            puts("tahminizi artirin:");
            sayac++;
        }
        else
        {
            puts("tahminizi azaltin:");
            sayac++;
        }
    } return 0;
}
