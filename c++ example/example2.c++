#include<iostream>
#include<sstream>
#include<string>
using namespace std;
struct n_movies
{
    string movie;
    int year;
}movies [3];
void printmovie(n_movies movie[]){
     for (int i = 0; i < 3; i++)
    {
        cout<<"name: "<<movie[i].movie;
        cout<<"  year:"<<movie[i].year<<"\n";
    }
}
int main(int argc, char const *argv[])
{
    string mystr;
    for (int i = 0; i < 3; i++)
    {
        cout<<"enter movie name:";
        getline(cin,movies[i].movie);
        cout<<"enter movie year:";
        getline(cin,mystr);
        stringstream(mystr)>>movies[i].year;
    }
    printmovie(movies);
    return 0;
}
