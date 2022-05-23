@echo off
title Command Prompt
cls

:LOOP
set /p command="%cd%>"
%command%
echo.
goto LOOP