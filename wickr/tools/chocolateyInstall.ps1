$packageName = 'wickr'
$installerType = 'msi'
$url = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-4.64.8.msi'
$silentArgs = '/qb'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum 2EA78F41E4BAD4D16791E0A7EC58AE5829C44ED2CD017CF3ACD671F5F0EC8C66 -ChecksumType sha256