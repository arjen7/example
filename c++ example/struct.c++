#include<iostream>
#include<string>
#include<sstream>
using namespace std;
struct book
{
    int page_number;
    string name;
}your_book,other_book;
void callstruck(book information){
    cout<<" name : "<<information.name<<" page number:"<<information.page_number;
}
int main(int argc, char const *argv[])
{
    other_book.page_number=100;
    other_book.name="poor man";
    cout<<"please enter name your book and page number:";
    getline(cin,your_book.name);
    cin>>your_book.page_number;
    cout<<"other book:";
    callstruck(other_book);
    cout<<"\n your book: ";
    callstruck(your_book);

    return 0;
}
