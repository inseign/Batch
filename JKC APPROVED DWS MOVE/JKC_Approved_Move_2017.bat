@echo off
setlocal enabledelayedexpansion


for /R "T:\10 - Contracts\10.02 - Variations\Dayworks Sheets\JKC Approved DWS for Filing to folders\2. JKC Approved DWS (UNZIPPED)\2017\Ready for move\" %%G in (*FI-*) do (

set l=%%~nG
set m=!l:~-9,3!
set q=!l:~-5,4!
set o=T:\10 - Contracts\10.02 - Variations\Field Instructions\!m!!q!\JKC DWS

if not exist "!o!" mkdir "!o!"
xcopy /D /Y "T:\10 - Contracts\10.02 - Variations\Dayworks Sheets\JKC Approved DWS for Filing to folders\2. JKC Approved DWS (UNZIPPED)\2017\Ready for move\!l!.pdf" "!o!"

)



for /R "T:\10 - Contracts\10.02 - Variations\Dayworks Sheets\JKC Approved DWS for Filing to folders\2. JKC Approved DWS (UNZIPPED)\2017\Ready for move\" %%G in (*SI-*) do (

set h=%%~nG
set i=!h:~-9,3!
set p=!h:~-5,4!
set k=T:\10 - Contracts\10.02 - Variations\Site Instructions\!i!!p!\JKC DWS

if not exist "!k!" mkdir "!k!"
xcopy /D /Y "T:\10 - Contracts\10.02 - Variations\Dayworks Sheets\JKC Approved DWS for Filing to folders\2. JKC Approved DWS (UNZIPPED)\2017\Ready for move\!h!.pdf" "!k!"

)


echo "Operation Complete"	
pause