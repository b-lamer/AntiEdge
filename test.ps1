$foxurl = "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US"

$browseryn = Read-Host "Are you sure you want to run this script? 
If you do not have a browser installed, you may not be able to access the web. (Y/N)"

If ($browseryn -eq 'y'){
    
} ElseIf ($browseryn -eq 'n'){
    $browseryn = read-host "Would you like the script to install a browser for you? (Y/N)"
    if ($browseryn -eq 'y'){
        write-host "Please wait while the script installs a browser for you."
        Invoke-WebRequest -Uri $foxurl -OutFile $env:TEMP\firefox_installer.exe
        Start-Process -FilePath $env:TEMP\firefox_installer.exe -ArgumentList "/S" -Wait
        Remove-Item "$env:TEMP\firefox_installer.exe"
    } else {
        write-host "Cancelling script."
        Exit
    }
}