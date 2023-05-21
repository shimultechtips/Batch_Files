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

echo Installing Photoshop CC 2015.
"Photoshop CC 15 - shimultechtips.exe"
echo After Finishing Photoshop CC 15 Installation.
pause
"Photoshop Activator - shimultechtips.exe"

:patch
SETLOCAL ENABLEEXTENSIONS
SET /A MBT=1024*1024-1
SET /A MBT1=MBT/10

:phys
for /f "tokens=2 delims==" %%A in ('wmic computersystem get TotalPhysicalMemory /VALUE') DO CALL :phystot %%A
GOTO :slot

:phystot
  SET MEMPHY=%1
  SET/A MEMPHYMB=%MEMPHY:~0,-1%/MBT1
GOTO :eof

:slot
for /f "tokens=2 delims==" %%A in ('wmic memorychip get Capacity /VALUE') DO CALL :slotot %%A
GOTO :rport

:slotot
  SET MEMSLO=%1
  SET/A MEMSLOMB=%MEMSLO:~0,-1%/MBT1
  SET/A MEMTOTIN=MEMTOTIN+MEMSLOMB/1024
GOTO :eof

:rport
echo. 
echo.Here to you the amount of your Installed / Available RAM.
ping -n 2 127.0.0.1 >NUL

echo.
echo. =====================================
echo.   O.S. Available RAM is :  %MEMPHYMB% MB.
echo. =====================================
echo.
echo. =====================================
echo.   REAL Installed RAM is :  %MEMTOTIN% GB.
echo. =====================================
echo.

if "%MEMTOTIN%" == "4" echo  4 GB Ram Detected & "Photoshop CC 15 4GB Ram Patch - shimultechtips.exe"
if "%MEMTOTIN%" == "3.5" echo  3.5 GB Ram Detected & "Photoshop CC 15 4GB Ram Patch - shimultechtips.exe"
if "%MEMTOTIN%" == "3" echo  3 GB Ram Detected & "Photoshop CC 15 4GB Ram Patch - shimultechtips.exe"
if "%MEMTOTIN%" == "2.5" echo  2.5 GB Ram Detected & "Photoshop CC 15 4GB Ram Patch - shimultechtips.exe"
if "%MEMTOTIN%" == "2" echo  2 GB Ram Detected & "Photoshop CC 15 4GB Ram Patch - shimultechtips.exe"
if "%MEMTOTIN%" == "1.5" echo  1.5 GB Ram Detected & "Photoshop CC 15 4GB Ram Patch - shimultechtips.exe"


rem This Section Is For x64...........................

goto END

:END

echo.
echo Installation completed successfully

exit