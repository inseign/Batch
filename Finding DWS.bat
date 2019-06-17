@echo off
setlocal enabledelayedexpansion

set /p input=What DWS number are you looking for?

DIR /S /B /O:N /A:-D "T:\10 - Contracts\*%input%*" > DWS_%input%.txt
DIR /S /B /O:N /A:-D "T:\15 - Scans\*%input%*" >> DWS_%input%.txt
DIR /S /B /O:N /A:-D "T:\16 - Construction\*%input%*" >> DWS_%input%.txt

echo Please check the file!
pause