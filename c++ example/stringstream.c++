#include<iostream>
#include<sstream>
using namespace std;
int main(int argc, char const *argv[])
{
    int x , y;
    string mystr;
    cout<<"please enter a number:";
    getline(cin,mystr);stringstream(mystr)>>x;
    getline(cin,mystr);stringstream(mystr)>>y;
    cout<<x*y<<"\t";


    return 0;
}
