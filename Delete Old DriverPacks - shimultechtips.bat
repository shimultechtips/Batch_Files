@Echo Off
mode con: cols=50 lines=07
Title Modified By Shimul Tech Tips Team & Color 30
echo Deleteing Old DriverPacks....
echo Do Not Close This Window.....

setlocal enableextensions

for %%a in ("%~dp0drivers\DP_*.7z") do call :ProcessDP "%%~na"
goto :eof

:ProcessDP
call :GetPrefSuff %1
if "%Pref%"=="" goto :eof
if "%Suff%"=="" goto :eof
for %%b in ("%~dp0drivers\%Pref%*.7z") do call :DelIfOld "%%~nb" "%Pref%" "%Suff%"
goto :eof

:DelIfOld
call :GetPrefSuff %1
if "%Pref%"=="" goto :eof
if "%Suff%"=="" goto :eof
if %~3 LEQ %Suff% goto :eof
echo Deleting old DP - "%Pref%%Suff%.7z"
del /f /q "%~dp0drivers\%Pref%%Suff%.7z"
goto :eof

:GetPrefSuff
set Suff=
set Pref=%~1
call :PrefixRec
goto :eof

:PrefixRec
set LastCh=%Pref:~-1%
if "%LastCh%"=="" goto :eof
if "%LastCh%"=="_" goto :eof
set Suff=%LastCh%%Suff%
set Pref=%Pref:~0,-1%
call :PrefixRec
goto :eof
