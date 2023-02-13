#include<stdio.h>
#include<math.h>
int main(int argc, char const *argv[])
{
    int a,b,c;
    float x,t;
    for(x;x<=1.2;x){
        a++;
        x+=1/pow(a,3);
    }
    printf("%d",a);
    return 0;
}
