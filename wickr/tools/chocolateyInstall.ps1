$packageName    = 'wickr'
$installerType  = 'msi'
$url            = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.36.8.msi'
$silentArgs     = '/qb'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum E1BD6A8301585D2EFBD3DD7D0EB9F1A317345E8DED7D3A90FB3684C57A2ABE77 -ChecksumType sha256