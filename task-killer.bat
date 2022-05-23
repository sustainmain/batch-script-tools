@echo off
title Task Killer
cls

if "%1" == "" (
	set /p taskToKill="Enter the name of the task you want to kill: "
) else (
	set taskToKill="%1"
)
title Killing %taskToKill%

:LOOP
tasklist | find /c /i %taskToKill% | find "0">NUL
if %errorlevel% == 1 (
	taskkill /im %taskToKill% /f
) else (
	echo %taskToKill% not on tasklist. Trying again...
	timeout /t 3 /nobreak>NUL
	goto LOOP
)
timeout /t 1 /nobreak>NUL