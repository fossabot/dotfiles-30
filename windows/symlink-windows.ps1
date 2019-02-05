New-Item -Path $env:HOMEPATH\.gitaliases -ItemType SymbolicLink -Value ..\prefs\git\.gitaliases
New-Item -Path $env:HOMEPATH\bin -ItemType SymbolicLink -Value .\bin
New-Item -Path $env:APPDATA\Code\User\settings.json -ItemType SymbolicLink -Value ..\prefs\visual-studio-code\settings.json