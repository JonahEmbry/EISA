@echo off 
color a

set text= Please enter in your search criteria

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


cls
set /p SC= Search criteria: 
start "" /b "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" "http://www.google.com/search?q=%SC%" 

set text= Searching now

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

exit
