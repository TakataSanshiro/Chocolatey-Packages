$packageName = 'wickr'
$installerType = 'msi'
$url = 'https://s3.amazonaws.com/static.wickr.com/downloads/win/me/WickrMe-5.2.4.msi'
$silentArgs = '/qb'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum 9F220BA4F396064F5D60850E16B045F55F45DE3910611CF0EA42B46DFCDE0AD5 -ChecksumType sha256