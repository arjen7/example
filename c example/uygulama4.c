#include<stdio.h>
#include<math.h>
int main(int argc, char const *argv[])
{
    int dk,toplam=1;
    printf("dakika bilgisini giriniz:");
    scanf("%d",&dk);
    for (int i=1;i<=dk;i++)
    {   if(i%4==0)
    {toplam=toplam*2;}
    }
    printf("toplam : %d",toplam);
    return 0;
}
