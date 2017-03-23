$packageName = 'purevpn' 
$installerType = 'exe' 
$url = 'https://s3.amazonaws.com/purevpn-dialer-assets/windows/app/purevpn_setup.exe' 
$silentArgs = '/VERYSILENT' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes -Checksum 38B5F9AF1D92A7BEAD486164EDC0E3666F2F4AFC423E143370FA00535BF08E1D -ChecksumType sha256
