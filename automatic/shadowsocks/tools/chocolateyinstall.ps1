$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'shadowsocks'
  url            = 'https://github.com/shadowsocks/shadowsocks-windows/releases/download/4.2.1.0/Shadowsocks-4.2.1.0.zip'
  checksum       = '4a302071d7fc21367f31e0d9c5f77ef1eb41ec097eaeadb8d65472b6be55ab99'
  checksumType   = 'sha256'
  softwareName   = 'Shadowsocks'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
