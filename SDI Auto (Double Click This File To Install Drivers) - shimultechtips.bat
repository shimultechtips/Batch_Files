@Echo Off
mode con: cols=50 lines=10
title Snappy Driver Installer (Shimul) & Color 30
echo Wait For SDI To Install Drivers
echo -------------------------------

%~d0
CD %~dp0

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo Opening Snappy Driver Installer x86...
start "" SDI_R2305.exe -nologfile -preservecfg

goto END

:X64

echo Opening Snappy Driver Installer x64...
start "" SDI_x64_R2305.exe -nologfile -preservecfg

goto END

:END

echo.
echo SDI Is Running successfully

exit