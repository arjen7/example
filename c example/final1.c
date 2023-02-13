#include<stdio.h>
int main(int argc, char const *argv[])
{
    int sig;
    for(int i=0;i<1;i){
    scanf("%d",&sig);
    sig%5==0  ? i++ :printf("0 dan büyük ve 5 in katlarını giriniz");}
    if (sig==0)
    printf("olasi degildir");
    else if(sig>=5 && sig<=35)
    printf("kabul edilebilir");
    else if(sig==40)
    printf("sinir deger");
    else 
    printf("sinirin üstünde");
    
    return 0;}
