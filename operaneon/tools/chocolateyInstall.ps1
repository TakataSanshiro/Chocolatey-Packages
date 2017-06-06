$ErrorActionPreference = 'Stop';

$packageName = 'operaneon'
$installerType = 'exe'
$url = 'https://get.geo.opera.com/.private/Opera_Moment_Developer_1.0.2459.0_Autoupdate.exe' 
$silentArgs = '/Q'
$validExitCodes = @(0, 3010, 1641)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 564AB174FCA1E72AF9D606E1701916709D3B66FBB5DA62F8BF1603D33E8D810E -ChecksumType sha256
