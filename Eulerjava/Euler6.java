public class Euler6 {

    public static void main(String[] args){
        int sum = 0;
        int square = 0;
        for(int i = 0; i <= 100; i++) {
            sum += i*i;
            square += i;
        }
        System.out.println(square*square - sum);
    }
}
