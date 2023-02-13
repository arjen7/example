#include<stdio.h>
int main(int argc, char const *argv[])
{
    double nufus=60000000;
    for(int i=2000;i<2011;i++){
        printf("%d yili nufus= %.2lf\n",i,nufus);
        nufus+=nufus*0.023;
    }
    return 0;
}
