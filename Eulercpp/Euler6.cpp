#include<iostream>
using namespace std;

int main(void){
	int squares = 0, sums = 0;
	for(int i = 1; i <= 100; i++){
		squares += i;
		sums += i*i;
	}
	squares *= squares;
    cout << squares - sums << endl;
}
