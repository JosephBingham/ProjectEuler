#include<iostream>
using namespace std;

bool isprime(long int n) {
	if(n == 2) {
		return true;
	}
	if(n % 2 == 0) {
		return false;
	}
	for(long int i = 0; i < n + 2; i++) {
		if(n % i == 0) {
			return false;
		}
	}
	return true;
}

int main(void) {
	long int num = 600851;
	int best = 0;
	for(long int i = 1; i < num + 1; i++) {
		if(isprime(i) && num % i == 0) {
			best = i;
		}
	}
	cout << best << endl;
	return 0;
}
