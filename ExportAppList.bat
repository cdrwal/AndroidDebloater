@echo off
echo ====================================
echo ADB Package List Exporter
echo ====================================
echo.

REM Check if ADB is available
adb version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: ADB is not found or not in PATH
    echo Please install Android Platform Tools and add it to your PATH
    pause
    exit /b 1
)

REM Check if a device is connected
echo Checking for connected devices...
adb devices | findstr /R "device$" >nul
if %errorlevel% neq 0 (
    echo ERROR: No ADB device connected
    echo Please connect your device and enable USB debugging
    pause
    exit /b 1
)

echo Device found!
echo.

REM Ask user for package type
echo Select package type to export:
echo [1] All Packages
echo [2] 3rd Party Only
echo [3] System Only
echo.
set /p choice="Enter your choice (1-3): "

REM Set ADB command based on choice
if "%choice%"=="1" (
    set "adb_cmd=adb shell pm list packages"
    set "type_name=All Packages"
) else if "%choice%"=="2" (
    set "adb_cmd=adb shell pm list packages -3"
    set "type_name=3rd Party Packages"
) else if "%choice%"=="3" (
    set "adb_cmd=adb shell pm list packages -s"
    set "type_name=System Packages"
) else (
    echo Invalid choice. Exiting.
    pause
    exit /b 1
)

echo.
echo Exporting %type_name%...

REM Export packages and remove "package:" prefix
%adb_cmd% > AppList_temp.txt
for /f "tokens=*" %%a in (AppList_temp.txt) do (
    set "line=%%a"
    setlocal enabledelayedexpansion
    echo !line:package:=!>> AppList.txt
    endlocal
)
del AppList_temp.txt

REM Check if export was successful
if %errorlevel% equ 0 (
    echo.
    echo SUCCESS: %type_name% exported to AppList.txt
    echo Location: %cd%\AppList.txt
    
    REM Count the number of packages
    for /f %%a in ('find /c /v "" ^< AppList.txt') do set count=%%a
    echo Total packages: %count%
) else (
    echo ERROR: Failed to export package list
    pause
    exit /b 1
)

echo.
pause