#include<iostream>
#include<math.h>
using namespace std;

bool isprime( long int n) {
    if(n < 2) {
        return false;
    }
	if(n == 2) {
		return true;
	}
	if(n % 2 == 0) {
		return false;
	}
	for(long int i = 3; i < sqrt(n) + 1; i += 2) {
		if(n % i == 0) {
			return false;
		}
	}
	return true;
}

int main(void) {
	long int num =  600851475143;
	long int best = 0;
	for(long int i = 1; i < num + 1; i++) {
		if(isprime(i) && num % i == 0) {
			best = i;
		}
	}
	cout << best << endl;
	return 0;
}
