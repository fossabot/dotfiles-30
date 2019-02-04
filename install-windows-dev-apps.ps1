echo Configuring Windows

if (choco --version){
	echo Attempting to update Chocolatey
	choco upgrade chocolatey
}
else {
	echo Installing Chocolatey
	Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
} 

choco install chocolatey-packages.config -y