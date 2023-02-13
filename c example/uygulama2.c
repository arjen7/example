#include<stdio.h>
#include<math.h>
int main(int argc, char const *argv[])
{
    int x,a,b,c,d,fonksiyon;
    printf("sirayla a b c d x degerlerini giriniz\n");
    scanf("%d %d %d %d %d",&a,&b,&c,&d,&x);
    if(x<0){
       fonksiyon=a*(pow(x,4))+b*(pow(x,2))+c*x+d;
       printf("sonuc : %d",fonksiyon);
    }else if(x>0){
        fonksiyon=a*(pow(x,3))+b*x-c;
        printf("sonuc : %d",fonksiyon);
    }else {
        fonksiyon=a*x+d;
        printf("sonuuc : %d",fonksiyon);
    }
    return 0;
}
