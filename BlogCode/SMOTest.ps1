add-type -Path 'D:\Program Files\Microsoft SQL Server\140\SDK\Assemblies\Microsoft.SqlServer.Smo.dll'
$server = New-Object -TypeName Microsoft.SQLServer.Management.Smo.Server "MeinTestServer"
$server.Databases.Item("AdminDB")
