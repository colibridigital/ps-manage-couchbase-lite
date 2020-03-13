#Requires -RunAsAdministrator
"Updating SyncGateway configuration with active_configuration.json file..."
Copy-Item -Path .\active_configuration.json -Destination 'C:\Program Files\Couchbase\Sync Gateway\serviceconfig.json'
$SrvName = "SyncGateway"
Set-Service $SrvName -startuptype manual
Restart-Service $srvName
$ServiceAfter = Get-Service $SrvName
"$SrvName is now " + $ServiceAfter.status
Set-Service $SrvName -startuptype automatic