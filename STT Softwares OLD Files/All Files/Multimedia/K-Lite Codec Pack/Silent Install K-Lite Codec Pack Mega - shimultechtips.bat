@echo OFF
mode con: cols=50 lines=12
title K-Lite Codec Pack Mega - Shimul Tech Tips Team & Color 30

@echo Please Wait...................................
@echo Installing: K-Lite Codec Pack Mega Silently...
@REM Changing working directory to location of installer:
@cd /D "%~dp0"
@REM Alternatively, you can specify the full paths to both .exe and .ini file
@"K-Lite Codec Pack Mega - shimultechtips.exe" /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /LOADINF="Unattended Settings - shimultechtips.ini"
@echo Done!
