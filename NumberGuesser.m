/*
This is an Objective-C program.

NumberGuesser.m

A program that guesses a players number.
A player guesses a number between 1 and 100 inclusive.
If the computer's guess is too high, the user should enter H.
If the computer's guess is too low, the user should enter L.

Otherwise, the user should enter E.
*/

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        char answer = ' ';
        printf("Think of a number between 1 and 100, then press Enter.");
        int low = 1;
        int high = 101;
        int mid = (low + high) / 2;
        int count = 1;
        
        while (answer != 'e' && answer != 'E')
        {
            scanf("%c", &answer);
            printf("\n");
            printf("Is your number %i?\n", mid);
            printf("Enter H if your number is higher, L if your number is lower, or E if your number is equal: ");
            
            scanf("%c", &answer);
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
            count += 1;
        }
        
        printf("\n");
        
        if (count > 1)
        {
            printf("Guessed the answer in %d guesses!\n", count);
        }
        else
        {
            printf("Guessed the answer in 1 guess!\n");
        }
        
        printf("Run the program again to play again.");
    }
    return 0;
}
