$ErrorActionPreference = 'Stop';

$packageName = 'firealpaca' 
$installerType = 'exe' 
$url = 'http://115.146.50.91/firealpaca/bin/FireAlpaca_setup.exe' 
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 0795812134A6761713CF38F5F0211F8C0650DBF3613DCAAAE1B0C7FE703A2D84 -ChecksumType sha256
