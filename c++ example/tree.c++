#include <iostream>
#include<vector>
#include<queue>
#include<sstream>
using namespace std;
struct Tree
{
    string key;
    vector<Tree*> child;
};
Tree *newTree(string key)
{
    Tree* x = new Tree;
    x->key = key;
    return x;
}
void ListTree(Tree* root)
{
    if (root == NULL)
    {
        return;
    }

    else
    {
        queue<Tree*> kuyruk;
        kuyruk.push(root);
        while (!kuyruk.empty())
        {
            int size = kuyruk.size();

            while (size>0)
            {
                Tree *point= kuyruk.front();
                kuyruk.pop();
                cout<<point->key<<"\t";
                for (int i = 0; i < point->child.size(); i++)
                    
                    kuyruk.push(point->child[i]);
                
                size--;
            }
            cout<<endl;
        }
    }
}

int main(int argc, char const *argv[])
{

    Tree *root = newTree("0");
    (root->child).push_back(newTree("0"));
    (root->child).push_back(newTree("1"));
    (root->child).push_back(newTree("2"));
    (root->child).push_back(newTree("3"));
    (root->child[0]->child).push_back(newTree("000"));
    (root->child[0]->child).push_back(newTree("001"));
    (root->child[2]->child).push_back(newTree("020"));
    (root->child[3]->child).push_back(newTree("030"));
    (root->child[3]->child).push_back(newTree("031"));
    (root->child[3]->child).push_back(newTree("032"));
  
    cout << "Level order traversal Before Mirroring\n";
    ListTree(root);
    
}

