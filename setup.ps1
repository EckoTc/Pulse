$path = "C:\temp\"
If(!(test-path $path)) {New-Item -ItemType Directory -Force -Path $path}
Invoke-Webrequest -Uri https://raw.githubusercontent.com/EckoTc/Pulse/main/Default.pulsepreconfig -outfile C:\Temp\Default.pulsepreconfig
Invoke-Webrequest -Uri https://raw.githubusercontent.com/EckoTc/Pulse/main/PulseNetworkConnectCompiled.bat -outfile C:\Temp\PulseNetworkConnectCompiled.bat
Invoke-WebRequest -Uri "https://github.com/EckoTc/Pulse/raw/main/PulseSecureInstallerService.msi" -OutFile "C:\Temp\PulseSecureInstallerService.msi"
#Invoke-WebRequest -Uri "https://statics.cirrus.com/vpn/PulseSecure-9.1R12.x64.msi" -OutFile "C:\Temp\ps-pulse-win-x64.msi"
Invoke-WebRequest -Uri "https://access.rochestermn.gov/dana-na/jam/getComponent.cgi?command=get&component=PulseSecure&platform=x64" -OutFile "C:\Temp\ps-pulse-win-x64.msi"
cmd /c "C:\Temp\PulseNetworkConnectCompiled.bat"
