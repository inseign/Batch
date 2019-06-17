@echo off

setlocal enabledelayedexpansion
goto :main

:main
setlocal
	set string=Hello World^^!
	echo !string!
	pause
	
	for %%G in ( "FI-*.*" ) do call :Process %%G
	
endlocal	
pause
goto End

:Process
set z=%1
set y=%z:~0,7%
set x=T:\10 - Contracts\10.02 - Variations\Field Instructions\
set w=%x%%y%
echo %w%
if not exist "%w%" mkdir "%w%"
xcopy /D %z% "%w%"

:End