#include<stdio.h>
#include<stdlib.h>
int main(int argc, char const *argv[])
{
    etiket:
    if(argc>3||argc<2)
    goto etiket;
    atoi(argv[1])>atoi(argv[2])? printf("buyuk sayi %d",atoi(argv[1])):printf("buyuk sayi: %d",atoi(argv[2]));
    return 0;
}
