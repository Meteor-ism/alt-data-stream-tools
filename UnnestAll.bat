@echo off
set /p "bf=Base File>"
if exist %bf% goto a
exit
:a
expand %bf%:nested.bat nested.bat
call nested
del /f /q nested.bat
rename %bf% %bf%.bak
type %bf%.bak>%bf%
del /f /q %bf%.bak
