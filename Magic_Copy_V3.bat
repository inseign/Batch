@echo off
setlocal enabledelayedexpansion
REM set DAY=%DATE:~4,2%
REM set MONTH=%DATE:~7,2%
REM set YEAR=%DATE:~10,4%

set /p input=What is the date of the file you would like to use (DDMMYYYY) ? 

set intit=%input:~2,1%

if %intit%==0 (
set /a MONTHFOLD=%input:~3,1%+12
) ELSE (
set /a MONTHFOLD=%input:~2,2%+12
)

set DAY=%input:~0,2%
set MONTH=%input:~2,2%
set YEAR=%input:~4,4%


If %MONTH%==01 (
set MONTHTEXT=January)
If %MONTH%==02 (
set MONTHTEXT=February)
If %MONTH%==03 (
set MONTHTEXT=March)
If %MONTH%==04 (
set MONTHTEXT=April)
If %MONTH%==05 (
set MONTHTEXT=May)
If %MONTH%==06 (
set MONTHTEXT=June)
If %MONTH%==07 (
set MONTHTEXT=July)
If %MONTH%==08 (
set MONTHTEXT=August)
If %MONTH%==09 (
set MONTHTEXT=September)
If %MONTH%==10 (
set MONTHTEXT=October)
If %MONTH%==11 (
set MONTHTEXT=November)
If %MONTH%==12 (
set MONTHTEXT=December)

set file1="T:\10 - Contracts\10.02 - Variations\Dayworks Sheets\%MONTHFOLD%. %MONTHTEXT% %YEAR%\%DAY%.%MONTH%.%YEAR%\FI-*.*"
set file2="T:\10 - Contracts\10.02 - Variations\Dayworks Sheets\%MONTHFOLD%. %MONTHTEXT% %YEAR%\%DAY%.%MONTH%.%YEAR%\SI-*.*"
echo %file1%
echo %file2%

pause
cls

for %%G in (%file1%) do (

call :Process1 %%~nG %%G

)

for %%K in (%file2%) do (

call :Process2 %%~nK %%K

)

echo "Operation Complete"	
pause

:Process1

set file3=%1.pdf
set h=%9
set i=%h:~0,16%
set orgpath1=%2 %3 %4 %5 %6 %7 %8 %i%
REM echo %orgpath1%%file3%

set x=T:\10 - Contracts\10.02 - Variations\Field Instructions\
set y=%file3:~0,7%
set destpath1=%x%%y%

if not exist "%destpath1%" mkdir "%destpath1%"
xcopy /D "%orgpath1%%file3%" "%destpath1%"

goto :eof

:Process2

set file4=%1.pdf
set l=%9
set m=%l:~0,16%
set orgpath2=%2 %3 %4 %5 %6 %7 %8 %m%
REM %orgpath2%%file4%

set w=T:\10 - Contracts\10.02 - Variations\Site Instructions\
set z=%file4:~0,7%
set destpath2=%w%%z%\DWS
REM echo %destpath2%

if not exist "%destpath2%" mkdir "%destpath2%"
xcopy /D "%orgpath2%%file4%" "%destpath2%"

goto :eof

