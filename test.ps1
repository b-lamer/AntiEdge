$browseryn = Read-Host "Do you have a browser besides Microsoft Edge installed? (Y/N)"
If ($browseryn -eq 'y'){
    $browseryn = Read-Host "Are you sure? If you continue with the script without a browser you will lose access to the web. (Y/N)"
} 
If ($browseryn -eq 'n'){
    $browseryn = read-host "Would you like the script to install a browser for you? (Y/N)"
    if ($browseryn -eq 'y'){
        write-host "Please wait while the script installs a browser for you."
    } else {
        write-host "Cancelling script."
        Exit
    }
}