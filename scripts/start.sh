#!/bin/bash
# Eaglercraft Server Startup Script for Mac/Linux

echo "Starting Eaglercraft Server..."
echo ""

# Navigate to server directory
cd "$(dirname "$0")/../server"

# Check if Java is installed
if ! command -v java &> /dev/null; then
    echo "ERROR: Java is not installed!"
    echo "Please download and install Java from: https://www.java.com/en/download/"
    echo "Or use: sudo apt install openjdk-11-jre-headless"
    exit 1
fi

# Check if server JAR exists
if [ ! -f "eaglercraft-server.jar" ]; then
    echo "ERROR: eaglercraft-server.jar not found!"
    echo "Please download the server JAR and place it in the server folder."
    exit 1
fi

# Start the server with 2GB RAM allocation
echo "Starting server with 2GB RAM..."
java -Xmx2G -jar eaglercraft-server.jar nogui
