#include<stdio.h>
#include<math.h>
#include<stdlib.h>
float dikyamukh(float a,float c){
    return sqrt(a*c);
}
float dikyamuka(float a,float c){
    return dikyamukh(a,c)*(a+c)/2;
}
float dikyamukc(float a,float c){
    return a+c+dikyamukh(a,c)+sqrt((pow(dikyamukh(a,c),2)+pow((a-c),2)));
}
int main(int argc, char const *argv[])
{
    float a=9,c=4;
    float (*p)(float,float);
    p=&dikyamukh;
    printf("%.2f\n",p(a,c));
    p=&dikyamuka;
    printf("%.2f\n",p(a,c));
    p=&dikyamukc;
    printf("%.2f\n",p(a,c));
    return 0;
}
