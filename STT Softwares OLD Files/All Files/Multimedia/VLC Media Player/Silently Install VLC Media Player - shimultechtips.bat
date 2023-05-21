@Echo Off
mode con: cols=50 lines=10
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window........

%~d0
CD %~dp0

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

rem This Section Is For x86...........................

echo Uninstalling Old VLC Version...
echo ...............................

if exist "%PROGRAMFILES%\VideoLAN\VLC\uninstall.exe" "%PROGRAMFILES%\VideoLAN\VLC\uninstall.exe" /S
if exist "%PROGRAMFILES(x86)%\VideoLAN\VLC\uninstall.exe" "%PROGRAMFILES% (x86)\VideoLAN\VLC\uninstall.exe" /S

echo Installing VLC Media Player x86
echo ...............................

"VLC Media Player x86 - shimultechtips.exe" /L=1033 /S /NCRC

rem This Section Is For x86...........................


goto END

:X64

rem This Section Is For x64...........................

echo Uninstalling Old VLC Version...
echo ...............................

if exist "%PROGRAMFILES%\VideoLAN\VLC\uninstall.exe" "%PROGRAMFILES%\VideoLAN\VLC\uninstall.exe" /S
if exist "%PROGRAMFILES(x86)%\VideoLAN\VLC\uninstall.exe" "%PROGRAMFILES% (x86)\VideoLAN\VLC\uninstall.exe" /S

echo Installing VLC Media Player x64
echo ...............................

"VLC Media Player x64 - shimultechtips.exe" /L=1033 /S /NCRC

rem This Section Is For x64...........................

goto END

:END

echo.
echo Installation completed successfully

exit