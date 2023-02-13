#include<stdio.h>
#include<math.h>
int main(int argc, char const *argv[])
{
    int i=1,sayac=-1;
    double x;
    do{
        sayac++;
        x+=1/pow(i,3);
        if(x<1.2)
        printf("%d terim : %lf\n",i,x);
        i++;
    }while (x<1.2);
    printf("cevap : %d",sayac);
    return 0;
}
