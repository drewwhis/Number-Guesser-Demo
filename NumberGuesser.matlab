/*
This is an Octave/MATLAB program.

NumberGuesser.matlab

A program that guesses a players number.
A player guesses a number between 1 and 100 inclusive.
If the computer's guess is too high, the user should enter H.
If the computer's guess is too low, the user should enter L.

Otherwise, the user should enter E.
*/

answer = input("Think of a number between 1 and 100, then press Enter.", "s");
low = 1;
high = 100;
mid = fix((low + high) / 2);
count = 1;

while (!strcmp(answer,"e") && !strcmp(answer,"E"))
  printf("Is your number %d?\n", mid);
  answer = input("Enter H if your number is higher, L if your number is lower, or E if your number is equal: ", "s");
  
  if (strcmp(answer, "h") || strcmp(answer, "H"))
    low = mid;
  elseif (strcmp(answer, "l") || strcmp(answer, "L"))
    high = mid;
  else
    continue;
  endif
  
  mid = fix((low + high) / 2);
	count++;
  
  printf("\n");
    
end

printf("\n");

if (count > 1)
	printf("Guessed the answer in %d guesses!\n", count);
else
	printf("Guessed the answer in 1 guess!\n");
endif

printf("Run the program again to try again.\n");