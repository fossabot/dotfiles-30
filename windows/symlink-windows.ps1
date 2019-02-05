New-Item -Path $env:HOMEPATH\.gitaliases -ItemType SymbolicLink -Value ..\..\.gitaliases
New-Item -Path $env:HOMEPATH\bin -ItemType SymbolicLink -Value $PWD\bin