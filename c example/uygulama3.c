#include<stdio.h>
int main(int argc, char const *argv[])
{   int satis;
    float maas;
    char x;
    printf(" lütfen bolum giriniz\n");
    scanf("%c",&x);
    switch (x)
    {
    case 'a':
        printf("satis miktarini giriniz:\n");
        scanf("%d",&satis);
        maas =(float)(satis)*13/100+500;
        printf("alacaginiz maas : %.2f",maas);break;
    case 'b':
     printf("satis miktarini giriniz:\n");
        scanf("%d",&satis);
        maas =(float)(satis)*22/100;
        printf("alacaginiz maas : %.2f",maas);break;
    case 'c':
     printf("calısma satini giriniz:\n");
        scanf("%d",&satis);
        maas= satis*7;
        printf("alacaginiz maas : %d",maas);
    break;
    case 'd':
     printf("calısma satini giriniz:\n");
        scanf("%d",&satis);
        maas= satis*7;
        if(satis>40){
            maas=(satis-40)*10+maas;
        }
        printf("alacaginiz maas : %d",maas);break;
    default:
    printf("yanlıs deger girdiniz");
        break;
    }
    return 0;
}
