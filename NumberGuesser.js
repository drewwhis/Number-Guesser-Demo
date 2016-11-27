/*
This is a JavaScript program.

NumberGuesser.js

A program that guesses a players number.
A player guesses a number between 1 and 100 inclusive.
If the computer's guess is too high, the user should enter H.
If the computer's guess is too low, the user should enter L.

Otherwise, the user should enter E.
*/

var answer = ' ';
var low = 1;
var high = 100;
var count = 1;
var mid = Math.floor((low + high) / 2);
answer = prompt("Think of a number between 1 and 100, then press Enter.");

while (answer !== 'e' && answer !== 'E')
{
    answer = prompt("Is your number " + mid + "?\n" + "Enter H if your number is higher, L if your number is lower, or E if your number is equal: ");
    
    if (answer === 'h' || answer === 'H')
    {
        low = mid;
    }
    else if (answer === 'l' || answer === 'L')
    {
        high = mid;
    }
    else
    {
        continue;
    }
    mid = Math.floor((low + high) / 2);
    count++;
}


if (count > 1)
{
    window.alert("Guessed the answer in " + count + " guesses!");
}
else
{
    window.alert("Guessed the answer in 1 guess!");
}

window.alert("Run the program again to play again.");