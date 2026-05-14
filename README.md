# Eaglercraft Server Setup

This repository contains everything you need to run an Eaglercraft server.

## What is Eaglercraft?

Eaglercraft is a web-based implementation of Minecraft that runs in your browser. It allows you to play Minecraft Classic (versions 1.5.2 or 1.8.8) without needing a launcher or official account.

## Quick Start Guide

### Prerequisites

- **Java**: Download and install from [java.com](https://www.java.com/en/download/)
- **Computer with decent specs**: For a small server (5-10 players), a basic PC works fine
- **Internet connection**: For hosting publicly

### Step 1: Download the Server Files

1. **Download Eaglercraft Server JAR**
   - Download the server JAR file from: [EaglercraftX Server Releases](https://github.com/LAC1412/eaglercraftX-1.8.8-source/releases)
   - Look for files like: `eaglercraft-server.jar` or `eaglercraftx_server.jar`
   - Save it in the `server/` folder of this repository

2. **Verify Java is installed**
   ```bash
   java -version
   ```
   You should see output like: `java version "1.8.0_x" or higher`

### Step 2: Configure Your Server

1. **Copy the server properties template**
   ```bash
   cp server/server.properties.example server/server.properties
   ```

2. **Edit `server/server.properties` with a text editor** and configure:
   - `server-port=25565` (change if needed)
   - `max-players=20` (set player limit)
   - `gamemode=0` (0=Survival, 1=Creative, 2=Adventure)
   - `difficulty=1` (0=Peaceful, 1=Easy, 2=Normal, 3=Hard)
   - `online-mode=false` (cracked server, leave as false)

### Step 3: Launch the Server

**On Windows:**
```bash
cd server
java -jar eaglercraft-server.jar nogui
```

**On Mac/Linux:**
```bash
cd server
java -jar eaglercraft-server.jar nogui
```

The server will start and generate necessary files. You should see:
```
[INFO] Starting Minecraft server version 1.8.8
[INFO] Loading properties
[INFO] Done
```

### Step 4: Connect to Your Server

**From Your Local Network:**
1. Find your computer's local IP:
   - **Windows**: Open Command Prompt, type `ipconfig`, look for "IPv4 Address" (usually 192.168.x.x)
   - **Mac/Linux**: Open Terminal, type `ifconfig`, look for "inet" (usually 192.168.x.x)

2. Open the Eaglercraft web client: [Play Eaglercraft](https://eaglercraft.com/)
3. Enter your server address: `192.168.x.x:25565` (replace with your IP)
4. Click "Join Server"
5. Enter any username and start playing!

**For Friends Over the Internet:**
- You'll need to use **port forwarding** (see Port Forwarding Guide below)
- Your public IP address (you can find it at [whatismyipaddress.com](https://whatismyipaddress.com/))
- Friends will connect using: `YOUR_PUBLIC_IP:25565`

## Port Forwarding Guide (For Internet Access)

### What is Port Forwarding?
Port forwarding directs traffic from the internet to your computer's local network.

### How to Set It Up:

1. **Find your router's IP address**
   - Usually printed on your router or try `192.168.1.1` or `192.168.0.1`
   - Log in with your router's username/password

2. **Find Port Forwarding settings** in your router
   - Look for "Port Forwarding" or "Virtual Server" section

3. **Create a port forwarding rule:**
   - External Port: `25565`
   - Internal Port: `25565`
   - Internal IP: Your computer's local IP (e.g., `192.168.1.100`)
   - Protocol: `TCP`
   - Save and apply

4. **Test it**
   - Visit [canyouseeme.org](https://canyouseeme.org/)
   - Enter port `25565`
   - It should show "Success"

5. **Share your IP with friends**
   - Get your public IP from [whatismyipaddress.com](https://whatismyipaddress.com/)
   - Friends connect using: `YOUR_PUBLIC_IP:25565`

## Server Commands

When your server is running, you can type commands in the console:

```bash
/op <username>              # Make someone an operator/admin
/deop <username>            # Remove operator status
/ban <username>             # Ban a player
/unban <username>           # Unban a player
/kick <username>            # Kick a player
/stop                       # Stop the server
/say <message>              # Send a message to all players
/give <username> <item>     # Give item to player
/gamemode <mode> <username> # Change gamemode (0=Survival, 1=Creative)
```

## Troubleshooting

### "Java is not installed"
- Download from [java.com](https://www.java.com/en/download/)

### "Address already in use"
- Another program is using port 25565
- Change `server-port` in `server.properties` to a different number (e.g., `25566`)
- Restart the server

### "Can't connect locally"
- Make sure the server is running (check console output)
- Use correct IP address (run `ipconfig` or `ifconfig`)
- Check Windows/Mac firewall isn't blocking Java

### "Friends can't connect from internet"
- Make sure port forwarding is set up correctly
- Test with [canyouseeme.org](https://canyouseeme.org/)
- Check your router settings
- Your ISP may block certain ports (try port 25566 instead)

### Server crashes on startup
- Make sure Java version is 8 or higher: `java -version`
- Update Java from [java.com](https://www.java.com/en/download/)

## Useful Resources

- **Eaglercraft Client**: https://eaglercraft.com/
- **Eaglercraft GitHub**: https://github.com/LAC1412/eaglercraftX-1.8.8-source
- **Java Download**: https://www.java.com/en/download/
- **Port Forwarding Help**: https://portforward.com/

## File Structure

```
mc-server/
├── README.md                    # This file
├── SETUP_GUIDE.md              # Detailed setup instructions
├── server/
│   ├── eaglercraft-server.jar   # Download this file
│   ├── server.properties        # Server configuration (auto-generated)
│   ├── world/                   # World data folder (auto-generated)
│   └── banned-players.txt       # Banned players list (auto-generated)
└── scripts/
    ├── start.sh                 # Mac/Linux startup script
    └── start.bat                # Windows startup script
```

## Getting Help

If you run into issues:
1. Check the **Troubleshooting** section above
2. Check server console output for error messages
3. Visit the [Eaglercraft Community](https://discord.gg/eaglercraft) for support

## License

Eaglercraft is an unofficial fan project. This server setup guide is provided as-is for educational purposes.
