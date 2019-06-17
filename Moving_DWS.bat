@echo off
setlocal enabledelayedexpansion

rem dir "T:\10 - Contracts\10.02 - Variations\Site Instructions\*dws*" /S /B /O:N /A:D > OrgCombine.txt

echo Hello World!
pause
cls

for /D /R "T:\10 - Contracts\10.02 - Variations\Site Instructions\" %%G in (*DWS*) do (

call :process %%~fG

)

echo "Operation Complete"	
pause

:process

set h=%1 %2 %3 %4 %5 %6
set i=%6
set j=%i:~13,7%
set k=T:\16 - Construction\16.18 SI-FI\Site Instructions\%j%\DWS

if not exist "%k%" mkdir "%k%"
xcopy /D "%h%" "%k%"

:end





