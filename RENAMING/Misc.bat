@echo off

echo Hello World!
pause
cls

Dir /B /O:N /A:D "T:\10 - Contracts\10.02 - Variations\Site Instructions\SI-*" > file1.txt
REM Dir /S /B /O:N /A:D "T:\10 - Contracts\10.02 - Variations\Site Instructions\*time*" >> file1.txt

REN "T:\10 - Contracts\10.02 - Variations\Site Instructions\SI-01058\Dayworks" "DWS"
REN "T:\10 - Contracts\10.02 - Variations\Site Instructions\SI-01058" "SI-1058"
REN "T:\10 - Contracts\10.02 - Variations\Site Instructions\SI-01983" "SI-1983"


echo Operation finished
pause
