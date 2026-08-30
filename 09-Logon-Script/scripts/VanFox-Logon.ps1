$folder = Join-Path $env:LOCALAPPDATA "VanFox"
New-Item -Path $folder -ItemType Directory -Force | Out-Null

$details = @(
    "Last logon: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    "User: $env:USERDOMAIN\$env:USERNAME"
    "Computer: $env:COMPUTERNAME"
    "Home drive: $env:HOMEDRIVE"
)

$details | Set-Content -Path (Join-Path $folder "LogonInfo.txt")
