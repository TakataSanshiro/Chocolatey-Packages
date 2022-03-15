$ErrorActionPreference = 'Stop';

$packageName  = 'makehuman'
$url          = 'https://download.tuxfamily.org/makehuman/releases/makehuman-community-1.2.0-windows.zip'
$checksum     = '7F801801F4307A89C8DC91E5713553000A37D1225F25CB1C32AFAD20F3B0F4EE'
$checksumType = 'sha256'
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
