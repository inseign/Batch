@echo off
setlocal enabledelayedexpansion



rem for /D /R "T:\10 - Contracts\10.02 - Variations\Site Instructions\" %%G in (*DWS*) do (
rem call :process %%~fG
rem )


for /f "tokens=*" %%G in ("Z:\WORK-BACK-UP\CODING\BATCH\ROCKBREAKER\*.xlsx") do (
echo %%G
)

pause