#include<stdio.h>
#include<math.h>
//compile with -lm flag

int isprime(int n){
	if(n < 2){
		return 0;
	}
	if(n == 2){
		return 1;
	}
        int lim = (int)sqrt((double)n);
        if(n % 2 == 0){
                return 0;
        }
        for(int i = 3; i <= lim + 1; i += 2){
                if(n % i == 0){
                        return 0;
                }
        }
        return 1;
}

int main(void){
	long int sum = 2;
	for(int i = 3; i <= 2000001; i++){
		if(isprime(i)){
			sum += i;
		}
	}
	printf("%ld\n", sum);
}
