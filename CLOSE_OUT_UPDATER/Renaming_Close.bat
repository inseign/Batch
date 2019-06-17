@echo off
setlocal enabledelayedexpansion

rem dir "T:\10 - Contracts\10.02 - Variations\Site Instructions\*dws*" /S /B /O:N /A:D > OrgCombine.txt

echo Press any key to Begin!
pause
cls

for /R "T:\10 - Contracts\10.02 - Variations\Site Instructions\" %%G in (*close*.pdf) do (

call :process %%~fG %%G

)

rem for /R "T:\10 - Contracts\10.02 - Variations\Site Instructions\" %%G in (*complete*.pdf) do (

rem call :process %%~fG %%G

rem )

echo "Operation Complete"
pause



:process

set h=%1 %2 %3 %4 %5 %6 %7 %8 %9
set i=%6
set j=%i:~13,7%
set k=%i:~13,3%
set l=%h:~-4%

if %k%==SI- (
if %l%==.pdf (

REN "%h%" "%j% Completion Certificate.pdf"

)
)

goto :eof





