#Number Guesser.py
#
#A program that guesses a players number.
#A player guesses a number between 1 and 100 inclusive.
#If the computer's guess is too high, the user should enter H.
#If the computer's guess is too low, the user should enter L.

#Otherwise, the user should enter E.

answer = str(input("Think of a number between 1 and 100, then press Enter."))
print("")

lowVal = 1
highVal = 100
mid = int((lowVal + highVal) / 2)
count = 1

while (answer != 'e' and answer !='E'):
	print("Is your number " + str(mid) + "?")
	answer = str(input("Enter H if your number is higher, L if your number is lower, or E if your number is equal: "))
	
	print("")

	if (answer == 'h' or answer == 'H'):
		lowVal = mid
	elif (answer == 'l' or answer == 'L'):
		highVal = mid
	else:
		continue
		
	mid = int((lowVal + highVal) / 2)
	count += 1

if count > 1:
	print("Guessed the answer in " + str(count) + " guesses!")
else:
	print("Guessed the answer in 1 guess!")
print("Run the program again to play again.")