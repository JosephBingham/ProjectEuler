#include<stdio.h>
#include<math.h>
//compile with -lm flag

int isprime(int n){
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
	int k = 3;
	int j = 2;
	int best = 0;
	while(j <= 10001){
		if(isprime(k)){
			j++;
			best = k;
		}
		k += 2;
	}
	printf("%d\n", best);
}
