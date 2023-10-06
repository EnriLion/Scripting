@echo off

rem echo Enter your name
rem set /P name=""
rem echo Yout name is %name%

echo Enter First Number
set /P Number1=

echo Enter Second Number
set /P Number2=

set /A result=%Number1%+%Number2%

echo Addition %result%