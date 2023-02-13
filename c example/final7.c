#include<stdio.h>
int main(int argc, char const *argv[])
{
    int dizi[100],kucuk,buyuk,i=-1;
    printf("-1 girilen ekadar ki sayilarin en büyük ve kücügünü bulan program\n");
    do
    {
        i++;
        printf("sayi giriniz:");
        scanf("%d",&dizi[i]);
    } while (dizi[i]!=-1);
    
    kucuk=buyuk=dizi[0];
    for (int j = 0; j <=i-1 ; j++)
    {
        if(dizi[j]<kucuk)
        kucuk=dizi[j];
        if(dizi[j]>buyuk)
        buyuk=dizi[j];
    }
    printf(" buyuk sayi : %d\n kucuk sayi : %d",buyuk,kucuk);
    

    return 0;
}
