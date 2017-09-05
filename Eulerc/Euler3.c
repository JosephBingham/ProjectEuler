
#include<stdio.h>
#include<math.h>
#include <unistd.h>
//needed to use -lm to end
int isprime(long a){
	//fflush(stdout);
	//printf("isprime: a is %ld\n",a);
	double x = (double) a;
     //   int b = (int) (sqrt(x) + 1);
	int i;
	if(((int) a)%2==0)
		return 0;
	for (i = 3 ; i <= a; i+=2){
		if((int)a%i == 0){
			return 0;
		}
	}
	return 1;

}


int main (void){
	long j = 600851475143;
	int stuff= 0;
	long i;
	for (i=3; i <=j/2; i+=2){
		//fflush(stdout);
		//printf("for loop:%ld\n",i);
		if( (j%i == 0) && isprime(i) ){
			stuff = i;
		}
		//sleep(1);
	}
	printf("%i\n",stuff);
	return 0;
}
