public class Euler3{
    public static void main(String[] args){
	long num = 600851475143L;
	int large = 0;
	for(int i = 3; i < (int)Math.sqrt(num); i++){
	    if(num%i == 0 && isprime(i)){
		    large = i;
		}
	}
	    System.out.println(large);
    }

    public static boolean isprime(int n){
	if(n%2 == 0){
	    return false;
	}
	for(int i = 3; i < (int)Math.sqrt(n) + 1; i++){
	    if(n%i == 0){
		return false;
	    }
	}
	return true;
    }
}
