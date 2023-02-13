#include<stdio.h>
int biggestnumber(int list[]){
    int biggestnum=list[0];
    for (int i = 0; i < 2; i++)
    {
        for (int j = i; i < 3; i++)
        {
            if(list[i]>list[j]){
               biggestnum=list[i];
            }
        }
}
    return biggestnum;
    
}
int main(int argc, char const *argv[])
{
    int list[3];
    printf("enter three number:");
    scanf("%d %d %d",&list[0],&list[1],&list[2]);
    printf("the biggest number is : %d",biggestnumber(list));
    
    return 0;
}
