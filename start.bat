@echo off
echo ===================================
echo   Demonmade Flipbook - Starting...
echo ===================================
echo.

:: Check if Node.js is installed
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js not found!
    echo Please install Node.js from: https://nodejs.org
    pause
    exit /b 1
)

echo Starting local server on http://localhost:8080
echo Press Ctrl+C to stop the server.
echo.

:: Open browser after 2 seconds
start "" /b cmd /c "timeout /t 2 >nul && start http://localhost:8080"

:: Start server
npx --yes serve -p 8080 .

pause
