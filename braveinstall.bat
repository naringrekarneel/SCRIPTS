@echo off
title Brave Browser Installer

echo ============================================
echo      Installing Brave Browser...
echo ============================================
echo.

:: Check if winget is available
where winget >nul 2>&1
if %errorlevel% neq 0 (
    echo Winget is not installed or not available.
    echo Please update Windows App Installer from the Microsoft Store.
    pause
    exit /b
)

:: Install Brave Browser
winget install --id Brave.Brave --exact --accept-package-agreements --accept-source-agreements

if %errorlevel% equ 0 (
    echo.
    echo Brave Browser installed successfully!
    echo Launching Brave...
    start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
) else (
    echo.
    echo Installation failed.
)

pause