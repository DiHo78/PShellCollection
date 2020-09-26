<# example script to set some annotations to a VM
This way is much faster than the VCenter Web GUI 
You need to be connected to Vcenter already!
#>

$vms = Get-VM -Name "MyVM"
$vms

$AppEnvAtt = "Application-Environment"
$AppLocAtt = "Application-Location"
$AppNameAtt = "Application-Name"
$AppTierAtt = "Application-Tier"

$AppEnvVal = "PROD"
$AppLocVal = "INT"
$AppNameVal = "Monitoring"
$AppTierVal = "SQL"


ForEach ($vmname in $vms)
{
$vm = get-vm -Name $vmname;
Set-Annotation -Entity $vm -CustomAttribute $AppEnvAtt -value $AppEnvVal
Set-Annotation -Entity $vm -CustomAttribute $AppLocAtt -value $AppLocVal
Set-Annotation -Entity $vm -CustomAttribute $AppNameAtt -Value $AppNameVal
Set-Annotation -Entity $vm -CustomAttribute $AppTierAtt -Value $AppTierVal
}

#just have another look
Get-Annotation -Entity $vms