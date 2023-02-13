#include<stdio.h>
int main(int argc, char const *argv[])
{
    int x=10,y=0;
    char a=' ',b='*';
    while (x>0)
    {
        for (int i = 0; i < y; i++)
        {
            printf("%c",a);
        }
        for (int i = 0; i < x; i++)
        {
            printf("%c",b);
        }
        printf("\n");
        x--;
        y++;
    }
    while (x<=10)
    {
        for (int i = 0; i < y; i++)
        {
            printf("%c",a);
        }
        for (int i = 0; i < x; i++)
        {
            printf("%c",b);
        }
        printf("\n");
        x++;
        y--;
    }
    return 0;
}
