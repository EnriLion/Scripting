@echo off

goto :userinput

:main
rem echo Your number is %~1
echo Your number is %~1 and %~2
rem echo Your number is %~1 and %~2 and %~3
goto :eof

:userinput
rem set /P Number1=Enter Number 
rem call :main %Number1%
rem call :main 60 
rem call :main 60 90
rem call :main 60 90
set /P Number1=Enter first Number 
set /P Number2=Enter second Number 
call :main %Number1% %Number2%