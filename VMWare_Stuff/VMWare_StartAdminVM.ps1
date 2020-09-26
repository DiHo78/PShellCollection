Import-Module VMware.PowerCLI -Verbose 
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

#get-help Set-PowerCLIConfiguration -Examples
Connect-VIServer -Server MyVcenter.domain.local -Verbose

VMware.VimAutomation.Core\Start-VM  -VM "AdminVM"

#Shutdown-VMGuest -VM "AdminVM" -Verbose -confirm:$false

#VMware.VimAutomation.Core\Restart-VMGuest -vm "AdminVM" -Verbose
