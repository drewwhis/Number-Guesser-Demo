/*
NumberGuesser.swift

A program that guesses a players number.
A player guesses a number between 1 and 100 inclusive.
If the computer's guess is too high, the user should enter H.
If the computer's guess is too low, the user should enter L.

Otherwise, the user should enter E.
*/

import Darwin
var answer = " ";
print("Think of a number between 1 and 100, then press Enter.", terminator: "");
var low = 1;
var high = 100;
var mid = (low + high) / 2;
var count = 1;
answer = readLine()!;

while (answer != "e" && answer != "E")
{
    print("");
    print("Is your number \(mid)?");
    print("Enter H if your number is higher, L if your number is lower, or E if your number is equal: ", terminator:"");
    
    answer = readLine()!;
    if (answer == "h" || answer == "H")
    {
        low = mid;
    }
    else if (answer == "l" || answer == "L")
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

print("");

if (count > 1)
{
    print("Guessed the answer in \(count) guesses!");
}
else
{
    print("Guessed the answer in 1 guess!");
}

print("Run the program again to play again.");