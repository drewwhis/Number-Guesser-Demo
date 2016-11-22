'NumberGuesser.vb
'
'A program that guesses a players number.
'A player guesses a number between 1 and 100 inclusive.
'If the computer's guess is too high, the user should enter H.
'If the computer's guess is too low, the user should enter L.

'Otherwise, the user should enter E.

Imports System

Public Module modMain
	Sub Main()
		Dim answer As Char = Nothing
		Dim low As Integer = 1
		Dim high As Integer = 100
		Dim mid As Integer = (low + high) / 2
		Dim count As Integer = 1

		Console.Write("Think of a number between 1 and 100, then press Enter.")
		answer = Convert.ToChar(Console.Read())
		Console.Read()
		Console.WriteLine("")

		While (answer <> "e" And answer <> "E")
			Console.WriteLine("Is your number " + mid.ToString() + "?")
			Console.Write("Enter H if your number is higher, L if your number is lower, or E if your number is equal: ")
			answer = Convert.ToChar(Console.Read())
			Console.Read()
			Console.Read()
			Console.WriteLine("")

			If (answer = "h" Or answer = "H") Then
				low = mid
			Else If (answer = "l" Or answer = "L") Then
				high = mid
			Else
				Continue While
			End If

			mid = (low + high) / 2
			count += 1
		End While

		If count > 1 Then
			Console.WriteLine("Guessed the answer in " + count.ToString() + " guesses!")
		Else
			Console.WriteLine("Guessed the answer in 1 guess!")
		End If

		Console.WriteLine("Run the program again to play again.")
	End Sub
End Module