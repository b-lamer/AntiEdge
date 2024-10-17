#Temporary script that will be merged with AntiEdge.ps1
#This one is made for easier bug testing and will just be added to the bottom of the other script later.

if(Get-Command winget -ErrorAction SilentlyContinue){
    write-host "winget installed"
} else {
    Invoke-WebRequest -Uri "https://aka.ms/getwinget" -OutFile "$env:temp\winget.zip"
    Expand-Archive -Path $env:temp\winget.zip -Destination "Winget"
    Start-Process -FilePath "$env:temp\Winget\winget.exe" ArgumentList "/s" -wait
}