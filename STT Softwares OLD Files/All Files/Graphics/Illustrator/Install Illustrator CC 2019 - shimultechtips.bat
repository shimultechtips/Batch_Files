@Echo Off
mode con: cols=50 lines=20
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window.

for %%I in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist "%%I:\\Adobe Illustrator CC 2019 v23.0.5.634 (x64) Pre-Activated\Set-up.exe" set setupdrv=%%I

if defined setupdrv (

echo Found Drive %setupdrv%

start "" "%setupdrv%:\Adobe Illustrator CC 2019 v23.0.5.634 (x64) Pre-Activated\Set-up.exe" 

) else (
echo No Installation Folder Found!
echo Remount The ISO File And Run This File Once Again. 
echo.
pause
)