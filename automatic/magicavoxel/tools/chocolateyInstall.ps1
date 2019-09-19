$ErrorActionPreference = 'Stop';

$packageName    = 'magicavoxel'
$url            = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.4/MagicaVoxel-0.99.4.1-alpha-win32.zip' 
$url64          = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.4/MagicaVoxel-0.99.4.2-alpha-win64.zip' 
$checksum       = '4FFA20069F6356758AE4882142C50D381BD2A26E404E9D835BC808A8967482BF'
$checksum64     = '8268F71DF96FBE76DAC0A20A577F3C55B4CF27900F5E1B9E3D0516AAB1BA08B2'
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
							 