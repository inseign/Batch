@echo off
setlocal enabledelayedexpansion

rem dir "T:\10 - Contracts\10.02 - Variations\Site Instructions\*dws*" /S /B /O:N /A:D > OrgCombine.txt

for /D /R "T:\10 - Contracts\10.02 - Variations\Site Instructions\" %%G in (*DWS*) do (

set x1=%%~fG
set x2=!x1:~55,7!
set x3=%%~nG
set x4=!x3:~0,3!

rem JKC or DWS
rem echo !x4!
rem SI-xxxx
rem echo !x2!

IF /I !x4!==JKC (

set k0="T:\10 - Contracts\10.02 - Variations\Site Instructions\!x2!\JKC DWS"
set k1="T:\16 - Construction\16.18 SI-FI\Site Instructions\!x2!\JKC DWS\"

if not exist !k1! mkdir !k1!
xcopy /D /Y /S !k0! !k1!

) ELSE (

set k3="T:\10 - Contracts\10.02 - Variations\Site Instructions\!x2!\DWS"
set k4="T:\16 - Construction\16.18 SI-FI\Site Instructions\!x2!\DWS\"

if not exist !k4! mkdir !k4!
xcopy /D /Y /S !k3! !k4!

)

)

for /D %%G in ("T:\10 - Contracts\10.02 - Variations\Field Instructions\FI-*.*") do (

set x3=%%~nG

set h0="T:\10 - Contracts\10.02 - Variations\Field Instructions\!x3!"
set h1="T:\16 - Construction\16.18 SI-FI\Field Instructions\!x3!"

if not exist !h1! mkdir !h1!
xcopy /D /Y /S !h0! !h1!

)

for /R "T:\16 - Construction\16.18 SI-FI\Field Instructions\" %%G in (*.msg) do (

DEL "%%G"

)


echo "Operation Complete"	
pause