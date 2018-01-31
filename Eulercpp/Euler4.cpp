#include <iostream>
#include <math.h>
using namespace std;
bool ispal(int n){
	double x = log10((double)n);
	int digits = floor(x);
	for(int i = 0 ; i <= digits/2; i++){
		int powera = 1;
		int powerb = 1;
		for(int j = 0; j < i; j++){
			powera *= 10;
		}
		for(int j = 0; j < digits - i; j++){
			powerb *= 10;
		}
		int digit_a = (n/powera) % 10;
		int digit_b = (n/powerb) % 10;
		if (digit_a != digit_b){
			return false;
		}
	}
	return true;
}

int main(void){
	int max = 2;
	for (int i = 100; i<=999; i++){
		for (int j = 100; j<=999; j++){
			if(ispal(i*j) && (i*j > max)){
				max = i*j;
			}
		}
	}
	cout << max << endl;
}
