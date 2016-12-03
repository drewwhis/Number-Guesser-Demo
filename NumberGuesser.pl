#
#This is a Perl program.
#
#NumberGuesser.pl
#
#A program that guesses a players number.
#A player guesses a number between 1 and 100 inclusive.
#If the computer's guess is too high, the user should enter H.
#If the computer's guess is too low, the user should enter L.
#
#Otherwise, the user should enter E.
#

my $answer = ' ';
my $low = 1;
my $high = 101;
my $mid = int(($low + $high) / 2);
my $count = 1;

print "Think of a number between 1 and 100, then press Enter.";
$answer = <STDIN>;
chomp($answer);

while ($answer ne 'e' and $answer ne 'E')
{
	print "\n";
	print "Is your number $mid?\n";
	print "Enter H if your number is higher, L if your number is lower, or E if your number is equal: ";
	
	$answer = <STDIN>;
	chomp($answer);

	if ($answer eq 'h' or $answer eq 'H')
	{
		$low = $mid;
	}
	elsif ($answer eq 'l' or $answer eq 'L')
	{
		$high = $mid;
	}
	else
	{
		next;
	}

	$mid = int(($low + $high) / 2);
	$count++;
}

print "\n";

if ($count > 1)
{
	print"Guessed the answer in $count guesses!\n";
}
else
{
	print "Guessed the answer in 1 guess!\n"; 
}

print "Run the program again to play again.\n";