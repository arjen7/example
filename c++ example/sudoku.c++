#include<iostream>
#include<ctime>
#include<cstdlib>
#include<unistd.h>
using namespace std;
int main(int argc, char const *argv[])
{
    srand(time(0));
    int board[3][3][3][3]{0};
    
    for (int t = 0; t < 3; t++)
    {
        for(int z=0;z<3;z++)
    {
        for(int y=0;y<3;y++)
        {
            for (int x = 0; x < 3; x++)
            {
                int generatornumber=rand()%9+1;
                bool control=true;
                    for (int i = 0; i < 3 && control!=false ; i++)
                    {
                        for (int j = 0; j < 3; j++)
                        {
                            if (generatornumber==board[t][z][i][j])
                            {
                                control=false;
                                break;
                            }
                        }
                    }
                    for (int i = 0; i < 3 && control!=false; i++)
                    {
                        for (int j = 0; j < 3; j++)
                        {
                            if (generatornumber==board[i][j][y][x])
                            {
                                control=false;
                                break;
                            }
                        }
                    }
                    for (int i = 0; i < 3 && control!=false; i++)
                    {   
                        for (int j = 0; j < 3; j++)
                        {
                            if (generatornumber==board[t][i][y][j])
                            {
                                control=false;
                                break;
                            }
                        }
                    }
                if (control)
                    {
                        board[t][z][y][x]=generatornumber;
                         cout<<board[t][z][y][x]<<" ";
                         sleep(1);
                    }
                else
                    x--;

                   
            }
        }
        cout<<"\n";
    }
    }
    
   /*for(int t = 0; t < 3; t++)
    {
        for(int z=0;z<3;z++)
        {
            for(int y=0;y<3;y++)
            {
                for (int x = 0; x < 3; x++)
                {
                    cout<<board[t][z][y][x]<<" ";
                }
            }cout <<"\n";
        }
    }*/ 
    return 0;
}
