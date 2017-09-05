import java.util.*;
/*The number, 197, is called a circular prime because all rotations of
 *the digits: 197, 971, and 719, are themselves prime.
 *There are thirteen such primes below 100:
 *2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
 *How many circular primes are there below one million?
 */

/*
 ****psuedo code
 *get number
 *get digits
 *find permutations
 *check if they are prime
 *increment counter
 */

public class Euler35{


	public static int[] getdigits(int num){
		int[] even_found = {0};
		String stringy = Integer.toString(num);
		String[] stringed = stringy.split("");
		int[] returnable = new int[stringed.length];
		int i = 0;
		for(String s : stringed){
			int inted = Integer.parseInt(s);
			// optimization, if any digit is even,
			// definitely not circular prime
			if(inted % 2 == 0){
				return even_found;
			}
			else{
			returnable[i++] = inted;
			}
		}
		return returnable;
	}


	public static int[] getperm(int num){
		int[] digits = getdigits(num);
		if(digits.length == 1){
			return digits;
		}else{
			return null;
		}
	}

	public static void main(String[] args){

		System.out.println(getperm(9));

	}



}
