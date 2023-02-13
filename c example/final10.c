#include<stdio.h>
#include<math.h>
int main(int argc, char const *argv[])
{
    int k, x;
    double toplam;
    printf("k ve x degerlerini giriniz:");
    scanf("%d %d",&k,&x);
    for(int i=1;i<=k;i++){
        toplam+=pow(-1,i)*(double)(x)/pow(i,0.5);
        printf("toplam : %.2lf\n",toplam);
    }
    return 0;
}
