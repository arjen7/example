#include<stdio.h>
#include<stdlib.h>
double fonksiyon(int k){
    double sonuc;
    if (k!=0)
    {
        sonuc=1/(double)k+fonksiyon(k-1);
    }return sonuc;
    
}
    int main(int argc, char const *argv[])
    {
        int k;
        printf("bir k sayisi giriniz:");
        scanf("%d",&k);
        printf("%.2lf",fonksiyon(k));
        return 0;
    }