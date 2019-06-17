@echo off
setlocal enabledelayedexpansion

for /R "L:\" %%G in (*progress*.xl*) do (

echo %%G
echo %%G >> Output.txt
)

echo "Operation Complete"
pause