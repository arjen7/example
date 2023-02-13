#include <iostream>
#define WIDTH 5
#define HEIGHT 3
using namespace std;
int jimmy [HEIGHT][WIDTH];
// iki boyutlu dizi
int n,m;
int main ()
{
 for (n=0;n<HEIGHT;n++)
 for (m=0;m<WIDTH;m++)
 {
 jimmy[n][m]=(n+1)*(m+1);
 }
 for (int i = 0; i < HEIGHT; i++)
 {
    for (int j = 0; j < WIDTH; j++)
    {
        cout<<jimmy[i][j]<<"\t";
    }
    cout<<"\n";
 }
 
 return 0;
} 