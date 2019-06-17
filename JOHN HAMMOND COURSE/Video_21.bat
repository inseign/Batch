@echo off
rem setlocal enabledelayedexpansion
goto :main

:say_something
echo i am saying %1 %2 %3!
goto :eof


:main
echo this is the main function!
call :say_something tiger mountain peasant


pause
goto :eof
