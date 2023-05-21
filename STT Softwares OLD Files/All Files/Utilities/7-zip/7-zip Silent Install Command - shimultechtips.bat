@Echo Off
mode con: cols=50 lines=10
Title Created By Shimul Sheikh & Color 30
echo Do Not Close This Window..................
%~d0
CD %~dp0

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

rem This Section Is For x86...........................

echo Installing 7-zip x86.....
"7-zip x86 - shimultechtips.exe" /S
"7-zip Settings - shimultechtips.exe"


rem This Section Is For x86...........................


goto END

:X64

rem This Section Is For x64...........................

echo Installing 7-zip x64.....
"7-zip x64 - shimultechtips.exe" /S
"7-zip Settings - shimultechtips.exe"

rem This Section Is For x64...........................

goto END

:END

echo.
echo Installation completed successfully

exit