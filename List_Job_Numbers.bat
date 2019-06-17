@echo off
setlocal enabledelayedexpansion

set /p input=What is folder in 'quotes' are you looking for?

DIR /B /O:N /A:D "M:\~Quotes~\%input%" > List.txt

echo Please check the file!
pause