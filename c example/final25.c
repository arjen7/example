#include<stdio.h>
int fibonacci(int n){
    int static fib=0;
    if(n<=2)
    return (1);
    else
    return fibonacci(n-1)+fibonacci(n-2);
}
int main(int argc, char const *argv[])
{
    int n;
    printf("kaca kadar fibonnaci:");
    scanf("%d",&n);
    printf("fibonnaci dizisi:");
       for (int i = 1; i <= n; i++)
    {
        printf("%d  ",fibonacci(i));
    }
    return 0;
}
