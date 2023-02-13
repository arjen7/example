#include<iostream>
using namespace std;
enum colors{
    blue,black,red,yellow,grey,white,green
};
// colors is a new type
struct color
{
    colors a=grey,b=white;
    string mystr;
    union 
    {
      colors x,y;
      // only big value returned
    };
};
int main(int argc, char const *argv[])
{
    color abc;
    abc.a=grey,abc.b=green;
    abc.x=black,abc.y=red;
    cout<<abc.a<<"\t"<<abc.b;
    cout<<"\n"<<abc.x<<"\t"<<abc.y<<"\t";
    // computer dont know writing colors type
    // so writing values number for colors value
    // colors value working like array 
    return 0;
}

