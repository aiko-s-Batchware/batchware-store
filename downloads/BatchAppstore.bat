@echo off
setlocal enabledelayedexpansion

:Start
title Batch App Store
cls
echo ==== Batch App Store ====
echo.
echo What would you like to do?
echo 1. Download Batch Applications
echo 2. Exit
set /p option=Choose an option: 

if "%option%"=="1" (
    goto StoreMain
)
if "%option%"=="2" (
    exit
)

goto Start

:StoreMain
title Batch App Store
cls
echo ==== Batch App Store ====
echo.
echo What would you like to do?
echo 0. Exit
echo 1. Install Example
echo 2. Install PC Info Tool
echo 3. Install Another App
set /p choice=Choose an option: 

if "%choice%"=="0" (
    exit
)

rem === Create install directory in Documents ===
for /f "usebackq delims=" %%D in (`powershell -nologo -noprofile -command "[Environment]::GetFolderPath('MyDocuments')"`) do (
    set "docpath=%%D"
)

set "targetfolder=!docpath!\Batchware"
if not exist "!targetfolder!" (
    mkdir "!targetfolder!"
)

rem === Handle choices ===

if "%choice%"=="1" (
    set "url=https://raw.githubusercontent.com/aiko-s-Batchware/batchware-store/main/downloads/BatchAppstore.bat"
    set "output=!targetfolder!\BatchAppstore.bat"
)

if "%choice%"=="2" (
    set "url=https://yourserver.com/pcinfo.bat"
    set "output=!targetfolder!\pcinfo.bat"
)

if "%choice%"=="3" (
    set "url=https://yourserver.com/anotherapp.bat"
    set "output=!targetfolder!\anotherapp.bat"
)

if defined url (
    echo.
    echo Downloading app...
    powershell -nologo -noprofile -Command "Invoke-WebRequest -Uri '!url!' -OutFile '!output!'"

    if exist "!output!" (
        echo.
        echo Done! App has been saved to: !output!
        pause
        start "" "!output!"
    ) else (
        echo.
        echo ERROR: Failed to download the file. Check your internet connection or the URL.
        pause
    )
)

goto StoreMain
