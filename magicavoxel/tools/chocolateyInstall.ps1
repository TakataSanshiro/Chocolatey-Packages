$ErrorActionPreference = 'Stop';

$packageName    = 'magicavoxel'
$url            = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.4/MagicaVoxel-0.99.4-alpha-win32.zip' 
$url64          = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.4/MagicaVoxel-0.99.4-alpha-win64.zip' 
$checksum       = 'E0199606C6ACF1783AE0422E3E48576AD2B84ACDF7BFC680CB673591BCE6F671'
$checksum64     = '37404690D5DB7A7024BE729DDF5DA813F333781DD853AFA32AEB7478331CE6AC'
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
							 