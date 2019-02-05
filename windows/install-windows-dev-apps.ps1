Write-Output Configuring Windows

if (choco --version){
	Write-Output Attempting to update Chocolatey
	choco upgrade chocolatey
}
else {
	Write-Output Installing Chocolatey
	Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
} 

choco install chocolatey-packages.config -y