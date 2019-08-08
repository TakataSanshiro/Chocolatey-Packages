$packageName    = 'wickr'
$installerType  = 'msi'
$url            = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.28.6.msi'
$silentArgs     = '/qb'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum E665FAF24AE4C7477440797CCAB07B04FA77A4FEE32B8AC3486381A2E2BC9197 -ChecksumType sha256