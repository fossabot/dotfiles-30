# Add userprofile bin to path
[Environment]::SetEnvironmentVariable(
    "Path",
    [Environment]::GetEnvironmentVariable("Path", [EnvironmentVariableTarget]::Machine) + ";$Env:USERPROFILE\bin",
    [EnvironmentVariableTarget]::User)