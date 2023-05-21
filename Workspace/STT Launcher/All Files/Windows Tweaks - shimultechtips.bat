@Echo Off
mode con: cols=35 lines=07
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window....
echo ............................

%~d0
CD %~dp0

rem start control timedate.cpl

rem start control date/time

rem start control /name Microsoft.DateAndTime

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /v {20D04FE0-3AEA-1069-A2D8-08002B30309D} /t REG_DWORD /d 0 /f

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /v {20D04FE0-3AEA-1069-A2D8-08002B30309D} /t REG_DWORD /d 0 /f

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /v {5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0} /t REG_DWORD /d 0 /f

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /v {5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0} /t REG_DWORD /d 0 /f

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /v {59031a47-3f72-44a7-89c5-5595fe6b30ee} /t REG_DWORD /d 0 /f

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /v {59031a47-3f72-44a7-89c5-5595fe6b30ee} /t REG_DWORD /d 0 /f

Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d "1" /f

tzutil /s "Bangladesh Standard Time_dstoff"

Reg.exe add "HKCU\Control Panel\International" /v "sShortDate" /t REG_SZ /d "dd-MMM-yy" /f

Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "1" /f

Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d "1" /f

Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarMn" /t REG_DWORD /d "0" /f

Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarDa" /t REG_DWORD /d "0" /f

"C:\Windows\Resources\Themes\aero.theme"
timeout 1 /nobreak
taskkill /f /IM "SystemSettings.exe"

DEL /F /S /Q /A "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\*"
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Taskband /F
"Restart Explorer - shimultechtips.exe"

start C:\Windows\System32\UserAccountControlSettings.exe

start rundll32.exe shell32.dll,Control_RunDLL timedate.cpl,,0