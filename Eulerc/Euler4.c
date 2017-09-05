#include<stdio.h>
#include<math.h>

int i = 100;
int j = 100;
int max = 0;


int ispal(int n){
	int digits = int(log10(n));
	for(int l = 0; l < digits 

}

for (i; i<=999; i++){
	for (j; j<=999; j++){
		if(ispal(i*j) && i*j > max){
			max = i*j;
		}
	}
}
