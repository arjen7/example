#include <iostream>
using namespace std;
int main ()
{
//mypointer firstvalue nin adresini gösterir
//my pointer 10 u firsvaluenin adresinde gösterir 
// first value dolasıyla 10 olur
    int firstvalue, secondvalue;
    int * mypointer;
    mypointer = &firstvalue;
    *mypointer = 10;
    mypointer = &secondvalue;
    *mypointer = 20;
    cout << "firstvalue is " << firstvalue << endl;
    cout << "secondvalue is " << secondvalue << endl;
    return 0;
} 
