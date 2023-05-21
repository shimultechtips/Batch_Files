@Echo Off
mode con: cols=100 lines=25
Title Created By Shimul Tech Tips Team & Color 30
echo Do Not Close This Window....


for %%I in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist "%%I:\\Workspace\" set setupdrv=%%I
if defined setupdrv (

xcopy /Y "%setupdrv%:\STT Softwares" "D:\STT Softwares" /E /H /C /I

explorer "D:\STT Softwares"

) else (

echo Reinsert USB And Run This File Once Again.

pause
)