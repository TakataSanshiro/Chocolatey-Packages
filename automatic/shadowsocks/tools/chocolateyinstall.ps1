$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'shadowsocks'
  url            = 'https://github.com/shadowsocks/shadowsocks-windows/releases/download/4.3.0.0/Shadowsocks-4.3.0.0.zip'
  checksum       = '0472497b295c4466e58c2623f2f03281f4a8297696753dd18effe3a4d633e86e'
  checksumType   = 'sha256'
  softwareName   = 'Shadowsocks'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
