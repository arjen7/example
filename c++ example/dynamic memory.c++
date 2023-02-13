#include <iostream>
#include <new>
using namespace std;
int main(int argc, char const *argv[])
{
    int *p,x;
    cout<<"how many number would you like to type?";
    cin>>x;
    p= new (nothrow) int[x];
    // p nin adresinde 5 intlik boş alan açar
    if(p==0)
        cout<<" error";
    else {
        for (int i = 0; i < x; i++){

            cout<<"enter a number";
            cin>>p[i];}
        }
    for (int i = 0; i < x; i++)
    {
        cout<<p[i]<<"\t";
    }
    delete[] p;
    // belleği boşaltır
    return 0;
}
