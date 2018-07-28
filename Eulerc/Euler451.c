#include<stdio.h>
#include<stdlib.h>
#include<math.h>

const int true = 1;
const int false = 0;

int isPrime(int n){
	if(n == 2){
		return true;
	}
	if(n < 2 || n % 2 == 0){
		return false;
	}
	for(int i = 3; i < pow(n, .5) + 1; i++){
		if(n % i == 0){
			return false;
		}
	}
	return true;
}

int get(int n){
	if(isPrime(n)){
		return 1;
	}
	for(int i = n - 2; i > 1 ; i--){
		if(i * i % n == 1){
			return i;
		}
	}
}


int main(void){
	long sum = 0;
	for(int i = 3; i < 2e7; i++){
		sum += get(i);
		if(i % 10000 == 0){
			printf("%d : %d : %ld\n", i, get(i), sum);
		}
	}
	printf("%ld\n", sum);
}


