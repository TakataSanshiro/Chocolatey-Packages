$ErrorActionPreference = 'Stop';

$packageName = 'nylas' 
$installerType = 'exe' 
$url = 'https://edgehill.s3-us-west-2.amazonaws.com/2.0.32-fec7941/win32/ia32/NylasMailSetup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 4B752BBE9058D4AA4E98B668594F07E10F68E38201AC9DEC1523D8EA05BEFA06 -ChecksumType sha256
