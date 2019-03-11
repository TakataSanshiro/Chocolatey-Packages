$ErrorActionPreference = 'Stop';

$packageName = 'zeronet'
$url = 'https://github.com/HelloZeroNet/ZeroNet-win/archive/dist/ZeroNet-win.zip' 
$checksum = '51BBB85A6882F53AF6CDDD0F0939BE19177607BB29E3FDE7567EA6568C2DF30E'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
