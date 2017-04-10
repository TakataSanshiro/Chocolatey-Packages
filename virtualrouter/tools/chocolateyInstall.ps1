$packageName = 'virtualrouter' 
$installerType = 'msi' 
$url = 'https://virtualrouter.codeplex.com/downloads/get/621827' 
$silentArgs = '/quiet' 
$validExitCodes = @(0, 3010, 1641) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 73BC4652BC1B4FF67C990A0AB9A68DDE4EC03E90B0FC1A642CEA0FF08E25CBB2 -ChecksumType sha256
