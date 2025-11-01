@echo off
echo ================================================
echo   Building Affidavit Generator Executable
echo ================================================
echo.
echo This will create a portable .exe file...
echo.

REM Activate virtual environment
call .env\Scripts\activate.bat

echo Step 1: Cleaning previous builds...
if exist "dist" rmdir /s /q dist
if exist "build" rmdir /s /q build
if exist "*.spec" del /q *.spec

echo.
echo Step 2: Building executable with PyInstaller...
echo This may take a few minutes...
echo.

pyinstaller --name="AffidavitGenerator" ^
    --onefile ^
    --windowed ^
    --icon=logo.ico ^
    --add-data "affidavit;affidavit" ^
    --add-data "logo.ico;." ^
    --add-data "logo.png;." ^
    --hidden-import=tkinter ^
    --hidden-import=babel.numbers ^
    --collect-all=tkcalendar ^
    --collect-all=customtkinter ^
    app.py

echo.
echo Step 3: Copying affidavit templates to dist folder...
if exist "dist\affidavit" rmdir /s /q "dist\affidavit"
xcopy /E /I /Y "affidavit" "dist\affidavit"

echo.
echo Step 4: Copying logo files to dist folder...
copy /Y "logo.ico" "dist\logo.ico"
copy /Y "logo.png" "dist\logo.png"

echo.
echo Step 5: Creating output folder...
if not exist "dist\output" mkdir "dist\output"

echo.
echo ================================================
echo   BUILD COMPLETE!
echo ================================================
echo.
echo Your portable executable is ready:
echo Location: dist\AffidavitGenerator.exe
echo.
echo To use:
echo 1. Copy the entire 'dist' folder to any location
echo 2. Double-click AffidavitGenerator.exe to run
echo.
echo The 'affidavit' folder with templates is included
echo Generated documents will be saved in 'output' folder
echo.
pause
