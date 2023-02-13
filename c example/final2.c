#include<stdio.h>
#include<math.h>
int main(int argc, char const *argv[])
{
    int a,b,c,d,x, fx;
    printf("a b c d x degerlerini sirayla giriniz:");
    scanf("%d %d %d %d %d",&a,&b,&c,&d,&x);
    if(x<0)
    fx=a*pow(x,4)+b*pow(x,2)+c*x+d;
    else if(x>0)
    fx=a*pow(x,3)+b*x-c;
    else
    fx=a*x+d;
    printf("%d\n",fx);
    printf("a=%d,b=%d,c=%d,d=%d,x=%d",a,b,c,d,x);

    return 0;
}
