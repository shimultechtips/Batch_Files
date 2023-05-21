@Echo Off
mode con: cols=35 lines=10
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window...
%~d0
CD %~dp0

start "" "Spread32 - shimultechtips.exe" "Partition Calculator - shimultechtips.xlsx"
start diskmgmt.msc