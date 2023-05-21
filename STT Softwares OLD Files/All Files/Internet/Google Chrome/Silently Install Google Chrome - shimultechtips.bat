@Echo Off
mode con: cols=50 lines=10
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window..................

%~d0
CD %~dp0

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

rem This Section Is For x86..........

echo Installing Google Chrome x86....
echo ................................
"../../$ - Tools/superuser32 - shimultechtips.exe" /w /v /c "Google Chrome x86 - shimultechtips.exe" /silent /install

rem This Section Is For x86..........


goto END

:X64

rem This Section Is For x64..........

echo Installing Google Chrome x64....
echo ................................
"../../$ - Tools/superuser64 - shimultechtips.exe" /w /v /c "Google Chrome x64 - shimultechtips.exe" /silent /install

rem This Section Is For x64..........

goto END

:END

echo.
echo Installation completed successfully

exit