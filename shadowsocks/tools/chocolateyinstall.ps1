$ErrorActionPreference = 'Stop';

$packageName = 'shadowsocks'
$url = 'https://github.com/shadowsocks/shadowsocks-windows/releases/download/4.1.5/Shadowsocks-4.1.5.zip' 
$checksum = 'D39F61DBF2A753769C0EFB7712DD7BFA6E1D1593EBAED06150F206F3B6FF7DE2'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"
