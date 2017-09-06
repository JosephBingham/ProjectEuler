import Math;
num = 600851475143;
l, m, i, n;

function isprime(n){
	if( n % 2 == 0){ return false;} 
	for(i = 3; i < Math.pow(n, .5); i++){
		if( (n%i) == 0 ){ return false; }
	}
	return true;
}

for( l = 0; l < Math.pow(num, .5)/2; l++){ 
	if( (num % l == 0) && isprime(l)){
		m = l;
	}

}
	document.write(m);

