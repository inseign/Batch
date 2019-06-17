@echo off
setlocal enabledelayedexpansion
rem dir /S /B /O:N /A:D "T:\16 - Construction\16.18 SI-FI\Site Instructions\*day*" > info.txt

set /p input=What is the date of the file you would like to use (DDMMYYYY) ? 
set DAY=%input:~0,2%
set MONTH=%input:~2,2%
set YEAR=%input:~4,4%


If %MONTH%==1 (
set MONTHTEXT=January)
If %MONTH%==2 (
set MONTHTEXT=Feburary)
If %MONTH%==3 (
set MONTHTEXT=March)
If %MONTH%==4 (
set MONTHTEXT=April)
If %MONTH%==5 (
set MONTHTEXT=May)
If %MONTH%==6 (
set MONTHTEXT=June)
If %MONTH%==7 (
set MONTHTEXT=July)
If %MONTH%==8 (
set MONTHTEXT=August)
If %MONTH%==9 (
set MONTHTEXT=September)
If %MONTH%==10 (
set MONTHTEXT=October)
If %MONTH%==11 (
set MONTHTEXT=November)
If %MONTH%==12 (
set MONTHTEXT=December)

dir "T:\10 - Contracts\10.02 - Variations\Dayworks Sheets\%MONTH%. %MONTHTEXT% %YEAR%\%DAY%.%MONTH%.%YEAR%\SI-*.*" > info.txt


pause