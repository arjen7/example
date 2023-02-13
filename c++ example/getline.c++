#include<iostream>
using namespace std;
int main(int argc, char const *argv[])
{
    string mystr;
    cout<<"what is your name and surname:";
    getline(cin,mystr);
    cout<<"your name:"<<mystr<<"\n";
    cout<<"what is your age:";
    cin>>mystr;
    cout<<"your age:"<<mystr<<"\t";

    return 0;
}
