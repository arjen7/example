#include<stdio.h>
int main(int argc, char const *argv[])
{
    char bolum;
    int satis, saat,hafta;
    double kazanc;
    etiket:
    printf("bolum giriniz:");
    scanf("%c",&bolum);
    switch (bolum)
    {
    case 'A':
        printf("satis miktarini giriniz:");
        scanf("%d",&satis);
        kazanc=(double)(satis)*13/100+500000000;
        break;
    case 'B':
        printf("satis miktarini giriniz:");
        scanf("%d",&satis);
        kazanc=(double)(satis)*22/100;
        break;
    case 'C':
        printf("saat miktarini giriniz:");
        scanf("%d",&saat);
        kazanc=saat*7;
        break;
    case 'D':
        for (int i = 1; i < 5 ; i++)
        {
            printf("haftalik calisma satlerini giriniz:\n hafta%d",i);
            scanf("%d",&hafta);
            kazanc+= hafta>40 ? (hafta-40)*10+40*7 : hafta*7;
        }break;
    default:
    printf("gecerli bolum giriniz:");
    goto etiket;
        break;
    }
    printf("kazanc = %.2lf",kazanc);
    return 0;
}
