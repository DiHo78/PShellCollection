get-help Get-AzureStorageBlob -Examples
	
$StgAcc = "HierMussDerStorageAccountRein"
$StgKey = "HierMussDerStorageKeyRein"
$ctx = New-AzureStorageContext -StorageAccountName $StgAcc -StorageAccountKey $StgKey

$Container = "raw2011"
 
#Get all the blobs in container
$blob = Get-AzureStorageBlob -Container $Container -Context $ctx | Where-Object { ($_.Name -like "*Q*") -and ($_.name -notlike "*THUMB*") -and ($_.name -notlike "*.db*" ) }  
$blob | Out-GridView


#$blob | gm
#$blob.ICloudBlob | gm
#Set tier of all the blobs to Archive
$blob.icloudblob.setstandardblobtier("Archive")  


$blob = Get-AzureStorageBlob -Container $Container -Context $ctx | Where-Object { $_.Name -like "*.jpg" }  
$blob | Out-GridView