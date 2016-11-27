#!/usr/bin/env ruby
#
# This is a Ruby program.
#
# NumberGuesser.rb
#
# A program that guesses a players number.
# A player guesses a number between 1 and 100 inclusive.
# If the computer's guess is too high, the user should enter H.
# If the computer's guess is too low, the user should enter L.
#
# Otherwise, the user should enter E.
#

answer = ' '
low = 1
high = 100
mid = (low + high) / 2
count = 1

print "Think of a number between 1 and 100, then press Enter."
answer = gets.chomp

while (answer != "e" and answer != "E") do
	print "\n"
	print "Is your number #{mid}?\n"
	print "Enter H if your number is higher, L if your number is lower, or E if your number is equal: "

	answer = gets.chomp
	if (answer == "h" or answer == "H")
		low = mid
	elsif (answer == "l" or answer == "L")
		high = mid
	else
		next
	end
	mid = (low + high) / 2
	count += 1
end

print "\n"

if (count > 1)
	print "Guessed the answer in #{count} guesses!\n"
else
	print "Guessed the answer in 1 guess!\n"
end

print "Run the program again to play again.\n"