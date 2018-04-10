[void][reflection.aSSEMBLY]::LoadWithPartialName("Microsoft.SQLServer.Smo" )
$server = New-Object -TypeName Microsoft.SQLServer.Management.Smo.Server "<INSTANCE Name>"
$server.Databases.Item("<database name>")