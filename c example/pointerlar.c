#include<stdio.h>
#include<stdio.h>
void swap(int *a,int *b){
    int gecici;
    gecici=*a;
    *a=*b;
    *b=gecici;

}
int main(int argc, char const *argv[])
{
    int *a;
    int x=4,y=5;
    swap(&x,&y);
    return 0;
}
