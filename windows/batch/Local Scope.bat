@echo off

goto :displayname

:displayname
setlocal
rem setlocal is only for the particular value
set /P name=Enter your name 
echo Your Name is %name%
rem endlocal is only for the particular value
endlocal
set /P number=Enter number 
echo Your Number is %number%

goto:eof