#include<stdio.h>
#include<stdlib.h>
int main(int argc, char const *argv[])
{
    int dizi[3],gecici;
    for (int i = 0; i < 3; i++)
    {
        dizi[i]=atoi(argv[i+1]);
    }
    for (int i = 0; i < 3; i++)
    {
        for ( int j = i; j < 3 ; j++)
        {
            if (dizi[i]>dizi[j])
            {
                gecici=dizi[i];
                dizi[i]=dizi[j];
                dizi[j]=gecici;
            }
            
        }
        
    }
    for (int i = 0; i < 3; i++)
    {
        printf("%d\n",dizi[i]);
    }
    
    
    
    return 0;
}
