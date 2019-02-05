# Add userprofile bin to path
[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::Machine) + ";$Env:USERPROFILE\bin",
    [EnvironmentVariableTarget]::User)

# Update Powershell Help files
Update-Help | Out-Null

# Enable seconds in clock
New-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name 'ShowSecondsInSystemClock' -Value '1' -PropertyType DWORD -Force

