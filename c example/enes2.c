#include<stdio.h>
int main(int argc, char const *argv[])
{
    int list[2], sum=0 , difference=0;
    for (int i = 0; i < 2; i++)
    {
        printf(" enter the number:");
        scanf("%d",&list[i]);
        sum+=list[i];
    }
    difference=list[0]-list[1];
    if(difference<0)
       difference*=-1;
    printf("sum : %d, difference : %d",sum,difference);
    
    return -1;
}
