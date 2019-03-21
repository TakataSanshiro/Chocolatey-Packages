$ErrorActionPreference = 'Stop';

$packageName = 'regcool.portable'
$url = 'https://kurtzimmermann.com/files/RegCoolX32.zip' 
$url64 = 'https://kurtzimmermann.com/files/RegCoolX64.zip'
$checksum = 'DF5DFF578AAB42CEDC431AC54BA8C8F2103EDC1E000D93DD6E267880C8961BF6'
$checksum64 = '2D0C0BD5EA1BB9C247C8093B77EC85F4F50963D9FA60E8B5E5DD649A3B147E89'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Url64bit "$url64" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
