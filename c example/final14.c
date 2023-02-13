#include<stdio.h>
#include<math.h>
int main(int argc, char const *argv[])
{
    int sayi,gecici,kalan;
    printf("1 leri  9 yapan program:\n lütfen bir sayi giriniz:");
    scanf("%d",&sayi);
    gecici=sayi;
    for (int i = 0; gecici!=0 ; i++)
    {
        kalan=gecici%10;
        if (kalan==1)
        {
            sayi+=(8*pow(10,i));
        }
        gecici/=10;
    }
    printf("yeni sayi : %d",sayi);
    
    return 0;
}
