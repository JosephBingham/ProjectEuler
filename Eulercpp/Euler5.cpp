#include<iostream>
using namespace std;
int main(void){
	bool div = false;
	int i = 1;
	while(!div){
		for(int j = 11; j <= 20; j++){
			if(i%j != 0){
				div = false;
				i++;
				break;
			}
			else {
			div = true;
			}
		}
	}
    cout << i << endl;
}
