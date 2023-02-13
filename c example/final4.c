#include<stdio.h>
int main(int argc, char const *argv[])
{
    int cicek=1,dk;
    printf("dk sayisi giriniz:");
    scanf("%d",&dk);
    for(int i=1;i<=dk/4;i++){
        cicek=cicek*2;
    }
    printf("cicek sayisi= %d",cicek);
    return 0;
}