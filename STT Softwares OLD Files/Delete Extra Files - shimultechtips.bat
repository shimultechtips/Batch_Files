@Echo Off
mode con: cols=50 lines=20
title Extra Files Deletor - Shimul Tech Tips Team & Color 30

echo -------------------------------------------------
echo Please Recheck The Current Location Of This File.
echo    {{{   Then Type Y Or N And Press Enter   }}}
echo -------------------------------------------------

setlocal
:PROMPT
SET /P AREYOUSURE=Are You Sure To Delete Extra Files (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

del /Q "All Files\$ - Tools\MSHTA - shimultechtips.exe"
del /Q "All Files\$ - Tools\Pin Programs To The TaskBar - shimultechtips.exe"
del /Q "All Files\$ - Tools\SIPS - shimultechtips.hta"
del /Q "All Files\$ - Tools\SUPS - shimultechtips.hta"
del /Q "All Files\$ - Tools\Icons\SIPS - shimultechtips.ico"
del /Q "All Files\$ - Tools\Icons\SUPS - shimultechtips.ico"
del /Q "Install By Selection (SIPS) - shimultechtips.bat"
del /Q "Update By Selection (SUPS) - shimultechtips.bat"
del /Q "Delete Extra Files - shimultechtips.bat"


:END
endlocal