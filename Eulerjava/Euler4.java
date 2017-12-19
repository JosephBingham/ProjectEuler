import java.util.*;

public class Euler4{
	public static void main(String[] args){
		int best = 0;
		for(int i = 100; i < 999; i++){
			for(int j = 100; j < 999; j++){
				if(ispal(i*j) && i*j > best){
					best = i*j;
				}
			}
		}
		System.out.println(best);
	}
	public static boolean ispal(int n){
		String stringy = Integer.toString(n);
		String stringed = new StringBuilder(stringy).reverse().toString();
		return stringy.equals(stringed);
	}
}
