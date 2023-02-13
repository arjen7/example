#include<stdio.h>
#include<stdlib.h>
int main(int argc, char  *argv[])
{
    if(argc==1){
        char metin[100];
        fgets(metin,100,stdin);
        for (int i = 0; metin[i+1]!='\0' ; i++)
        {
            if (i==0||metin[i-1]==' ')
            {
               printf("%c",metin[i]);
            }
        }
    }
    else if(argc>1)
    for (int i = 1; i < argc; i++)
    {
        char *a;
        a=argv[i];
        printf("%c",*a);
    }
    return 0;
}
