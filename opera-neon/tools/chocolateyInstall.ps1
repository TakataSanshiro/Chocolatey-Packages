$ErrorActionPreference = 'Stop';

$packageName = 'opera-neon'
$installerType = 'exe'
$url = 'https://get.geo.opera.com/.private/Opera_Moment_Developer_1.0.2531.0_Autoupdate.exe' 
$silentArgs = '/Q'
$validExitCodes = @(0, 3010, 1641)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 76D998A47C34E89447EB6CA177EA3D563ABBF3C1153184F7C47923D0249ABD00 -ChecksumType sha256
