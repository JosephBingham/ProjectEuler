#include<stdio.h> 
int  stuff(void){
	int sum = 0;
	for (int i = 0 ; i < 1000; i++){
		if(i % 3 == 0 || i % 5 == 0){
			sum = sum + i;
		}
	}
	return sum;
}
int main (void){
	printf("%d\n",stuff());
	return 0;
}
