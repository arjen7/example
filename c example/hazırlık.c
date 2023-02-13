#include<stdio.h>
void artikyil(){
  int yil;
  printf("bir yil giriniz:");
  scanf("%d",&yil);
  if (yil%4==0&& yil % 100==0)
      printf("%d artik yıldır",yil);
  else
      printf("%d artik yil değildir\n",yil);}
void gotodeyimi(){
    int x=5;
    etiket1:
    printf("%d",x);
    if (x>0)
    {
        x--;
        goto etiket1;
    }
    
}
void dowhiledongusu(){
    int x=0;
    do {
        x++;
        printf("%d",x);
    }while (x<8);
    
}
int main(int argc, char const *argv[])
{
    int x=5, y=6,z=6;
    x=y==z;
    //printf("%d\n",x);
    //artikyil();
    //gotodeyimi();
    dowhiledongusu();
    return 0;
}

