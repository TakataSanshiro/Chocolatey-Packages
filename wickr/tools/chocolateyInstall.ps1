$packageName = 'wickr'
$installerType = 'msi'
$url = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-4.37.9.msi'
$silentArgs = '/qb'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum DAE6B126729BEEFCB2C3075779F76D544FF3C7AAE53B2DCEA3DBBF96FA9EDCF2 -ChecksumType sha256

