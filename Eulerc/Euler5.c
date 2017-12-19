#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(void){
	int div = 0;
	int i = 1;
	while(!div){
		for(int j = 11; j <= 20; j++){
			if(i%j != 0){
				div = 0;
				i++;
				break;
			}
			else {
			div = 1;
			}
		}
	}
	printf("%d\n", i);
}
