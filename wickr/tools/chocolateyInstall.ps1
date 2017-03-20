$packageName = 'wickr'
$installerType = 'msi'
$url = 'https://dls.wickr.com/Downloads/WickrMe-2.6.0.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum 186AAC14FDE1A509456930AC32704B95354C5C55F71A1D0A096A038CEE07DB4F -ChecksumType sha256

