$packageName = 'wickr'
$installerType = 'msi'
$url = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.18.7.msi'
$silentArgs = '/qb'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum DF8E8C460BF4BD0E46755A6FF3F8304ABB7D3EFCCF746A7EF1BD6BF2DC6046CB -ChecksumType sha256