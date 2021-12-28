$path = "C:\temp\"
If(!(test-path $path))
{
      New-Item -ItemType Directory -Force -Path $path
}

$Trigger= New-ScheduledTaskTrigger -AtLogon # Specify the trigger settings
$User= "NT AUTHORITY\SYSTEM" # Specify the account to run the script
$Action= New-ScheduledTaskAction -Execute "cmd.exe" -Argument "C:\Temp\PulseNetworkConnectCompiled.bat" # Specify what program to run and with its parameters
Register-ScheduledTask -TaskName "PulseSecureInstall" -Trigger $Trigger -User $User -Action $Action -RunLevel Highest -Force # Specify the name of the task

Invoke-webrequest -Uri https://raw.githubusercontent.com/EckoTc/Pulse/main/Default.pulsepreconfig -outfile C:\Temp\Default.pulseconfig
Invoke-webrequest -Uri https://raw.githubusercontent.com/EckoTc/Pulse/main/PulseNetworkConnectCompiled.bat -outfile C:\Temp\PulseNetworkConnectCompiled.bat


Invoke-WebRequest -Uri "http://www.contoso.com" -OutFile "C:\path\file"
