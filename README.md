
### Lite mode:
Open powershell in admin mode and enter the following commands:<br>
1. `Set-ExecutionPolicy Unrestricted -Force`<br>
2. `Invoke-WebRequest -Uri https://raw.githubusercontent.com/b-lamer/AntiEdge/refs/heads/main/AntiEdgeLite.ps1 -OutFile $env:TEMP\AntiEdgeLite.ps1`<br>
3. `& "$env:TEMP\AntiEdgeLite.ps1"`<br>
