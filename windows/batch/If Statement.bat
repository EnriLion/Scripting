@echo off

goto :main
:main
rem set /A number=1
rem if %number% EQU 1 (echo Thi is IF Statement)
set /P path= Enter Path 
if %path% EQU C:\Users\Leon-Win (
   cd %path%
   dir
)else (
   echo You have entered the wrong path
)
goto :eof
rem help if // if we want to know more about if