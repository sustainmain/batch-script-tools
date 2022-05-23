@echo off
title Restart Explorer
cls

echo Restarting explorer.exe in less than 3 seconds.
echo Close this window to cancel.
timeout /t 3 /nobreak>NUL
taskkill /im "explorer.exe" /f
start "" "explorer.exe"