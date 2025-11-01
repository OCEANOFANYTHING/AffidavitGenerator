@echo off
echo.
echo ================================================
echo   Affidavit Generator - N^&D Co.
echo ================================================
echo.
echo Starting application...
echo.

REM Check if virtual environment exists
if not exist ".env\" (
    echo Virtual environment not found. Creating one...
    python -m venv .env
    echo.
    echo Installing dependencies...
    .env\Scripts\python.exe -m pip install -r requirements.txt
    echo.
)

REM Run the application
.env\Scripts\python.exe app.py

echo.
echo Application closed.
pause
