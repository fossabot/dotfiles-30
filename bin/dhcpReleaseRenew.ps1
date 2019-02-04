ipconfig /release
Stop-Service -Name "Dhcp" -Force
Start-Service -Name "Dhcp"
ipconfig /renew