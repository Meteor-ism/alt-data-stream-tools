@echo off
set /p "bf=Base File>"
if exist %bf% goto a
exit
:a
set /p "filename=File to nest>"
if exist %filename% goto b
exit
:b
type %filename%>%bf%:%filename%
del /f /q %filename%
echo expand %bf%:%filename% %filename%>>%bf%:nested.bat
goto a
