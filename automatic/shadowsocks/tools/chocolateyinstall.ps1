$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'shadowsocks'
  url            = 'https://github.com/shadowsocks/shadowsocks-windows/releases/download/4.4.0.0/Shadowsocks-4.4.0.185.zip'
  checksum       = 'a5e9856fc84492bf129cca06659842ccc9705f7e24eaa9bd6ec5d529f7c61abb'
  checksumType   = 'sha256'
  softwareName   = 'Shadowsocks'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
