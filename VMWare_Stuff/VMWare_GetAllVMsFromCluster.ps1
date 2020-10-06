

Set-PowerCLIConfiguration -InvalidCertificateAction Warn
Connect-VIServer -Server MyVcenter.domain.local -Verbose

get-cluster "My-SQLCluster" | get-vm 

$VMs = get-cluster "My-SQLCluster" | get-vm 

$vms | Select-Object "Name" | Export-Csv "C:\temp\SQLVms.csv"


#get-help Export-Csv -Examples