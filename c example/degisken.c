

#include<stdio.h>
#define pi 3.14 //basa sabitleme; tum fonksıyonlarda gecerlı
extern int ab=16;// tüm fonksiyonlarda gecerli atama
void fonksiyon()
 {
     printf("extern tamsayi a=%d\n",ab);
 }
int main(int argc, char const *argv[])
{

 printf("%.2f\n",pi);
 typedef int tamsayi; //tamsayi=int
 struct degisken
{
    tamsayi gun;
    tamsayi ay;
    char *ad;
}t;
t.gun=20; t.ay=7; t.ad="arjen";
printf("%d, %d, %s\n",t.gun, t.ay, t.ad);
for(int i=0;i<3;i++){
    printf("%d",t);
}

const tamsayi x=5; //fonksıyonda sabitleme degismez degıstırelemez
printf("%d\n",x);
fonksiyon();
}
 