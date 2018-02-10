import java.lang.Math.*;
public class Euler7 {
    public static boolean isPrime(int n) {
        if(n < 2) {
            return false;
        }
        if(n == 2) {
            return true;
        }
        if(n % 2 == 0) {
            return false;
        }
        int lim = (int) Math.sqrt(n);
        for(int i = 3; i < lim + 1; i += 2) {
            if(n % i == 0) {
                return false;
            }
        }
        return true;
    }
    public static void main(String[] args) {
        int numOfPrimes = 0;
        int i = 0;
        int best = 0;
        while(numOfPrimes < 10001) {
            if(isPrime(i)){
                numOfPrimes++;
                best = i;
            }
            i++;
        }
        System.out.println(best);
    }
}
