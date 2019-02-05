if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

Invoke-Expression ".\symlink-windows.ps1"
Invoke-Expression ".\windows\config-windows.ps1"
Invoke-Expression ".\windows\install-windows-dev-apps.ps1"
