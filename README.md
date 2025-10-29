# SamsungDebloat
## Introduction

This project provides a set of Windows batch scripts that help you debloat Samsung devices via ADB (Android Debug Bridge). Tested specifically on the Galaxy F05 (India variant), these scripts should work on most Samsung phones with minor modifications. Debloating can improve performance, reduce unnecessary background processes, and free up storage by removing unwanted system apps and bloatware.

## Description of Files

- **Primer.bat**  
  Batch script to uninstall user-level apps and bloatware via ADB.

- **SysPrimer.bat**  
  Batch script to disable or uninstall certain system apps (where possible) via ADB.

- **Packages.txt**  
  List of all package names (apps) that come installed in the phone.

- **README.md**  
  This documentation file.

## Instructions

1. **Enable Developer Options on your Android device:**
   - Go to *Settings > About phone > Software information*.
   - Tap *Build number* 7 times until you see a message that Developer Mode is enabled.

2. **Enable USB Debugging:**
   - Go to *Settings > Developer options*.
   - Turn on *USB debugging*.

3. **Install ADB on your Windows PC:**
   - Download [Platform Tools for Windows](https://developer.android.com/tools/releases/platform-tools) from Google's official site.
   - Extract the zip file and note the folder location.
   - Add adb to PATH/Environment Variables.

4. **Download the Batch Scripts:**
   - Download all files from this repository into a folder on your computer.

5. **Edit `Primer.bat`:**
   - Open `Primer.bat` in a text editor.
   - Add, remove, or modify the package names to suit your preferences. Each package should be on a new line.
   - Do the same for `SysPrimer.bat`.

6. **Connect your phone to your PC via USB:**
   - Allow USB debugging access on your phone when prompted.

7. **Run the Scripts:**
   - Open Command Prompt in the folder containing your batch scripts and ADB.
   - First, run `Primer.bat` to remove user apps:
   - Then, run `SysPrimer.bat` to disable system apps:

> **Note:** Always review the packages before running the scripts. Removing essential system apps may cause instability or loss of functionality.

## Disclaimer

- Use these scripts at your own risk. Removing critical apps may affect device stability.
- Some packages may be reinstalled after system updates or factory reset.
- Tested on Samsung F05 (India), may require tweaks for other models.

## Credits

Created by [cdrwal](https://github.com/cdrwal)
