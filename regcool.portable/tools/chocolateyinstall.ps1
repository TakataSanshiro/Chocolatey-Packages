$ErrorActionPreference = 'Stop';

$packageName    = 'regcool.portable'
$url            = 'https://kurtzimmermann.com/files/RegCoolX32.zip' 
$url64          = 'https://kurtzimmermann.com/files/RegCoolX64.zip'
$checksum       = 'C6A4C8C6508C166FF34C0F191435D148F93B3A25B4ECE3C3EF1BC610E9CF19DF'
$checksum64     = '3C91FAF526169C2A73A6388B6BDE05033D7518CC228C8A00434E413B90066B4D'
$checksumType   = 'sha256'
$checksumType64 = 'sha256'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Url64bit "$url64" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
