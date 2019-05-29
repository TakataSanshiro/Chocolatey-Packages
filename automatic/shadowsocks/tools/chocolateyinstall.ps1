$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'shadowsocks'
  url            = 'https://github.com/shadowsocks/shadowsocks-windows/releases/download/4.1.6/Shadowsocks-4.1.6.zip'
  checksum       = 'e9fad6bcba22427d7efb3d9b341d11173659a06cc12670ba9d542aeb670284b8'
  checksumType   = 'sha256'
  softwareName   = 'Shadowsocks'
  unzipLocation  = '$(Split-Path -parent $MyInvocation.MyCommand.Definition)'
}
Install-ChocolateyZipPackage @packageArgs
