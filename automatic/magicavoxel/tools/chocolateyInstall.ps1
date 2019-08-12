$ErrorActionPreference = 'Stop';

$packageName    = 'magicavoxel'
$url            = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.4/MagicaVoxel-0.99.4-alpha-win32.zip' 
$url64          = 'https://github.com/ephtracy/ephtracy.github.io/releases/download/0.99.4/MagicaVoxel-0.99.4-alpha-win64.zip' 
$checksum       = 'BE466E7852C06D544CB7BB41FE054CFE4751B8A290A4C7CC3496E95D5EE4DC13'
$checksum64     = '5EC8DF959B81CE9D0D338AA280B04998596188D60693FEF333D90A7BE92D9C2D'
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
							 