@echo off
setlocal
for /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
    set mydate=%%d-%%b-%%c
)
for /f "tokens=1-2 delims=: " %%a in ('time /t') do (
    set mytime=%%a-%%b
)
set mytimestamp=%mydate%_%mytime%
adb logcat -d > logcat_%mytimestamp%.txt
echo Logs saved as logcat_%mytimestamp%.txt
