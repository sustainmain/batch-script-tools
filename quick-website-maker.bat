@echo off
title Quick Website Maker
cls

:LOOP
set /p name="What should the website be named? "
set file="%cd%\websites\%name%.html"

echo ^<!DOCTYPE html^>>%file%
echo ^<html^>>>%file%
echo ^<head^>>>%file%
echo 	^<meta charset="UTF-8"^>>>%file%
echo 	^<title^>%name%^</title^>>>%file%
echo ^</head^>>>%file%
echo ^<body^>>>%file%
echo.>>%file%
echo ^</body^>>>%file%
echo ^</html^>>>%file%

start /w notepad %file%
start "" %file%
goto LOOP
