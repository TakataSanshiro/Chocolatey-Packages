$packageName    = 'wickr'
$installerType  = 'msi'
$url            = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.22.3.msi'
$silentArgs     = '/qb'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum 4F70A33A2D2FC88C1FA5D96632625A8C65D97772F600C9797369500B0B9B1C58 -ChecksumType sha256