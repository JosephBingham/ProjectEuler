#include<stdio.h>

int main(void){
	int squares = 0, sums = 0;
	for(int i = 1; i <= 100; i++){
		squares += i;
		sums += i*i;
	}
	squares *= squares;
	printf("%d\n", squares - sums);
}
