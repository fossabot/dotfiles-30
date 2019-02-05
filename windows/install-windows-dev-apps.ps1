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

code --install-extension ms-vscode.powershell
code --install-extension dotjoshjohnson.xml
code --install-extension earshinov.sort-lines-by-selection