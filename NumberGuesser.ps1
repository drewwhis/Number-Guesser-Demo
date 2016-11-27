<#

This is a Windows Powershell program.

NumberGuesser.ps1

A program that guesses a players number.
A player guesses a number between 1 and 100 inclusive.
If the computer's guess is too high, the user should enter H.
If the computer's guess is too low, the user should enter L.

Otherwise, the user should enter E.
#>

$answer = ' '
$low = 1
$high = 100
$mid = [Math]::Floor([decimal](($low + $high) / 2))
$count = 1

$answer = Read-Host "Think of a number between 1 and 100, then press Enter"
Write-Host""

while (($answer -ne 'e') -and ($answer -ne 'E'))
{
	Write-Host "Is your number $mid","?" -Separator ""
	$answer = Read-Host "Enter H if your number is higher, L if your number is lower, or E if your number is equal"
	

	if ($answer -eq 'h' -or $answer -eq 'H')
	{
		$low = $mid
	}
	elseif ($answer -eq 'l' -or $answer -eq 'L')
	{
		$high = $mid
	}
	else
	{
		continue
	}

	$mid = [Math]::Floor([decimal](($low + $high) / 2))
	$script:count += 1
    Write-Host ""
}

Write-Host ""

if ($count -gt 1)
{
	Write-Host "Guessed the answer in $count guesses!"
}
else
{
	Write-Host "Guessed the answer in 1 guess!"
}

Write-Host "Run the program again to play again."