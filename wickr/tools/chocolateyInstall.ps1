$packageName    = 'wickr'
$installerType  = 'msi'
$url            = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.32.3.msi'
$silentArgs     = '/qb'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum 44BC3D768F90D40D43FCE539563FE751E09CA249BEC45D208B87B1BE7559C48F -ChecksumType sha256