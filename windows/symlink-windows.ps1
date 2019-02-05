# Adds symlink for .gitaliases in homepath
New-Item -Path $env:HOMEPATH\.gitaliases -ItemType SymbolicLink -Value ..\prefs\git\.gitaliases

# Adds symlink for \bin in homepath
New-Item -Path $env:HOMEPATH\bin -ItemType SymbolicLink -Value .\bin

# Adds symlinks for vscode config files in homepath
New-Item -Path $env:APPDATA\Code\User\settings.json -ItemType SymbolicLink -Value ..\prefs\visual-studio-code\settings.json
New-Item -Path $env:APPDATA\Code\User\keybindings.json -ItemType SymbolicLink -Value ..\prefs\visual-studio-code\keybindings.json