#include<stdio.h>
#include<math.h>
int main(int argc, char const *argv[]){
    unsigned int sayac=1,dizi1[9],dizi2[9],gecici;
    for (int i = 1; i <  5 ; i++)
    {
        int toplam=sayac;dizi1[0]=1;
        for (int j = 1 ; j < 5 ; j++)
        {  
            if ( j!=1 && i != 1 )
            {  
                dizi1[j]*=gecici;
                printf("%u\t",dizi1[j]);
                gecici=dizi1[j];
            }
            else
            {
                dizi1[j]=toplam;
                dizi2[j]=dizi1[j];
                printf("%u\t",dizi1[j]);
                toplam=dizi1[j]*dizi1[j-1];
                if(toplam==1){toplam*=2;}
                gecici=dizi1[j];
            }
        }
        sayac=dizi2[i+1];
        printf("\n\n\n");
    }
    
}
