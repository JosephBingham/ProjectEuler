var sum, i;

sum = 0;
i = 0;


for(i; i < 1000; i += 1){
	if(i % 3 == 0 || i % 5 == 0){
		sum = sum + i;
	}
}

console.log(sum);
