#include<stdio.h>
#include<math.h>
#include<stdarg.h>
int main(int argc, char const *argv[])
{
    int x,y,z;
    x=2;
    y=x++;
    z=++y;
    printf("%d %d %d",x,y++,++z);
    return 0;
}
