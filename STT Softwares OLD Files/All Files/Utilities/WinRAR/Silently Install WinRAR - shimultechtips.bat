@Echo Off
mode con: cols=50 lines=10
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window..................
%~d0
CD %~dp0

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

rem This Section Is For x86...........................


echo Installing WinRAR x86.......
echo ............................
start /wait WinRAR-x86-shimultechtips.exe /S


rem This Section Is For x86...........................


goto END

:X64

rem This Section Is For x64...........................

echo Installing WinRAR x64.......
echo ............................
start /wait WinRAR-x64-shimultechtips.exe /S


rem This Section Is For x64...........................

goto END

:END

echo.
echo Installation completed successfully

exit
