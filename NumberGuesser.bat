::
::NumberGuesser.bat
::
::A program that guesses a players number.
::A player guesses a number between 1 and 100 inclusive.
::If the computer's guess is too high, the user should enter H.
::If the computer's guess is too low, the user should enter L.
::
::Otherwise, the user should enter E.
::

@ECHO off

SET answer=" "
SET count=1
SET low=1
SET high=100
SET /A mid=(low+high)/2

ECHO|SET /p="Think of a number between 1 and 100, then press Enter."
PAUSE > nul  
ECHO.

:DoWhile
ECHO.
ECHO Is your number %mid%?
SET /p answer="Enter H if your number is higher, L if your number is lower, or E if your number is equal: " 

SET tempVar=0
IF "%answer%"=="h" (SET tempVar=1)
IF "%answer%"=="H" (SET tempVar=1)
IF "%answer%"=="l" (SET tempVar=2)
IF "%answer%"=="L" (SET tempVar=2)

IF %tempVar%==1 (SET /A low=mid)
IF %tempVar%==2 (SET /A high=mid)
IF %tempVar%==0 (GOTO EndDoWhile)

SET /A mid=(low+high)/2
SET /A count=count+1
GOTO DoWhile
:EndDoWhile

ECHO.
IF %count% GTR 1 (ECHO Guessed the answer in %count% guesses!)
IF %count%==1 (ECHO Guessed the answer in 1 guess!)
ECHO|SET /p="Run the program again to play again."
PAUSE > nul