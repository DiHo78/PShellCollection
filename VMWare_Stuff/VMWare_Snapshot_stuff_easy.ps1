Import-Module VMware.PowerCLI -Verbose 
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

#get-help Set-PowerCLIConfiguration -Examples
Connect-VIServer -Server MyVcenter.domain.local -Verbose



get-help Get-Snapshot -examples
get-help set-Snapshot

get-help Remove-Snapshot -Examples

New-Snapshot -VM "AdminVM" -Name "MyTestSnapshot" 

$mySnapshot = Get-Snapshot -VM "AdminVM"  
$mySnapshot | gm  #have alook what is inside
Get-Snapshot -VM "AdminVM" -Name "VM-Snapsho*"  | Remove-Snapshot  -Verbose -RemoveChildren





