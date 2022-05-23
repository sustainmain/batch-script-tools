@echo off
title Account Timeout
cls
set /p timeout="How many seconds until shutdown? "
shutdown /s /t %timeout% /c "This computer has been set to shutdown after %timeout% second(s)."
pause