@Echo Off
mode con: cols=50 lines=10
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window..................

%~d0
CD %~dp0

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

rem This Section Is For x86...........................

echo Installing Potplayer x86....
echo ............................
taskkill /f /im PotPlayerMini.exe
"x86/PotPlayer x86 - shimultechtips.exe" /S
taskkill /f /im PotPlayerMini.exe
"x86/PotPlayer Codec x86 - shimultechtips.exe"
taskkill /f /im PotPlayerMini.exe
"Potplayer Settings - shimultechtips.exe"


rem This Section Is For x86...........................


goto END

:X64

rem This Section Is For x64...........................

echo Installing Potplayer x64....
echo ............................

taskkill /f /im PotPlayerMini.exe
taskkill /f /im PotPlayerMini64.exe
"x64/PotPlayer x64 - shimultechtips.exe" /S
taskkill /f /im PotPlayerMini.exe
taskkill /f /im PotPlayerMini64.exe
"x64/PotPlayer Codec x64 - shimultechtips.exe"
taskkill /f /im PotPlayerMini.exe
taskkill /f /im PotPlayerMini64.exe
"Potplayer Settings - shimultechtips.exe"

rem This Section Is For x64...........................

goto END

:END

echo.
echo Installation completed successfully

exit