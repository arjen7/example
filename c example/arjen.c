#include<stdio.h>
int main(int argc, char const *argv[])
{
    // int x = 6;
    //    for (int i = 0; i < 6; i++)
    // {
    //     for (int z = x; z!=0;z--)
    //     {
    //         printf(" ");
    //     }
    //     printf("*\n");
    //     x--;
    // }
    // for (int i = 0; i < 6; i++)
    // {
    //     for (int z = 0; z<x;z++)
    //     {
    //         printf("*");
    //     }
    //     printf("\n");
    //     x++;
    // }
    int bosluk=10;
    int yildiz=1;
    for (int i = 0; i < 11; i+=2)
    {
        for (int j = bosluk; j >=0 ; j--)
        {
            printf(" ");
            if (j == bosluk/2)
            {
                for (int t = yildiz; t >0 ; t--)
                {
                    printf("*");
                }
            }
            
        
        }
        
        // for (int j = bosluk/2; j >0 ; j--)
        // {
        //     printf(" ");
        // }
        printf("\n");
        bosluk-=2;
        yildiz+=2;
    }
    
    return 0;
}
