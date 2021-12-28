"C:\Program Files (x86)\Pulse Secure\Network Connect 8.2\uninstall.exe" /silent=1
"C:\Program Files (x86)\Pulse Secure\Network Connect 8.3\uninstall.exe" /silent=1
"C:\Program Files (x86)\Pulse Secure\Secure Application Manager\UninstallSAM.exe" /qn
msiexec -i "C:\Temp\ps-pulse-win-x64.msi" CONFIGFILE="C:\Temp\Default.pulsepreconfig" /l*v "C:\Temp\PulseSecure_Install.log" /q
PING 127.0.0.1 -n 1 -w 5000 >NUL
taskkill /F /IM Pulse.exe 
msiexec /i "C:\Temp\PulseSecureInstallerService.msi" /qn
reg delete HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run /v PulseSecure /f
del c:\Temp\ps-pulse-win-9.1r11.5-b9451-x64.msi /S
del c:\Temp\PulseNetworkConnectCompiled.bat /S
del c:\Temp\PulseSecureInstallerService.msi /S
del c:\Temp\Default.pulsepreconfig /S
pause
