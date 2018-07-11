$ErrorActionPreference = 'Stop';

$packageName = 'pixelshop'
$url = 'https://blackflux.com/software/ps/download/PixelShop.zip' 
$checksum = '3CC3822A0B8337F19DD77B040E1F60A0830D6E316975879A86722E941B30697B'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
