@echo off
set /p "bf=Base File>"
if exist %bf% goto a
exit
:a
set /p "filename=File to open>"
expand %bf%:%filename% %filename%
if not exist %filename% goto c
del /f /q %filename%
:b
notepad %bf%:%filename%
exit
:c
echo.>%filename%
type %filename%>%bf%:%filename%
del /f /q %filename%
echo expand %bf%:%filename% %filename%>>%bf%:nested.bat
notepad %bf%:%filename%
