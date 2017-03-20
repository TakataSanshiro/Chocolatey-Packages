$packageName = 'adobedigitaleditions'
$installerType = 'exe'
$url = 'https://adedownload.adobe.com/pub/adobe/digitaleditions/ADE_4.5_Installer.exe'
$silentArgs = '/S' 
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes  -Checksum 1457FFF9877B292F66A1BA9E5D95D069503B92121165EFB4CE41CD8FADA9BEB8 -ChecksumType sha256
