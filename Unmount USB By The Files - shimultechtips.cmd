@Echo Off
mode con: cols=50 lines=10
Title Created By Shimul Sheikh & Color 30

for %%I in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist "%%I:\\e2b.ico" set setupdrv=%%I
if defined setupdrv (

echo Removing Drive Contains e2b.ico
mountvol "%setupdrv%:" /p

) else (

echo Reinsert USB And Run This File Once Again.

pause
)

for %%I in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist "%%I:\\agfm.ico" set setupdrv=%%I
if defined setupdrv (

echo Removing Drive Contains agfm.ico
mountvol "%setupdrv%:" /p

) else (

echo Reinsert USB And Run This File Once Again.

pause
)


for %%I in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist "%%I:\\Workspace" set setupdrv=%%I
if defined setupdrv (

echo Removing Drive Contains Workspace.....
mountvol "%setupdrv%:" /p

) else (

echo Reinsert USB And Run This File Once Again.

pause
)

for %%I in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do if exist "%%I:\\PTN2.txt" set setupdrv=%%I
if defined setupdrv (

echo Removing Drive Contains PTN2.txt
mountvol "%setupdrv%:" /p

) else (

echo Reinsert USB And Run This File Once Again.

pause
)
