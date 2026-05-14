@echo off
REM Eaglercraft Server Startup Script for Windows

echo Starting Eaglercraft Server...
echo.

REM Navigate to server directory
cd /d "%~dp0..\server"

REM Check if Java is installed
java -version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Java is not installed!
    echo Please download and install Java from: https://www.java.com/en/download/
    pause
    exit /b 1
)

REM Check if server JAR exists
if not exist "eaglercraft-server.jar" (
    echo ERROR: eaglercraft-server.jar not found!
    echo Please download the server JAR and place it in the server folder.
    pause
    exit /b 1
)

REM Start the server with 2GB RAM allocation
echo Starting server with 2GB RAM...
java -Xmx2G -jar eaglercraft-server.jar nogui

pause
