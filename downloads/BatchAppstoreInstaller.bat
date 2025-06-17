@echo off
setlocal enabledelayedexpansion
title Batchware Store Installer
cls
echo ==== Batchware Store Installer ====
echo.
echo What would you like to do?
echo 1. Install
echo 2. Exit
set /p installationoption=Choose an option:

if "%installationoption%"=="1" (
    :: Get real path to the user's Documents folder (language-safe)
    for /f "usebackq delims=" %%D in (`powershell -nologo -noprofile -command "[Environment]::GetFolderPath('MyDocuments')"`) do (
        set "docpath=%%D"
    )

    set "targetfolder=!docpath!\Batchware"
    set "url=https://raw.githubusercontent.com/aiko-s-Batchware/batchware-store/main/downloads/BatchAppstore.bat"
    set "output=!targetfolder!\BatchAppstore.bat"

    echo.
    echo Creating install directory...
    if not exist "!targetfolder!" (
        mkdir "!targetfolder!"
    )

    echo.
    echo Downloading Batchware Store...
    powershell -nologo -noprofile -Command "Invoke-WebRequest -Uri '!url!' -OutFile '!output!'"

    if exist "!output!" (
        echo.
        echo Done! Batchware Store has been installed to: !output!
        pause
        start "" "!output!"
    ) else (
        echo.
        echo ERROR: Failed to download the file. Check your internet connection or the URL.
        pause
    )
    exit
)

if "%installationoption%"=="2" (
    exit
)
