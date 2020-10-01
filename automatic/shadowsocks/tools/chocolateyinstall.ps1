$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'shadowsocks'
  url            = 'https://github.com/shadowsocks/shadowsocks-windows/releases/download/4.2.0.1/Shadowsocks-4.2.0.1.zip'
  checksum       = 'f3cb648c848b10ea67fe776ed08f1de7258d3e3e4f1b9a5779ecd500de9e9dd0'
  checksumType   = 'sha256'
  softwareName   = 'Shadowsocks'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
