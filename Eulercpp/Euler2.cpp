#include<iostream>
using namespace std;

int main(void) {
	int sum = 0;
	int current = 1;
	int next = 1;
	int temp = 1;
	while(current < 4000000) {
		if(current % 2 == 0){
			sum += current;
		}
		temp = next;
		next = next + current;
		current = temp;
	}
	cout << sum << endl;
}
