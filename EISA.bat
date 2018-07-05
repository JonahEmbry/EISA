@echo off
color a
echo				Goodmorning. My name is Eisa.


set text= Goodmoring. My name is Ice ah

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
call Security.bat



