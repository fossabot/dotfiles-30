$WLAN_output = $(netsh wlan show interfaces)
$SSID_line = $WLAN_output | Select-String "SSID"
$SSID = ($SSID_line -split ":",2)[1].Trim()
$BSSID_line = $WLAN_output | Select-String "BSSID"
$BSSID = ($BSSID_line -split ":",2)[-1].Trim()
$SignalLevelPercent_line = $WLAN_output | Select-String "Signal"
$SignalLevelPercent = ($SignalLevelPercent_line -split ":")[-1].Trim()
$SignalLeveldBm = (([int]$SignalLevelPercent.TrimEnd('%'))/2) - 100

# New-EventLog -LogName Application -Source "Signal Level"

Write-EventLog -LogName Microsoft-Windows-WLAN-Autoconfig/Diagnostic -Source "Signal Level" -EntryType Information -EventId 1 -Message "$SSID : $BSSID : $SignalLeveldBm dBm"
Write-Host "$SSID : $BSSID : $SignalLeveldBm dBm"