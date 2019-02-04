Write-Host "Windows Version = " (Get-WmiObject -Class Win32_OperatingSystem).Version
Write-Host "RAM = " ((Get-WmiObject Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum/1gb) " GB"
Write-Host "Processor = " (Get-WmiObject Win32_Processor).Name
Write-Host "MAC Address = "(Get-WmiObject Win32_NetworkAdapterConfiguration | where {$_.IPEnabled -eq "True" -and $_.ServiceName -ne "VMnetAdapter"}).MacAddress
Write-Host "IPv4 Address = "(Get-WmiObject Win32_NetworkAdapterConfiguration | where {$_.IPEnabled -eq "True" -and $_.ServiceName -ne "VMnetAdapter"}).IPAddress[0]
Write-Host "Default Gateway = "(Get-WmiObject Win32_NetworkAdapterConfiguration | where {$_.IPEnabled -eq "True" -and $_.ServiceName -ne "VMnetAdapter"}).DefaultIPGateway
Write-Host "IPv6 Address = "(Get-WmiObject Win32_NetworkAdapterConfiguration | where {$_.IPEnabled -eq "True" -and $_.ServiceName -ne "VMnetAdapter"}).IPAddress[1]
Write-Host "Hard Disk Capacity = "((Get-WmiObject Win32_LogicalDisk | Select DeviceID,Size | Where {$_.DeviceID -eq "C:"}).Size/1gb) " GB"