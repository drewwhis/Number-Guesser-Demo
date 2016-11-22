/*
NumberGuesser.java

A program that guesses a players number.
A player guesses a number between 1 and 100 inclusive.
If the computer's guess is too high, the user should enter H.
If the computer's guess is too low, the user should enter L.

Otherwise, the user should enter E.
*/

import java.util.Scanner;

public class NumberGuesser
{
    public static void main(String[] args) 
    {
        Scanner s = new Scanner(System.in);
        char answer = ' ';
        int low = 1;
        int high = 100;
        int mid = (low + high) / 2;
        int count = 1;

        System.out.print("Think of a number between 1 and 100, then press Enter.");
        s.nextLine();
        System.out.println("");

        while (answer != 'e' && answer != 'E')
        {
            System.out.println("Is your number " + mid + "?");
            System.out.print("Enter H if your number is higher, L if your number is lower, or E if your number is equal: ");
            answer = (char) s.next().charAt(0);
            System.out.println("");

            if (answer == 'h' || answer == 'H')
            {
                low = mid;
            }
            else if (answer == 'l' || answer == 'L')
            {
                high = mid;
            }
            else
            {
                continue;
            }

            mid = (low + high) / 2;
            count++;
        }

        if (count > 1)
        {
            System.out.println("Guessed the answer in " + count + " guesses!");
        }
        else
        {
            System.out.println("Guessed the answer in 1 guess!");
        }

        System.out.println("Run the program again to play again.");
    }    
}
