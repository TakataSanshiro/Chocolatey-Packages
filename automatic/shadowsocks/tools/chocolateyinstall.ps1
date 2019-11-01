$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'shadowsocks'
  url            = 'https://github.com/shadowsocks/shadowsocks-windows/releases/download/4.1.8.0/Shadowsocks-4.1.8.0.zip'
  checksum       = '14f0840dbabc554d43cf3021e04f7b11c7285bd85ee13dfb9d59c0a942bcd515'
  checksumType   = 'sha256'
  softwareName   = 'Shadowsocks'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
