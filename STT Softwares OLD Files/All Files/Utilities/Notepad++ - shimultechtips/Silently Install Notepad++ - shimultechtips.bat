@Echo Off
mode con: cols=50 lines=10
Title Created By Shimul Tech Tips Team & Color 30
echo -------------------------------
%~d0
CD %~dp0

Echo Please Wait....................
Echo Installing Notepad++...........

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

"Notepad++ x86 - shimultechtips.exe" /S

goto END

:X64

"Notepad++ x64 - shimultechtips.exe" /S

goto END

:END

exit