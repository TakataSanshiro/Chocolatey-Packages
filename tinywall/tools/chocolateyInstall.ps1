$packageName = 'tinywall' 
$installerType = 'msi' 
$url = 'https://tinywall.pados.hu/ccount/click.php?id=3' 
$silentArgs = '/quiet' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 05D348D18F99FED60E4ED82370EC3690655D0170F9034E1D06094F563190D64A -ChecksumType sha256
