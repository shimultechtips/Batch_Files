@Echo Off
mode con: cols=50 lines=07
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window....

rem start control timedate.cpl

rem start control date/time

rem start control /name Microsoft.DateAndTime

start rundll32.exe shell32.dll,Control_RunDLL timedate.cpl,,0
exit