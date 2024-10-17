#Lighter version of AntiEdge.ps1, does not install any browsers and only does basic removal
Get-Item -Path "HKLM:\SOFTWARE\Microsoft" | New-Item -Name "EdgeUpdate" -Force