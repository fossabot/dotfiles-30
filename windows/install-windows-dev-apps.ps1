Write-Output Installing Windows Development Apps

if (choco --version){
	Write-Output Attempting to update Chocolatey
	choco upgrade chocolatey
}
else {
	Write-Output Installing Chocolatey
	Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
} 

choco install -y `
	7zip.install `
	audacity `
	awscli `
	ccleaner `
	choco-upgrade-all-at-startup `
	ffmpeg `
	git.install `
	golang `
	notepadplusplus `
	pdftk `
	putty `
	python `
	sysinternals `
	vlc `
	vscode `
	wireshark

Get-Content $env:APPDATA\Code\User\extensions.list | ForEach-Object { code --install-extension $_}