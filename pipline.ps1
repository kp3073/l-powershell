$serviceName = "Spooler"

Get-Service -Name $serviceName


Get-Service -Name $serviceName | Stop-Service


$services=New-Object -TypeName System.Collections.ArrayList

$services.AddRange(@('Spooler','w32time'))

$services | Get-Service | ForEach-Object {Write-Output( "service: $($_.DisplayName) is currently $($_.status)")}