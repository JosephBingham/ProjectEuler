#include<iostream>
#include<math.h>
using namespace std;


bool isPrime(int n) {
    if(n < 2) return false;
    if(n == 2) return true;
    if(n % 2 == 0) return false;
    for(int i = 3; i < (int)sqrt((double)n) + 1; i += 2) {
        if(n % i == 0) {
            return false;
        }
    }
    return true;
}

int main(void) {
    long int sum = 2;
    for( int i = 3; i < 2000000; i += 2) {
        if(isPrime(i)) {
            sum += i;
        }
    }
    cout << sum << endl;
}
