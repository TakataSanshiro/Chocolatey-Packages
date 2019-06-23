$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'shadowsocks-qt5'
  url64bit       = 'https://github.com/shadowsocks/shadowsocks-qt5/releases/download/v2.9.0/ss-qt5-v2.9.0-win64.7z'
  checksum64     = '2C95F731B163C8CFF02F03017C6E7F0DB414899FF8B08EF8DDEB6570BE0D679F'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyZipPackage @packageArgs
