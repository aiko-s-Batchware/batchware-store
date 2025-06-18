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
echo 0. Exit
echo 1. Install None
echo 2. Install None
echo 3. Install None
set /p choice=Choose an option:

if "%choice%"=="0" (
   	 exit
)
if "%choice%"=="1" (
   	 for /f "usebackq delims=" %%D in (`powershell -nologo -noprofile -command "[Environment]::GetFolderPath('MyDocuments')"`) do (
         set "docpath=%%D"
    )
         set "targetfolder=!docpath!\Batchware\Applications"
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
        echo Done! Application has been installed to: !output!
        pause
        start "" "!output!"
    ) else (
        echo.
        echo ERROR: Failed to download the file. Check your internet connection or the URL.
        pause
    )
if "%choice%"=="2" (
   	 set "url=https://yourserver.com/pcinfo.bat"
   	 set "output=apps\pcinfo.bat"
   	 powershell -Command "Invoke-WebRequest '%url%' -OutFile '%output%'"
   	 echo Done! File saved to apps\pcinfo.bat
   	 pause
   	 start "" "%output%"
)
if "%choice%"=="3" (
   	 set "url=https://yourserver.com/pcinfo.bat"
   	 set "output=apps\pcinfo.bat"
   	 powershell -Command "Invoke-WebRequest '%url%' -OutFile '%output%'"
   	 echo Done! File saved to apps\pcinfo.bat
   	 pause
   	 start "" "%output%"
)
