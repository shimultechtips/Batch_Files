@Echo Off
mode con: cols=50 lines=20
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window.

for %%I in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist "%%I:\\Adobe Photoshop CC 2019 v20.0.10.120 Pre-Cracked\Set-up.exe" set setupdrv=%%I

if defined setupdrv (

echo Found Drive %setupdrv%

start "" "%setupdrv%:\Adobe Photoshop CC 2019 v20.0.10.120 Pre-Cracked\Set-up.exe" 

) else (
echo No Installation Folder Found!
echo Remount The ISO File And Run This File Once Again. 
echo.
pause
)