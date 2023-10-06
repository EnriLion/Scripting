@echo off

set /P FolderPath=Enter Folder Path 
cd %FolderPath%

if %ERRORLEVEL% EQU 0 (
   echo You have entered correct path
) else (
   echo You have entered wrong path
)