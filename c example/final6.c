#include<stdio.h>
#include<math.h>
int main(int argc, char const *argv[])
{ int armstong,a,b,c;
    for(int i=100;i<1000;i++){
        a=i%10,b=(i/10)%10,c=(i/100)%10;
        armstong=pow(a,3)+pow(b,3)+pow(c,3);
        if(armstong==i)
        printf("armstong sayi : %d\n",armstong);
    }
    return 0;
}
