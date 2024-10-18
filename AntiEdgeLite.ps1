#Lighter version of AntiEdge.ps1, does not install any browsers and only does basic removal
Set-Location -Path "HKLM:\Software\Microsoft"
Get-Item -Path "HKLM:\SOFTWARE\Microsoft" | New-Item -Name "EdgeUpdate" -Force
New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\EdgeUpdate" -Name "DoNotUpdateToEdgeWithChromium" -Value "1" -PropertyType DWORD -Force


Set-Location -Path "C:\Program Files (x86)\Microsoft\Edge\Application\*\Installer"
.\setup.exe --uninstall --system-level --verbose-logging --force-uninstall