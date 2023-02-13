#include<stdio.h>
int main(int argc, char const *argv[])
{
    int x=-81,dizi[100],i;
     x<0 ? x*=-1:x;
    for(i=0;i<sizeof(x)*8;i++)
    {
        dizi[i]=x%2;
        x=x/2;
    }
    for(i=i;i>=0;i--)
    {
        printf("%d",dizi[i]);
    }
}
