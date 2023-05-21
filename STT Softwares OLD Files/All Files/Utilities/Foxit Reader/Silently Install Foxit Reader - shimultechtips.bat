@Echo Off
mode con: cols=50 lines=07
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window..........
echo Installing Foxit Reader...........
echo ..................................

%~d0
CD %~dp0


"Foxit Reader - shimultechtips.exe" /silent
echo Installing Foxit Reader Plugins...
"Foxit Reader Plugins\FileOpen - shimultechtips.msi"
"Foxit Reader PluginsFirefoxReader - shimultechtips.msi"
"Foxit Reader Plugins\Docusign - shimultechtips.msi"
"Foxit Reader Plugins\U3DBrowserReader - shimultechtips.msi"

