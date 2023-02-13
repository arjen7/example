#include<stdio.h>
int main(int argc, char const *argv[])
{   unsigned int nufus=60000000;
    for(int i=2000;i<2011;i++){
        if(i!=2000){
            nufus=nufus+nufus*23/1000;
        }
        printf("%d yılında nufüs : %d \n",i , nufus);
    }
    return 0;
}
