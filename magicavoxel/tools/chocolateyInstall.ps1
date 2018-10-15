$ErrorActionPreference = 'Stop';

$packageName = 'magicavoxel'
$url = 'http://192.241.207.218/uploads/MagicaVoxel-0.99.2-alpha-win32.zip' 
$url64 = 'http://192.241.207.218/uploads/MagicaVoxel-0.99.2-alpha-win64.zip' 
$checksum = 'C6B02488A7EF5DC0DC7851E45A4D21FC0F3DCE74F3B9ABBC1CD3CFECC0F55FD5'
$checksum64 = '149A9B919DC389552A4FE2F8B125979806CBD78F44AB498740A36A6C93E3DB01'
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
							 