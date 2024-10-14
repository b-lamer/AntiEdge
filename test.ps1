$browseryn = Read-Host "Do you have a browser installed? (Y/N)"
If ($browseryn -eq 'y'){
    write-host "You got dat browser"
}ElseIf ($browseryn -eq 'n'){
    write-host "You missin a browser"
}Else{
    write-host "Invalid input"
}