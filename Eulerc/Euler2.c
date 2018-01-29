#include<stdio.h>
int  stuffy(void){
	int sum = 0;
	int previous = 0;
	int current = 1;
	int temp = 1;
	while(current<4000000){
		temp = current;
		current = current + previous;
		previous = temp;
		if(current % 2 == 0 ){
			sum = sum + current;
		}
	}
	return sum;
}
int main (void){
	printf("%d\n",stuffy());
	return 0;
}
