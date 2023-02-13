#include<stdio.h>
#include<stdlib.h>
int main(int argc, char *argv[])
{
    char *gecici;
    for (int i = 1; i < argc ; i++)
    { for (int j = i;  j < argc ; j++)
       {    if (atoi(argv[i])>atoi(argv[j]))
            {
                gecici=argv[i];
                argv[i]=argv[j];
                argv[j]=gecici;
            }                           
        }
    }
    for (int i = 1; i < argc; i++)
    {
        printf("%d\t",atoi(argv[i]));
    }
    
    return 0;
}
