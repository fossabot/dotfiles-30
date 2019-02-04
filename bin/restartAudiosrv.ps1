$ServicePID = (get-wmiobject win32_service | where { $_.name -eq 'Audiosrv'}).processID
Stop-Process $ServicePID -Force
Start-Service -Name 'Audiosrv'