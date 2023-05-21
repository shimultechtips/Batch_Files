@Echo Off
mode con: cols=50 lines=10
Title Created By Shimul Tech Tips Team & Color 30
echo -------------------------------

%~d0
CD %~dp0


Echo Please Wait....................
Echo Installing ShareX..............

ShareX.exe /VERYSILENT /NORESTART /NORUN
xcopy /Y ffmpeg.exe %userprofile%\Documents\ShareX\Tools