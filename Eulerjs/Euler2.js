var current, next, holder, sum;

current = 2;
next = 3;
holder = 3;
sum = 0;

while(current < 4000000){
	if(!(current % 2)){
    	sum += current;
	}
	holder = next;
	next += current;
	current = holder;
}
console.log(sum);


