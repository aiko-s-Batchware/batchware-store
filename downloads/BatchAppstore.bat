@echo off
:Start
title Batch App Store
cls
echo ==== Batch App Store ====
echo.
echo What would you like to do?
echo 1. Download Batch Applications
echo 2. Exit
echo 3. Update (Not Working)
set /p option=Choose an option:

if "%choice%"=="1" (
    set "url=https://yourserver.com/notepad.bat"
    set "output=apps\notepad.bat"
    powershell -Command "Invoke-WebRequest '%url%' -OutFile '%output%'"
    echo Done! File saved to apps\notepad.bat
    pause
    start "" "%output%"
	exit
)
if "%choice%"=="2" (
    set "url=https://yourserver.com/notepad.bat"
    set "output=apps\notepad.bat"
    powershell -Command "Invoke-WebRequest '%url%' -OutFile '%output%'"
    echo Done! File saved to apps\notepad.bat
    pause
    start "" "%output%"
	exit
)
if "%choice%"=="3" (
    set "url=https://yourserver.com/notepad.bat"
    set "output=apps\notepad.bat"
    powershell -Command "Invoke-WebRequest '%url%' -OutFile '%output%'"
    echo Done! File saved to apps\notepad.bat
    pause
    start "" "%output%"
	exit
)

:Downloads
title Batch App Store
cls
echo ==== Batch App Store ====
echo.
echo What would you like to do?
echo 1. Download Batch Applications
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
