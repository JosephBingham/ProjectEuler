#include<stdio.h>
#include<stdlib.h>


int isdiv(int n){
	int div = 0;
	for(int i = 1; i < n; i++){
		if(n % i == 0){
			div++;
			if(div == 500){
				return 1;
			}
		}
	}
	return 0;
}

int main(void){
	int i = 1;
	int inc = 1;
	while(!isdiv(i)){
		i += ++inc;
	}
	printf("%d\n",i);
	return 0;
}

