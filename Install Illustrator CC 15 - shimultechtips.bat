@Echo Off
mode con: cols=50 lines=20
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window.
%~d0
CD %~dp0

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

rem This Section Is For x86...........................

echo Run This File On X64 Based PC Only...

rem This Section Is For x86...........................


goto END

:X64

rem This Section Is For x64...........................

echo Installing Illustrator CC 15.
"Illustrator CC 15 x64 - shimultechtips.exe"
echo After Finishing Illustrator CC 15 Installation.
pause
"Illustrator Activator - shimultechtips.exe"

rem This Section Is For x64...........................

goto END

:END

echo.
echo Installation completed successfully

exit