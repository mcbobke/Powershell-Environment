@echo off
echo Starting profile installation...
start "Install Profile" /B /WAIT "powershell.exe" -ExecutionPolicy Bypass -File %~dp0Invoke-EnvironmentSetup.ps1
set /P input="Press enter to exit..."