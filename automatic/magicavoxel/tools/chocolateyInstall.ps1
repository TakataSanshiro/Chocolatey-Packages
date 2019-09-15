$ErrorActionPreference = 'Stop';

$packageName    = 'magicavoxel'
$url            = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.4/MagicaVoxel-0.99.4.1-alpha-win32.zip' 
$url64          = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.4/MagicaVoxel-0.99.4.2-alpha-win64.zip' 
$checksum       = '1974CF0ACC7A9754C68078F76AB492416753CE8E2FD9DD9C3F2ECD59C520A3E7'
$checksum64     = 'A51CC613409CB3AAE61650F41AAED6828A4FD497C2C92ADD7EB06B879EC08233'
$checksumType   = 'sha256'
$checksumType64 = 'sha256'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
							               -Url64 "$url64" `
							               -Checksum64 "$checksum64" `
							               -ChecksumType64 "$checksumType64"
							 