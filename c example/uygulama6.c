#include<stdio.h>
int main(int argc, char const *argv[]){
    int sayac=1;
    for (int i = 1; i < 9; i++)
    {
        int toplam=sayac;
        for (int j = 1 ; j <9; j++)
        {   
            printf("%d\t",toplam);
            toplam*=2;
        }
        sayac*=2;
        printf("\n\n");
    }
    
}
