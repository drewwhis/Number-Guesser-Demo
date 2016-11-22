/*
NumberGuesser.cs

A program that guesses a players number.
A player guesses a number between 1 and 100 inclusive.
If the computer's guess is too high, the user should enter H.
If the computer's guess is too low, the user should enter L.

Otherwise, the user should enter E.
*/
using System;

namespace NumberGuesser
{
    class Program
    {
        static void Main(string[] args)
        {
            char answer = ' ';
            int low = 1;
            int high = 100;
            int mid = (low + high) / 2;
            int count = 1;

            Console.Write("Think of a number between 1 and 100, then press Enter.");
            answer = Convert.ToChar(Console.Read());
            Console.Read();
            Console.WriteLine("");

            while (answer != 'e' && answer != 'E')
            {
                Console.WriteLine("Is your number " + mid.ToString() + "?");
                Console.Write("Enter H if your number is higher, L if your number is lower, or E if your number is equal: ");
                answer = Convert.ToChar(Console.Read());
                Console.Read();
                Console.Read();
                Console.WriteLine("");

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
                Console.WriteLine("Guessed the answer in " + count.ToString() + " guesses!");
            }
            else
            {
                Console.WriteLine("Guessed the answer in 1 guess!");
            }

            Console.WriteLine("Run the program again to play again.");
        }
    }
}
