Get-Content $env:HOMEPATH\.gitignore_global\Backup.gitignore $env:HOMEPATH\.gitignore_global\GPG.gitignore $env:HOMEPATH\.gitignore_global\Windows.gitignore | Out-File $env:HOMEPATH\.gitignore_global

git config --global core.excludesfile $env:HOMEPATH\.gitignore_global
git config --global include.path $env:HOMEPATH\.gitaliases
git config --global user.name "Robert Ellegate"
git config --global commit.gpgSign true
