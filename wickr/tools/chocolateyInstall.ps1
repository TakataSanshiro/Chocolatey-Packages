$packageName = 'wickr'
$installerType = 'msi'
$url = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-4.13.5.msi'
$silentArgs = '/qb'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum C6030806728C634AF79A09AE1C7C5E166DD9D3668606931A280278A8688C059D -ChecksumType sha256

