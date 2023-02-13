#include <iostream>
#include<stdarg.h>
using namespace std;
struct data
{
    int key;
    string str;
};
data *creator(int key,string str){
    data *value= new data;
    value->key=key;
    value->str=str;
    return value;
}
void func(int x,string y){
    data *values = creator(x,y);
    
}
