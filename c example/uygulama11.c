#include<stdio.h>
#include<math.h>
int main(int argc, char const *argv[])
{
    int a,b,c,y;
    float x=0;
    scanf("%d",&b);scanf("%d",&y);
    for(b=1;b>0;b--){
        x+=pow(-1,b)*y/sqrt(b);
    }
    printf("%f",x);
    return 0;
}
