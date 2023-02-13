#include<stdio.h>
#include<math.h>
#define pi 3.14
double areaofcircle(int radius){
    return pi*pow(radius,2);
}
double circumference(int radius){
    return 2*pi*radius;
}
int main(int argc, char const *argv[])
{
    int radius;
    printf("please enter the radius:");
    scanf("%d",&radius);
    printf("area of circle: %.2lf\n",areaofcircle(radius));
    printf("circumferenece : %.2lf",circumference(radius));
    return 0;
}

