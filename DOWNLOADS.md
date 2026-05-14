# Files to Download

Follow this guide to download everything you need for your Eaglercraft server.

## 1. Java Runtime Environment (REQUIRED)

**Download from:** https://www.java.com/en/download/

**Steps:**
1. Go to the link above
2. Click "Download Java Now"
3. Run the installer for your operating system
4. Follow the installation wizard
5. Verify installation:
   - Open Command Prompt (Windows) or Terminal (Mac/Linux)
   - Type: `java -version`
   - You should see: `java version "1.8.0_x" or higher`

**Why needed:** Java runs the Eaglercraft server

---

## 2. Eaglercraft Server JAR (REQUIRED)

**Download from:** https://github.com/LAC1412/eaglercraftX-1.8.8-source/releases

**Steps:**
1. Go to the link above
2. Click the latest release
3. Scroll down to "Assets" section
4. Look for and download: `eaglercraft-server.jar` or similar
5. Save to: `server/` folder in your mc-server repository

**File details:**
- Filename: `eaglercraft-server.jar` (or `eaglercraftx_server.jar`)
- Size: ~50-100MB
- Required: YES

**Verify download:**
```bash
ls -la server/eaglercraft-server.jar
# Should show the file with size > 1MB
```

---

## 3. Eaglercraft Web Client (For Playing)

**Already available at:** https://eaglercraft.com/

**No download needed** - it's a web-based client

**How to use:**
1. Go to https://eaglercraft.com/
2. Enter your server address (e.g., `192.168.1.100:25565`)
3. Click "Join Server"
4. Enter username and start playing

---

## Optional Downloads

### Minecraft Resource Packs (Optional)

You can add custom texture packs:

**Where to get them:**
- https://www.curseforge.com/minecraft/texture-packs
- https://www.planetminecraft.com/texture-packs/

**How to install:**
1. Download `.zip` file
2. Place in `server/resource-packs/` folder
3. Restart server
4. Players can select in game settings

### Plugins (Optional, if supported)

Your Eaglercraft version may support Bukkit/Spigot plugins:

**Where to get them:**
- https://dev.bukkit.org/
- https://www.spigotmc.org/

**Installation:**
1. Download plugin `.jar` file
2. Place in `server/plugins/` folder
3. Restart server

---

## Complete Download Checklist

- [ ] **Java Runtime** (https://www.java.com/en/download/)
  - Verify: `java -version` shows 1.8 or higher

- [ ] **Eaglercraft Server JAR** (https://github.com/LAC1412/eaglercraftX-1.8.8-source/releases)
  - Saved in: `server/` folder
  - Filename: `eaglercraft-server.jar`
  - Size: Should be > 1MB

- [ ] **This Repository** (https://github.com/dreams5710/mc-server)
  - Clone or download
  - Extract to a folder
  - Contains setup scripts and configs

---

## Troubleshooting Downloads

### "Java download won't work"
- Try: https://www.java.com/en/download/
- Or for Linux: `sudo apt install openjdk-11-jre-headless`
- Or download from Oracle: https://www.oracle.com/java/technologies/downloads/

### "Can't find Eaglercraft server JAR"
- Check GitHub releases page for latest version
- Try searching for: "EaglercraftX server download"
- Look for files named: `eaglercraft-server.jar`, `eaglercraftx_server.jar`

### "Downloaded file won't open"
- Make sure you downloaded `.jar` file, not `.zip`
- If you got `.zip`, extract it
- Check file is not corrupted: look for `eaglercraft` in filename

### "JAR file is too small"
- If file is < 1MB, it's probably corrupted
- Delete and re-download
- Check file size matches GitHub release info

---

## Next Steps

After downloading:
1. Read `README.md` for quick start
2. Read `SETUP_GUIDE.md` for detailed setup
3. Configure `server/server.properties`
4. Run the startup script (`scripts/start.bat` or `scripts/start.sh`)
5. Connect with Eaglercraft web client

---

## Support

If you need help:
- Check GitHub repository issues
- Visit Eaglercraft community forums
- Check individual project GitHub pages
