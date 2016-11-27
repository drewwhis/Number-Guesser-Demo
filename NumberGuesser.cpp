/*
This is a C++ program.

NumberGuesser.cpp

A program that guesses a players number.
A player guesses a number between 1 and 100 inclusive.
If the computer's guess is too high, the user should enter H.
If the computer's guess is too low, the user should enter L.

Otherwise, the user should enter E.
*/

#include <iostream>
using namespace std;

int main()
{
	char answer = ' ';

	cout << "Think of a number between 1 and 100, then press Enter.";
	int low = 1;
	int high = 100;
	int mid = (low + high) / 2;
	int count = 1;

	while (answer != 'e' && answer !='E')
	{
		cin.get(answer);

		cout << endl << "Is your number " << mid << "?" << endl;
		cout << "Enter H if your number is higher, L if your number is lower, or E if your number is equal: ";

		cin >> answer;

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

	cout << endl;

	if (count > 1)
	{
		cout << "Guessed the answer in " << count << " guesses!" << endl;
	}
	else
	{
		cout << "Guessed the answer in 1 guess!" << endl;
	}

	cout << "Run the program again to try again." << endl;

	return 0;
}