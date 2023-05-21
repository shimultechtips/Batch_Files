fdm_x86_setup.exe /SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART

@Echo Off
mode con: cols=50 lines=10
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window........

%~d0
CD %~dp0

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

rem This Section Is For x86...........................

echo ................................
echo Installing FDM x86..............
echo ................................

"Free Download Manager x86 - shimultechtips.exe" /SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART

start https://chrome.google.com/webstore/detail/free-download-manager-chr/ahmpjcflkgiildlgicmcieglgoilbfdp/RK%3D2/RS%3DfQzscgKGm9aMezJJ7Gf2Fcc.JSo-
start https://addons.mozilla.org/en-US/firefox/addon/free-download-manager-addon/

rem This Section Is For x86...........................


goto END

:X64

rem This Section Is For x64...........................

echo ................................
echo Installing FDM x64..............
echo ................................

"Free Download Manager x64 - shimultechtips.exe" /SP- /VERYSILENT /SUPPRESSMSGBOXES /NORESTART

start https://chrome.google.com/webstore/detail/free-download-manager-chr/ahmpjcflkgiildlgicmcieglgoilbfdp/RK%3D2/RS%3DfQzscgKGm9aMezJJ7Gf2Fcc.JSo-
start https://addons.mozilla.org/en-US/firefox/addon/free-download-manager-addon/

rem This Section Is For x64...........................

goto END

:END

echo.
echo Installation completed successfully

exit