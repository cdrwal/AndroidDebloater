@echo off
setlocal enabledelayedexpansion

COLOR A

echo ========================================
echo ADB Package Uninstaller
echo ========================================
echo.

REM Check if packages.txt exists
if not exist Packages.txt (
    echo ERROR: Packages.txt not found!
    echo Please create Packages.txt with one package name per line.
    pause
    exit /b
)

REM Check if ADB is available
adb version >nul 2>&1
if errorlevel 1 (
    echo ERROR: ADB is not found or not in PATH!
    echo Please install ADB and try again.
    pause
    exit /b
)

REM Check if device is connected
adb devices | findstr /r "device$" >nul
if errorlevel 1 (
    echo ERROR: No device connected!
    echo Please connect your phone with USB debugging enabled.
    pause
    exit /b
)

echo Device connected. Starting uninstall process...
echo.

REM Create log file
set "logfile=uninstall_log_%date:~-4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt"
set "logfile=%logfile: =0%"
echo Uninstall Log - %date% %time% > "%logfile%"
echo ========================================== >> "%logfile%"
echo. >> "%logfile%"

set count=0
set success=0
set failed=0

REM Loop through packages.txt
for /f "usebackq tokens=*" %%p in ("Packages.txt") do (
    set "package=%%p"
    
    REM Skip empty lines and comments
    if not "!package!"=="" (
        if not "!package:~0,1!"=="#" (
            set /a count+=1
            echo [!count!] Processing: !package!
            echo [!count!] Processing: !package! >> "%logfile%"
            
            REM Try regular uninstall first
            echo    Attempting regular uninstall...
            adb shell pm uninstall !package! > nul 2>&1
            
            REM Try --user 0 uninstall
            echo    Attempting --user 0 uninstall...
            for /f "tokens=*" %%r in ('adb shell pm uninstall --user 0 !package! 2^>^&1') do set result=%%r
            
            echo    Result: !result!
            echo    Result: !result! >> "%logfile%"
            
            if "!result!"=="Success" (
                set /a success+=1
                echo    Status: SUCCESS
                echo. >> "%logfile%"
            ) else (
                set /a failed+=1
                echo    Status: FAILED
                echo. >> "%logfile%"
            )
            echo.
        )
    )
)

echo ==========================================
echo Summary:
echo ==========================================
echo Total packages processed: !count!
echo Successfully uninstalled: !success!
echo Failed: !failed!
echo.
echo Log saved to: %logfile%
echo.

echo ==========================================>> "%logfile%"
echo Summary:>> "%logfile%"
echo ==========================================>> "%logfile%"
echo Total packages processed: !count!>> "%logfile%"
echo Successfully uninstalled: !success!>> "%logfile%"
echo Failed: !failed!>> "%logfile%"

echo Done! Press any key to exit...
pause >nul