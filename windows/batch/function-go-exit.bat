@echo off

goto :function3

:function1
    echo This is 1st function

:function2
    echo This is 2nd function
   rem  timeout 15  // timeout to exit the file 15
   rem timeout 15
rem goto :eof // eof(end of file)
rem goto :eof
rem exit // with this comand exit also the cmd
exit /B 0
rem echo We could use exit /B 0 to exit as well the .batfile only

:function3
    echo This is 3rd function
    call :function1
