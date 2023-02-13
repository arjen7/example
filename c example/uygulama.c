#include<stdio.h>
int main(int argc, char const *argv[])
{
    int sig;
    for(int i=0;i<1;i){
        printf("5 in katı olan db giriniz:");
        scanf("%d",&sig);
        if(sig%5==0 || sig==0){
            i++;
        }else
        printf("yanlıs deger girdiniz\n");
    }
        if (sig==0)
        printf("olası degildir\n");
        else if(5<=sig && sig<=35)
        printf("kabul edilebilir\n");
        else if(sig==40)
        printf ("sinir deger\n");
        else
        printf ("kabul edilemez deger\n");
}
