#include<stdio.h>
int main(int argc, char const *argv[])
{
    char a[50];
    int sayac=0;
    fgets(a,50,stdin);
    for(int i=0;a[i]!='\0';i++){
        sayac++;
    }
    for(int i=sayac-1;i>=0;i--){
        printf("%c",a[i]);
        sayac++;
    }
    return 0;
}
