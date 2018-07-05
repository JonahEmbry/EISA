@echo off
color a
cls
echo				What you like me to do?
echo.


set text= What would you like me to do

rem Making the temp file
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%text%" >> "temp%num%.vbs"
start temp%num%.vbs
pause
del temp%num%.vbs

echo.
echo.
echo.
echo -chrome
echo -reload
echo -exit
echo -search
echo.
set /p PROGRAM=:
goto %PROGRAM%
if time goto Time
echo.
echo.
echo.
pause
:chrome
call Chrome.bat
:reload
call Reload.bat
:exit
call Exit.bat
:search
call Search.bat
:Time
call time.bat