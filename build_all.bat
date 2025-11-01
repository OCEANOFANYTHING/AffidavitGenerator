@echo off
REM ================================================
REM   Complete Build - EXE + Installer
REM ================================================
echo.
echo ================================================
echo   Building Complete Distribution Package
echo ================================================
echo.
echo This will:
echo 1. Build the portable executable
echo 2. Create the Windows installer
echo.
pause

REM Step 1: Build executable
echo.
echo ========================================
echo   STEP 1: Building Executable
echo ========================================
call build_exe.bat
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Failed to build executable!
    pause
    exit /b 1
)

REM Step 2: Build installer
echo.
echo ========================================
echo   STEP 2: Building Installer
echo ========================================
call build_installer.bat
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Failed to build installer!
    pause
    exit /b 1
)

REM Success
echo.
echo ================================================
echo   COMPLETE BUILD SUCCESSFUL!
echo ================================================
echo.
echo You now have two distribution options:
echo.
echo 1. PORTABLE VERSION:
echo    Location: dist\AffidavitGenerator.exe
echo    Usage: Copy the entire dist folder and run
echo.
echo 2. INSTALLER VERSION:
echo    Location: installer_output\AffidavitGenerator_Setup_v1.0.exe
echo    Usage: Share this installer file with users
echo.
echo ================================================
pause
