@echo off
REM ================================================
REM   Package Portable Version
REM ================================================
echo.
echo ================================================
echo   Packaging Portable Version
echo ================================================
echo.

REM Check if dist folder exists
if not exist "dist\AffidavitGenerator.exe" (
    echo ERROR: dist\AffidavitGenerator.exe not found!
    echo Please run build_exe.bat first.
    echo.
    pause
    exit /b 1
)

REM Create portable package folder
echo Creating portable package...
if exist "AffidavitGenerator_Portable_v1.0" rmdir /s /q "AffidavitGenerator_Portable_v1.0"
mkdir "AffidavitGenerator_Portable_v1.0"

REM Copy files
echo Copying files...
xcopy "dist\*" "AffidavitGenerator_Portable_v1.0\" /E /I /Y >nul

REM Create README for portable version
echo Creating portable README...
(
echo Affidavit Generator v1.0 - Portable Version
echo ============================================
echo.
echo Thank you for downloading Affidavit Generator!
echo.
echo QUICK START:
echo ------------
echo 1. Run AffidavitGenerator.exe
echo 2. Fill in the form
echo 3. Click "Generate Affidavits"
echo 4. Find your documents in the "output" folder
echo.
echo FEATURES:
echo ---------
echo - No installation needed
echo - Run from any location
echo - Perfect for USB drives
echo - All templates included
echo.
echo SYSTEM REQUIREMENTS:
echo -------------------
echo - Windows 7 or later
echo - 2 GB RAM minimum
echo - 100 MB disk space
echo.
echo FOLDER STRUCTURE:
echo ----------------
echo - AffidavitGenerator.exe : Main application
echo - affidavit/ : Document templates
echo - output/ : Generated documents (created on first use^)
echo - logo.ico, logo.png : Application icons
echo.
echo SUPPORT:
echo --------
echo Website: www.ndcompany.in
echo Made for: Bangali Oikya Manch
echo Repository: github.com/OCEANOFANYTHING/AffidavitGenerator
echo.
echo CREDITS:
echo --------
echo Developed by: N^&D Co. and Nakshatra Ranjan Saha
echo Made for: Bangali Oikya Manch
echo.
echo Version: 1.0
echo Release Date: November 2, 2025
echo.
echo (c^) 2025 N^&D Co. All rights reserved.
) > "AffidavitGenerator_Portable_v1.0\README.txt"

REM Create zip file (requires PowerShell)
echo.
echo Creating ZIP archive...
powershell -Command "Compress-Archive -Path 'AffidavitGenerator_Portable_v1.0\*' -DestinationPath 'AffidavitGenerator_Portable_v1.0.zip' -Force"

if %errorlevel% neq 0 (
    echo.
    echo ERROR: Failed to create ZIP file!
    pause
    exit /b 1
)

REM Cleanup
echo.
echo Cleaning up temporary files...
rmdir /s /q "AffidavitGenerator_Portable_v1.0"

echo.
echo ================================================
echo   PORTABLE VERSION PACKAGED!
echo ================================================
echo.
echo Portable package ready:
echo Location: AffidavitGenerator_Portable_v1.0.zip
echo Size: ~100 MB
echo.
echo Users can:
echo 1. Extract the ZIP file
echo 2. Run AffidavitGenerator.exe
echo 3. Start generating documents
echo.
echo No installation required!
echo.
pause
