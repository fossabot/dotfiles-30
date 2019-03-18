# Adds symlink for .gitaliases in homepath
New-Item -Path $env:HOMEPATH\.gitaliases -ItemType SymbolicLink -Value ..\prefs\git\.gitaliases

# Adds symlink for .gitignore_common.d directory in homepath
New-Item -Path $env:HOMEPATH\.gitignore_common.d -ItemType SymbolicLink -Value ..\prefs\git\.gitignore_common.d

# Adds symlink for .gitignore_languages.d directory in homepath
New-Item -Path $env:HOMEPATH\.gitignore_languages.d -ItemType SymbolicLink -Value ..\prefs\git\.gitignore_languages.d

# Adds symlink for \bin in homepath
New-Item -Path $env:HOMEPATH\bin -ItemType SymbolicLink -Value .\bin

# Adds symlinks for vscode config files in homepath
New-Item -Path $env:APPDATA\Code\User\settings.json -ItemType SymbolicLink -Value ..\prefs\visual-studio-code\settings.json -Force
New-Item -Path $env:APPDATA\Code\User\keybindings.json -ItemType SymbolicLink -Value ..\prefs\visual-studio-code\keybindings.json -Force
