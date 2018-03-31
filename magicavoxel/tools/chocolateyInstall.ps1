$ErrorActionPreference = 'Stop';

$packageName = 'magicavoxel'
$url = 'http://192.241.207.218/uploads/MagicaVoxel-0.99.1-alpha-win32.zip' 
$url64 = 'http://192.241.207.218/uploads/MagicaVoxel-0.99.1-alpha-win64.zip' 
$checksum = '775CC7D4FFE2F803DF1D8AE84FC01034D6D66FFB4261BE3973215893520DED4E'
$checksum64 = 'D2C7B2D5E86D8024D87FD7C48B747E59950715B3EAE0918F09DD8E8C8371E8E1'
$checksumType = 'sha256'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
							 -Url64bit "$url64" `
							 -Checksum64 "$checksum64" `
							 -ChecksumType64 "$checksumType64"
							 