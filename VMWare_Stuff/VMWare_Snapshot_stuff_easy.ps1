# Just some snippets as a rmeinder how 
# to create a VM Snapshot
# also, with Set-Snapshot additional infos to a snapshot can be added

Import-Module VMware.PowerCLI -Verbose 
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

#get-help Set-PowerCLIConfiguration -Examples
Connect-VIServer -Server MyVcenter.domain.local -Verbose



get-help Get-Snapshot -examples
get-help set-Snapshot

get-help Remove-Snapshot -Examples

New-Snapshot -VM "AdminVM" -Name "MyTestSnapshot" 

$mySnapshot = Get-Snapshot -VM "AdminVM"  #just 2 take a look what's inside

Get-Snapshot -VM "AdminVM" -Name "VM-Snapsho*"  | Remove-Snapshot  -Verbose -RemoveChildren




$myTarget = read-host "Which target system"


#VMware.VimAutomation.Core\Restart-VMGuest -vm $myTarget -Verbose
$snapname = "Before Updates" 
New-Snapshot -vm $myTarget -Name  $snapname
get-vm -Name $myTarget | Get-Snapshot -name $snapname | Set-Snapshot -Description "This snapshot was taken before update installation"

#Get-Snapshot -VM $myTarget | Out-GridView -PassThru | Remove-Snapshot

<#
get-help Get-Snapshot -examples
get-help set-Snapshot -examples

get-help Remove-Snapshot -Examples

New-Snapshot -VM $myTarget -Name "Update" 

$mySnapshot = Get-Snapshot -VM $myTarget

Get-Snapshot -VM $myTarget -Name "upd*"  | Remove-Snapshot  -Verbose -RemoveChildren

#>







