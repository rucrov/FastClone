param (
    [string]$Neko
)

$CallPath = Get-Location
New-Item "Registry::HKCU\SOFTWARE\Classes\Directory\Background\shell\Fast Clone"
if ($Neko -eq "neko") {
    New-ItemProperty "Registry::HKCU\SOFTWARE\Classes\Directory\Background\shell\Fast Clone" -Name "Icon" -Value "`"$CallPath\NekoArk.ico`""
} else {
    New-ItemProperty "Registry::HKCU\SOFTWARE\Classes\Directory\Background\shell\Fast Clone" -Name "Icon" -Value "`"$CallPath\FastClone.ico`""
}
New-Item "Registry::HKCU\SOFTWARE\Classes\Directory\Background\shell\Fast Clone\command" -Value "powershell.exe -ExecutionPolicy Bypass -File `"$CallPath\FastClone.ps1`""