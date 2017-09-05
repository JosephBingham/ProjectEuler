public class Euler2{
    public static void main(String[] args){
	int current = 2;
	int next = 3;
	int holder = 3;
	int sum = 0;
	while(current < 4000000){
	    if (current % 2 == 0){
		sum += current;
		}
	   holder = next;
	   next += current;
	   current = holder;
	}
	    System.out.println(sum);
    }
}
