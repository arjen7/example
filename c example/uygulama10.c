#include<stdio.h>
#include<math.h>
int main(int argc, char const *argv[])
{
    int a,c;
    float x, b;
    for(a=1;a<11;a++){
        b=3.14*(float)(a)/5;
        x=(float)(a)*sin(b);
        printf("\3%f\n",x);
    }
    return 0;
}
