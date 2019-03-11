$ErrorActionPreference = 'Stop';

$packageName = 'genet'
$installerType = 'exe'
$url = 'https://github.com/genet-app/genet/releases/download/v0.5.0/genet-setup-0.5.0.exe' 
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 6C8C6DE7031B764EDC22B662BB1FA3E1CF50CF1447202FFFCF085111E63153F6 -ChecksumType sha256
