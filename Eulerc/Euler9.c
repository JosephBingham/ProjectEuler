#include<stdio.h>
#include<math.h>

int main(void){
	int flag = 0;
	for(int a = 0; a < 1000; a++){
		for(int b = 0; b < 1000; b++){
			for(int c = 0; c < 1000; c++){
				int prod = a * b * c;
				if(a + b + c == 1000 && sqrt(a*a + b*b) == c && prod){
					printf("a = %d b = %d c = %d\n", a, b, c);
					flag = 1;
					break;
				}
			}
			if(flag) break;
		}
		if(flag) break;
	}
	return 0;
}

