@Echo Off
mode con: cols=50 lines=10
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window.................


%~d0
CD %~dp0

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo -----------------------------------------

echo Installing mpam-fe.exe
x86\mpam-fe.exe

echo Installing mpas-fe.exe
x86\mpas-fe.exe

echo Installing nis_full.exe
x86\nis_full.exe

goto END

:X64

echo -----------------------------------------

echo Installing mpam-fe.exe
x64\mpam-fe.exe

echo Installing mpas-fe.exe
x64\mpas-fe.exe

echo Installing nis_full.exe
x64\nis_full.exe

goto END

:END

echo.
echo SDI Is Running successfully

exit