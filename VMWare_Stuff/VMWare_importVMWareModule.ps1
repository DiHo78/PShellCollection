
Import-Module VMware.PowerCLI -Verbose 
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false

#get-help Set-PowerCLIConfiguration -Examples
Connect-VIServer -Server MyVcenter.domain.local -Verbose

<#
Reminder  bzgl Installation
Ist kein Problem. Modul mit AllowClobber installieren 😊  (Info by JHP)
Danach mit Hyper-V\Get-VM und VMWare-Name\Get-Vm auf die Funktionen zugreifen. Ist eh good practice
(Info by JHP)
#>


<#  old stuff:
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.VimAutomation.Core" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.VimAutomation.Srm" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.VimAutomation.License" -Verbose
Import-Module -name "C:\PShell\Modules\VMWare\VMware.VimAutomation.Vds" -Verbose
Import-Module -name "C:\PShell\Modules\VMWare\VMware.VimAutomation.Vmc" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.VimAutomation.Nsxt" -Verbose
Import-Module -name  "C:\PShell\Modules\VMWare\VMware.VimAutomation.vROps" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.VimAutomation.HA" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.VimAutomation.HorizonView" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.VimAutomation.Cloud" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.VimAutomation.PCloud" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.ImageBuilder" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.DeployAutomation" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.VimAutomation.Storage" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.VimAutomation.StorageUtility" -Verbose
Import-Module -Name "C:\PShell\Modules\VMWare\VMware.VumAutomation" -Verbose
#>