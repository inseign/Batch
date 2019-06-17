@echo off
setlocal enabledelayedexpansion

rem dir "T:\10 - Contracts\10.02 - Variations\Site Instructions\*dws*" /S /B /O:N /A:D > OrgCombine.txt

set file=C:\Users\terry.gittos\Documents\DWS_COPY\file1.txt

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
set k=ftp://203.41.176.164/Kentz%20to%20JKC/DWS%20for%20GF/%j%/DWS
echo %j%

for /f "tokens=*" %%A in (%file%) do (
if %%A==%j% (
call :process2
)
)

goto :eof


:process2

if not exist "%k%" mkdir "%k%"
xcopy /D "%h%" "%k%"

goto :eof



