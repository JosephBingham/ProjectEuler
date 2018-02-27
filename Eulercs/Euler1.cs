using System;

public class Test
{
    public static void Main()
    {
	var sum = 0;
	for(var i = 0; i < 1000; i++){
		if((i % 5) * (i % 3) == 0){
			sum += i;
		}
	}
	Console.WriteLine(sum);
}

