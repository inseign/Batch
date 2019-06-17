@echo off
goto :main

:new_function
	echo Changing a variable...

	set %1=Lemon

	

goto :eof

:main
	echo This is the main function!
	set new_var=Lunch
	echo %new_var%
	call :new_function new_var
	echo %new_var%
pause
goto :eof