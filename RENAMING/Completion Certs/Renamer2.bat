@echo off
setlocal enabledelayedexpansion

echo Hello World!
pause
cls

REM DIR /S /B /O:N /A:-D "T:\10 - Contracts\*Close*.pdf" > list.txt
REM DIR /S /B /O:N /A:-D "T:\16 - Construction\*Completion Certificate*.pdf" >> list.txt

set file1=T:\10 - Contracts\10.02 - Variations\Site Instructions\
set key1=Completion Certificate

for /R "T:\10 - Contracts\10.02 - Variations\Site Instructions\" %%G in (*Compl*.pdf) do (

call :process %%~nG %%G

)

echo "Operation Complete"	
pause

:process

set h=%1 %2 %3
set j=%h:~0,3%
set i=%h:~8,22%
set k=%h:~0,7%
set l=%4 %5 %6 %7 %8
echo %j%

IF %j%==SI- GOTO :process2


pause 

REM set k=T:\16 - Construction\16.18 SI-FI\Site Instructions\%j%\DWS
REM if not exist "%k%" mkdir "%k%"
REM xcopy /D "%h%" "%k%"

goto :eof

:process2

IF "%i%"=="Completion Certificate" (echo true) ELSE (

echo %l%
pause

)

goto :eof

echo Operation Finished
pause