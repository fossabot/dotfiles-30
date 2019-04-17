Get-Content $env:HOMEPATH\.gitignore_common.d\Backup.gitignore $env:HOMEPATH\.gitignore_common.d\GPG.gitignore $env:HOMEPATH\.gitignore_common.d\Windows.gitignore $env:HOMEPATH\.gitignore_common.d\VisualStudioCode.gitignore | Out-File $env:HOMEPATH\.gitignore_global

. ..\prefs\git\.gitconfig_common
