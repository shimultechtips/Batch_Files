@Echo Off
mode con: cols=40 lines=17
Title Created By Shimul Tech Tips Team & Color 30



::  Elevate script as admin and pass arguments and preventing loop
::  Thanks to @hearywarlot [ https://forums.mydigitallife.net/threads/.74332/ ] for the VBS method.
::  Thanks to @abbodi1406 for the powershell method and solving special characters issue in file path name.

set "batf_=%~f0"
set "batp_=%batf_:'=''%"

%_null% reg query HKU\S-1-5-19 && (
goto :_Passed
) || (
if defined _elev goto :_E_Admin
)

set "_vbsf=%temp%\admin.vbs"
set _PSarg="""%~f0""" -el

setlocal EnableDelayedExpansion
(
echo Set strArg=WScript.Arguments.Named
echo Set strRdlproc = CreateObject^("WScript.Shell"^).Exec^("rundll32 kernel32,Sleep"^)
echo With GetObject^("winmgmts:\\.\root\CIMV2:Win32_Process.Handle='" ^& strRdlproc.ProcessId ^& "'"^)
echo With GetObject^("winmgmts:\\.\root\CIMV2:Win32_Process.Handle='" ^& .ParentProcessId ^& "'"^)
echo If InStr ^(.CommandLine, WScript.ScriptName^) ^<^> 0 Then
echo strLine = Mid^(.CommandLine, InStr^(.CommandLine , "/File:"^) + Len^(strArg^("File"^)^) + 8^)
echo End If
echo End With
echo .Terminate
echo End With
echo CreateObject^("Shell.Application"^).ShellExecute "cmd.exe", "/c " ^& chr^(34^) ^& chr^(34^) ^& strArg^("File"^) ^& chr^(34^) ^& strLine ^& chr^(34^), "", "runas", 1
)>"!_vbsf!"

(%_null% cscript //NoLogo "!_vbsf!" /File:"!batf_!" -el) && (
del /f /q "!_vbsf!"
exit /b
) || (
del /f /q "!_vbsf!"
%_null% %_psc% "start cmd.exe -arg '/c \"!_PSarg:'=''!\"' -verb runas" && (
exit /b
) || (
goto :_E_Admin
)
)
exit /b

:_E_Admin
%ErrLine%
echo This script require administrator privileges.
echo To do so, right click on this script and select 'Run as administrator'.
goto MASend

:_Passed

bcdedit /set {current} safeboot minimal
bcdedit /set safeboot minimal

echo ------------------------------------
echo ----       ----Notes----        ----
echo After You Press Any Key Your PC Will
echo Restart In 3 Seconds. So Save/Close
echo Your Other Programs And Procced. And
echo If You Do Not Want To Restart Now Then
echo Without Pressing Any Key Close This.
echo ------------------------------------

pause

shutdown /r -t 3