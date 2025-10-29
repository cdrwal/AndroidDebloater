# AndroidDebloater
## Introduction

This project provides a Windows batch script that will help you debloat Android devices via ADB (Android Debug Bridge). Tested specifically on the Samsung Galaxy F05 (India variant), this script should work on most Samsung (or other android) phones with minor modifications. Debloating can improve performance, reduce unnecessary background processes, and free up storage by removing unwanted system apps and bloatware.

## Description of Files

- **Debloat.bat**  
  Main batch script to uninstall (or disable) user-level apps or certain system apps (where possible) and bloatware via ADB.

- **ExportAppList.bat**    
   Get a list of all apps installed on your phone.

- **AppList.txt**  
  List of all apps that come pre-installed in the phone (Samsung F05).

- **Packages.txt**   
   List of all apps that will be uninstalled/disabled.

- **README.md**  
  This documentation file.

## Setup Instructions

### On Your Android Device

1. **Enable Developer Options**
   - Navigate to *Settings → About phone → Software information*
   - Tap *Build number* 7 times until Developer Mode is enabled

2. **Enable USB Debugging**
   - Go to *Settings → Developer options*
   - Toggle on *USB debugging*

3. **Connect to PC**
   - Connect your device to your PC via USB
   - When prompted on your phone, allow USB debugging access for the connected computer

### On Your Windows PC

1. **Install ADB**
   - Download [Platform Tools for Windows](https://developer.android.com/tools/releases/platform-tools)
   - Extract the zip file to a location of your choice
   - Add the ADB folder to your system PATH environment variable

2. **Configure Package List**
   - Download all files from this repository
   - Run `ExportAppList.bat` to get a list of all apps installed on your device which is exported to `AppList.txt`
   - Open `Packages.txt` in a text editor
   - Add, remove, or modify package names according to your needs
   - Save the file

3. **Run the Debloat Script**
   - Open Command Prompt in the folder containing the script files
   - Run: `Debloat.bat`

## Important Notes

- **Review packages carefully** before running the script. Removing essential system apps may cause device instability or loss of functionality.
- Some packages may be reinstalled after system updates or factory resets.
- Tested on Samsung F05 (India). May require adjustments for other device models.

## Disclaimer

Use this tool at your own risk. The author is not responsible for any damage or data loss resulting from improper use.

## Credits

Created by [cdrwal](https://github.com/cdrwal)
