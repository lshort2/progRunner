//Luke Short
#include<iostream>
using namespace std;

int main()
{
  string str ="";
  getline(cin, str);

  str.insert(0, "<(*_*<) ~ ");
  str.insert(str.size(), " ~ (>*_*)>");
  cout<< str <<endl;

   return 0;
}

