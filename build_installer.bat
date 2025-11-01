@echo off
REM ================================================
REM   Build Installer for Affidavit Generator
REM ================================================
echo.
echo ================================================
echo   Building Affidavit Generator Installer
echo ================================================
echo.
echo This will create a Windows installer (.exe)...
echo.

REM Step 1: Check if Inno Setup is installed
echo Step 1: Checking for Inno Setup...
if exist "C:\Program Files (x86)\Inno Setup 6\ISCC.exe" (
    set ISCC="C:\Program Files (x86)\Inno Setup 6\ISCC.exe"
    echo Found Inno Setup 6
) else if exist "C:\Program Files\Inno Setup 6\ISCC.exe" (
    set ISCC="C:\Program Files\Inno Setup 6\ISCC.exe"
    echo Found Inno Setup 6
) else if exist "C:\Program Files (x86)\Inno Setup 5\ISCC.exe" (
    set ISCC="C:\Program Files (x86)\Inno Setup 5\ISCC.exe"
    echo Found Inno Setup 5
) else (
    echo.
    echo ERROR: Inno Setup not found!
    echo.
    echo Please download and install Inno Setup from:
    echo https://jrsoftware.org/isdl.php
    echo.
    echo After installation, run this script again.
    echo.
    pause
    exit /b 1
)

REM Step 2: Check if dist folder exists
echo.
echo Step 2: Checking if executable is built...
if not exist "dist\AffidavitGenerator.exe" (
    echo.
    echo ERROR: dist\AffidavitGenerator.exe not found!
    echo Please run build_exe.bat first to build the executable.
    echo.
    pause
    exit /b 1
)
echo Found executable

REM Step 3: Create output directory
echo.
echo Step 3: Creating installer output directory...
if not exist "installer_output" mkdir installer_output

REM Step 4: Build installer
echo.
echo Step 4: Building installer with Inno Setup...
echo This may take a minute...
echo.
%ISCC% "installer.iss"

if %errorlevel% neq 0 (
    echo.
    echo ERROR: Failed to build installer!
    echo.
    pause
    exit /b 1
)

REM Step 5: Success
echo.
echo ================================================
echo   INSTALLER BUILD COMPLETE!
echo ================================================
echo.
echo Your installer is ready:
echo Location: installer_output\AffidavitGenerator_Setup_v1.0.exe
echo.
echo To use:
echo 1. Share the installer file with users
echo 2. Run it to install the application
echo 3. It will create Start Menu and Desktop shortcuts
echo 4. Users can uninstall from Windows Settings
echo.
pause
