@echo off
setlocal enabledelayedexpansion


for /R "T:\10 - Contracts\10.02 - Variations\Dayworks Sheets\JKC Approved DWS for Filing to folders\UNZIPPED\" %%G in (*FI-*) do (

call :process2 %%~nG

)

for /R "T:\10 - Contracts\10.02 - Variations\Dayworks Sheets\JKC Approved DWS for Filing to folders\UNZIPPED\" %%G in (*SI-*) do (

call :process %%~nG

)


echo "Operation Complete"	
pause

:process

set h=%1 %2
set i=%2
set j=%i:~1,3%
set p=%i:~5,4%
set k=T:\10 - Contracts\10.02 - Variations\Site Instructions\%j%%p%\JKC DWS

if not exist "%k%" mkdir "%k%"
xcopy /D /Y "T:\10 - Contracts\10.02 - Variations\Dayworks Sheets\JKC Approved DWS for Filing to folders\UNZIPPED\%h%.pdf" "%k%"

goto :eof


:process2

set l=%1 %2
set m=%2
set n=%m:~1,3%
set q=%m:~5,4%
set o=T:\10 - Contracts\10.02 - Variations\Field Instructions\%n%%q%\JKC DWS

if not exist "%o%" mkdir "%o%"
xcopy /D /Y "T:\10 - Contracts\10.02 - Variations\Dayworks Sheets\JKC Approved DWS for Filing to folders\UNZIPPED\%l%.pdf" "%o%"

goto :eof