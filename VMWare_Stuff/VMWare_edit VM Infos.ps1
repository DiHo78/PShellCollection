#just a few snippets
# because sometimes you may want to persist some additional
# information on a vm 

$vmname = VMware.vimautomation.core\get-vm -Name MyServer
$vmname

#get-help Get-Annotation -online

$note = (VMware.vimautomation.core\get-vm $vmname).description
$note


$vm = VMware.VimAutomation.Core\Get-VM -Name MyServer

VMware.VimAutomation.Core\Set-VM -VM "MyServer" 


get-help Set-VM -Examples

Set-VM -VM "MyServer"  -description "test entry" -Verbose

#get-help New-CustomAttribute  -Examples

#New-CustomAttribute -Name "Responsibility" -TargetType VirtualMachine 
Get-CustomAttribute | Out-GridView
Get-Annotation -Entity $vm -CustomAttribute "Responsibility"
$CustAtt = "Responsibility"


#little loop setting an attribute


$vms = get-vm -Name "SQL*"
$vms

ForEach ($vmname in $vms) {
    $vm = get-vm -Name @vmname;
    Set-Annotation -Entity $vm -CustomAttribute $CustAtt -Value "Dirk Hondong" 
}


