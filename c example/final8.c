#include<stdio.h>
#include<math.h>
#define pi 3.14
int main(int argc, char const *argv[])
{ 
    double y;
    for(int i=1;i<=10;i++){
        y=i*sin(i*pi/5);
        printf("%d icin %.2lf\n",i,y);
    }
    return 0;
}
