<#
Example script to quickly disable / enable a virt network adapter.
Don't forget: You need a connection to your VCenter
#>
$TargetMachine = "MyTargetVM"

#Get-NetworkAdapter -VM $TargetMachine | where {$_.Name -like "*2*"}
Get-NetworkAdapter -VM $TargetMachine | Set-NetworkAdapter -Connected:$false -Confirm:$false
Start-Sleep -Milliseconds 4500
Get-NetworkAdapter -VM $TargetMachine | Set-NetworkAdapter -Connected:$true  -Confirm:$false

<#
Get-NetworkAdapter -VM $TargetMachine | where {$_.Name -like "*1*"} | Set-NetworkAdapter -Connected:$false -Confirm:$false
Get-NetworkAdapter -VM $TargetMachine | where {$_.Name -like "*1*"} | Set-NetworkAdapter -Connected:$true  -Confirm:$false
#>