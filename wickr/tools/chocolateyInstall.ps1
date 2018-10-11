$packageName = 'wickr'
$installerType = 'msi'
$url = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-4.55.8.msi'
$silentArgs = '/qb'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum 0881FFDFD1FB6EE09CDDA36F0CEED02BFCF0156DFE94A59B24DBBBD171A22444 -ChecksumType sha256
