@echo off

setlocal enabledelayedexpansion
goto :main

:main
setlocal
	set string=Hello World^^!
	echo !string!
	pause
	
	for %%G in ( "SI-*.*" ) do call :Process %%G
	
endlocal	
pause
goto End

:Process
set z=%1
set y1=%z:~0,3%
set y2=0
set y3=%z:~3,4%
set y4=%y1%%y2%%y3%
set x=T:\10 - Contracts\10.02 - Variations\Site Instructions\
set u=\Dayworks
set w=%x%%y4%%u%
echo %w%
if not exist "%w%" mkdir "%w%"
xcopy /D %z% "%w%"

:End