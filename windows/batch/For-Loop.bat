@echo off
setlocal

for %%i in (1 2 3 4 5) do (
   rem echo %%i
   mkdir Folder-%%i
)

endlocal 

rem we could use help for// to see more