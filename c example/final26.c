#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
int main(int argc, char const *argv[])
{
    char c[]="metin123metin",x;
    for (int i = 0; c[i]!='\0'; i++)
    {
        if(toascii(c[i])>47&&toascii(c[i])<58)
        printf("%c",c[i]);
    }
    
    return 0;
}
