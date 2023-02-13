#include<stdio.h>
#include<math.h>
 int main(int argc, char const *argv[])
{  
    int a,gecici,x;
    int dizi[100];
    for(a=0;x!=-1;a++){
       scanf("%d",&dizi[a]);
       x=dizi[a];
    }
    for (int i = 0; i <  a ; i++ )
    {
        for (int j = i; j < a; j++)
        {
            if (dizi[i]>dizi[j])
            {
                gecici=dizi[i];
                dizi[i]=dizi[j];
                dizi[j]=gecici;
            }
            
        }
        
    }
    printf("en buyuk %d en kucuk %d",dizi[a-1],dizi[1]);
    
    return 0;
}
