# Complete Eaglercraft Server Setup Guide

## Prerequisites Checklist

- [ ] Java 8 or higher installed
- [ ] At least 2GB RAM available
- [ ] Stable internet connection
- [ ] Administrator access to your computer
- [ ] Router access (for port forwarding, if hosting publicly)

## Step-by-Step Installation

### Step 1: Install Java

**Windows:**
1. Go to [java.com](https://www.java.com/en/download/)
2. Click "Download Java Now"
3. Run the installer
4. Follow the installation wizard
5. Verify installation: Open Command Prompt and type `java -version`

**Mac:**
1. Go to [java.com](https://www.java.com/en/download/)
2. Click "Download Java Now"
3. Run the installer
4. Follow the installation wizard
5. Verify installation: Open Terminal and type `java -version`

**Linux:**
```bash
sudo apt update
sudo apt install openjdk-11-jre-headless
java -version
```

### Step 2: Download Server Files

**Option A: Clone This Repository**
```bash
git clone https://github.com/dreams5710/mc-server.git
cd mc-server
```

**Option B: Download as ZIP**
1. Go to [https://github.com/dreams5710/mc-server](https://github.com/dreams5710/mc-server)
2. Click "Code" → "Download ZIP"
3. Extract the ZIP file
4. Open the extracted folder

### Step 3: Download Eaglercraft Server JAR

**Recommended Source:**
https://github.com/LAC1412/eaglercraftX-1.8.8-source/releases

**Steps:**
1. Go to the link above
2. Look for the latest release
3. Download `eaglercraft-server.jar` or similar
4. Save it in the `server/` folder of this repository

**After downloading:**
```bash
ls server/
# You should see: eaglercraft-server.jar
```

### Step 4: Configure the Server

**Windows:**
1. Open `server/server.properties` with Notepad
2. Make these changes:
   ```properties
   server-port=25565
   max-players=20
   gamemode=0
   difficulty=1
   online-mode=false
   motd=Welcome to Eaglercraft!
   ```
3. Save the file

**Mac/Linux:**
```bash
cd server
cat > server.properties << 'EOF'
server-port=25565
max-players=20
gamemode=0
difficulty=1
online-mode=false
motd=Welcome to Eaglercraft!
EOF
```

### Step 5: Run the Server

**Windows:**
1. Open Command Prompt
2. Navigate to your server folder:
   ```bash
   cd path\to\mc-server\server
   ```
3. Start the server:
   ```bash
   java -jar eaglercraft-server.jar nogui
   ```

**Mac/Linux:**
```bash
cd path/to/mc-server/server
java -jar eaglercraft-server.jar nogui
```

**Expected Output:**
```
[INFO] Starting Minecraft server version 1.8.8
[INFO] Loading properties
[INFO] Default game type: SURVIVAL
[INFO] Generating keypair
[INFO] Starting Minecraft server on *:25565
[INFO] Done (1.234s)! For help, type "help" or "?"
```

### Step 6: Connect to Your Server

**Finding Your IP Address:**

**Windows:**
1. Open Command Prompt
2. Type: `ipconfig`
3. Look for "IPv4 Address" under your network adapter
4. Write down the address (e.g., `192.168.1.100`)

**Mac/Linux:**
1. Open Terminal
2. Type: `ifconfig`
3. Look for "inet" address
4. Write down the address (e.g., `192.168.1.100`)

**Connect to Server:**
1. Open [https://eaglercraft.com/](https://eaglercraft.com/) in your browser
2. Enter your server address: `YOUR_IP:25565`
   - Example: `192.168.1.100:25565`
3. Click "Join Server"
4. Enter any username (no password needed)
5. Click "Play"

## Advanced Configuration

### Common server.properties Settings

```properties
# Server port
server-port=25565

# Maximum players
max-players=20

# Gamemode: 0=Survival, 1=Creative, 2=Adventure
gamemode=0

# Difficulty: 0=Peaceful, 1=Easy, 2=Normal, 3=Hard
difficulty=1

# Server message of the day
motd=Welcome to my Eaglercraft server!

# Cracked server (must be false for most Eaglercraft servers)
online-mode=false

# PVP enabled
pvp=true

# Spawn protection (how many blocks from spawn point are protected)
spawn-protection=16

# View distance
view-distance=10
```

### Enable Public Access (Port Forwarding)

**Important:** This allows friends from the internet to join.

1. **Access Your Router:**
   - Open your browser
   - Go to `192.168.1.1` or `192.168.0.1`
   - Log in (check router label for username/password)

2. **Find Port Forwarding Settings:**
   - Look for "Port Forwarding" or "Virtual Server"
   - It's usually under "Advanced" or "Network" settings

3. **Create Port Forwarding Rule:**
   - External Port: `25565`
   - Internal Port: `25565`
   - Internal IP: Your computer's local IP (e.g., `192.168.1.100`)
   - Protocol: `TCP`
   - Click Save/Apply

4. **Find Your Public IP:**
   - Visit [whatismyipaddress.com](https://whatismyipaddress.com/)
   - Copy your public IPv4 address
   - This is what you share with friends: `YOUR_PUBLIC_IP:25565`

5. **Test It:**
   - Visit [canyouseeme.org](https://canyouseeme.org/)
   - Enter port: `25565`
   - Should say "Success"

## Server Administration

### Common Commands

Type these in the server console:

```bash
# Player Management
/op username                      # Make admin
/deop username                    # Remove admin
/kick username                    # Kick player
/ban username                     # Ban player
/pardon username                  # Unban player

# Server Control
/stop                             # Stop server
/save-all                         # Save world
/reload                           # Reload config

# Information
/list                             # List online players
/help                             # Show help
/say Hello everyone!              # Broadcast message

# Gameplay
/gamemode 0 username              # Set survival mode
/gamemode 1 username              # Set creative mode
/tp username x y z                # Teleport player
/give username diamond 64         # Give item
```

## Troubleshooting

### Problem: "Java not found"
**Solution:**
- Install Java from [java.com](https://www.java.com/en/download/)
- Restart your terminal after installation
- Verify with: `java -version`

### Problem: "Address already in use"
**Solution:**
- Close other programs using port 25565
- OR change port in `server.properties`: `server-port=25566`
- Restart server and use new port: `192.168.1.100:25566`

### Problem: "Can't connect to server"
**Solution:**
- Make sure server is running (check console)
- Check you're using the correct IP address
- Check firewall isn't blocking Java
- Try `localhost:25565` or `127.0.0.1:25565` on same computer

### Problem: "Connection timed out"
**Solution:**
- Server might be offline (check console)
- Check your IP address is correct
- If connecting remotely: check port forwarding is set up
- Check ISP isn't blocking port 25565 (try port 25566)

### Problem: "Server crashes on startup"
**Solution:**
- Check Java version: `java -version` (needs 8 or higher)
- Update Java from [java.com](https://www.java.com/en/download/)
- Check if `eaglercraft-server.jar` file exists in `server/` folder
- Check file isn't corrupted (re-download if needed)

## Performance Tips

1. **Allocate More RAM**
   ```bash
   java -Xmx2G -jar eaglercraft-server.jar nogui
   ```
   This allocates 2GB RAM. Increase if you have more.

2. **Reduce View Distance**
   - Set `view-distance=8` in `server.properties`

3. **Limit Players**
   - Don't exceed `max-players=20` for home internet

4. **Use SSD**
   - Server performs better on SSD storage

## Backup Your World

**Windows:**
```bash
cd server
xcopy world world-backup /E /I
```

**Mac/Linux:**
```bash
cd server
cp -r world world-backup
```

## Useful Links

- **Eaglercraft Client**: https://eaglercraft.com/
- **GitHub Repository**: https://github.com/dreams5710/mc-server
- **Java Download**: https://www.java.com/en/download/
- **Port Forwarding**: https://portforward.com/
- **Check Open Ports**: https://canyouseeme.org/
- **Find Public IP**: https://whatismyipaddress.com/

## Getting Help

1. Check the **Troubleshooting** section
2. Check console output for error messages
3. Visit Eaglercraft community forums
4. Create an issue on GitHub
