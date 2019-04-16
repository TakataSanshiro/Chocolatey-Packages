$ErrorActionPreference = 'Stop';

$packageName    = 'magicavoxel'
$url            = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/v0.99.3/MagicaVoxel-0.99.3-alpha-win32.zip' 
$url64          = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/v0.99.3/MagicaVoxel-0.99.3-alpha-win64.zip' 
$checksum       = 'CD0C3890F38E11D6921DC13F397AE14E4B00FC37A34DB737593F0C7B9C9A3EB1'
$checksum64     = 'BA26565ED2C48CA51FC684EF88C4D37BB7B8815CF06B9FDC40FF7CFC748523B7'
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
							 