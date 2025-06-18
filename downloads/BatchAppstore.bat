@echo off
:Start
title Batch App Store
cls
echo ==== Batch App Store ====
echo.
echo What would you like to do?
echo 1. Download Batch Applications
echo 2. Exit
set /p option=Choose an option:

if "%choice%"=="1" (
	goto StoreMain
)
if "%option%"=="2" (
	exit
)

:StoreMain
title Batch App Store
cls
echo ==== Batch App Store ====
echo.
echo What would you like to do?
echo 1. Install Unavailable
echo 2. Exit
set /p choice=Choose an option:

if "%choice%"=="1" (
    set "url=https://yourserver.com/notepad.bat"
    set "output=apps\notepad.bat"
    powershell -Command "Invoke-WebRequest '%url%' -OutFile '%output%'"
    echo Done! File saved to apps\notepad.bat
    pause
    start "" "%output%"
)
if "%choice%"=="2" (
    set "url=https://yourserver.com/pcinfo.bat"
    set "output=apps\pcinfo.bat"
    powershell -Command "Invoke-WebRequest '%url%' -OutFile '%output%'"
    echo Done! File saved to apps\pcinfo.bat
    pause
    start "" "%output%"
)
if "%choice%"=="3" exit
