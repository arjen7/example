#include <iostream>
using namespace std;
void duplicate (int& a, int& b, int& c)
{
 a*=2;
 b*=2;
 c*=2;
}// int& a demek a değişirse maindeki a da değişir
int divide (int a, int b=2)
// int b=2 olarak varsayılan atanır, herhangi bir veri
// yollanmazsa otomotik 2 kullanılır
{
 int r;
 r=a/b;
 return (r);
} 
int main ()
{
 int x=1, y=3, z=7;
 duplicate (x, y, z);
 cout << "x=" << x << ", y=" << y << ", z=" << z<<"\n";
 cout << divide (12);
 cout << endl;
 cout << divide (20,4);
 return 0;
} 