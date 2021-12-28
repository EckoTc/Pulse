$path = "C:\temp\"
If(!(test-path $path))
{
      New-Item -ItemType Directory -Force -Path $path
}

<#$Trigger= New-ScheduledTaskTrigger -AtLogon # Specify the trigger settings
$User= "NT AUTHORITY\SYSTEM" # Specify the account to run the script
$Action= New-ScheduledTaskAction -Execute "cmd.exe" -Argument "C:\Temp\PulseNetworkConnectCompiled.bat" # Specify what program to run and with its parameters
Register-ScheduledTask -TaskName "PulseSecureInstall" -Trigger $Trigger -User $User -Action $Action -RunLevel Highest -Force # Specify the name of the task
#>

Invoke-Webrequest -Uri https://raw.githubusercontent.com/EckoTc/Pulse/main/Default.pulsepreconfig -outfile C:\Temp\Default.pulsepreconfig
Invoke-Webrequest -Uri https://raw.githubusercontent.com/EckoTc/Pulse/main/PulseNetworkConnectCompiled.bat -outfile C:\Temp\PulseNetworkConnectCompiled.bat
Invoke-WebRequest -Uri "https://github.com/EckoTc/Pulse/raw/main/PulseSecureInstallerService.msi" -OutFile "C:\Temp\PulseSecureInstallerService.msi"
Invoke-WebRequest -Uri "https://statics.cirrus.com/vpn/PulseSecure-9.1R12.x64.msi" -OutFile "C:\Temp\ps-pulse-win-x64.msi"

#cmd /c "C:\Temp\PulseNetworkConnectCompiled.bat"

