Get-Content $env:HOMEPATH\.gitignore_global\Backup.gitignore $env:HOMEPATH\.gitignore_global\GPG.gitignore $env:HOMEPATH\.gitignore_global\Windows.gitignore | Out-File $env:HOMEPATH\.gitignore_global

. ..\prefs\git\.gitconfig_common
