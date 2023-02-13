#include<iostream>
using namespace std;
class crectangle // diktorgen
{
    int x,y;
public:// genel her yerden erişilebilir nesne özellikleri
    crectangle(int,int);
    // kurucu method
    int area(){return x*y;};
};
crectangle::crectangle(int a,int b){
    x=a;y=b;
}
int main(int argc, char const *argv[])
{
    crectangle rect(3,4),rectb(5,6);
    cout<<"area rect:"<<rect.area()<<endl;
    cout<<"area rectb:"<<rectb.area()<<endl;
    return 0;
}
