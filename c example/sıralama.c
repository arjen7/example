#include <stdio.h>
#include <stdlib.h>
 
// Dizideki sayıları sıralama (Küçükten büyüğe)
 
int main(){
 
    int gecici, adet,faktoryel=1;
    
    printf("Kac adet sayi girilecek: ");
    scanf("%d", &adet); 
    int dizi[adet];
    for(int i=0; i<adet; i++){ 
        printf("%d)Sayi giriniz: ", i+1);
        scanf("%d", &dizi[i]);
        faktoryel=faktoryel*(i+1);
    }
    
    for(int i=0; i<faktoryel;i++){ 
        for(int j=0; j<adet-1; j++)
        {
            if(dizi[j] > dizi[j+1])
            {
                gecici = dizi[j+1];
                dizi[j+1] = dizi[j];
                dizi[j] = gecici;
            }
        }
    }
 
        for(int i=0; i<adet; i++)
            printf("%d ", dizi[i]);
}