$ErrorActionPreference = 'Stop';

$unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$pp = Get-PackageParameters
if ($pp['user']) { $unzipLocation = "$env:AppData\shadowsocks" }

$packageArgs = @{
  packageName    = 'shadowsocks'
  url            = 'https://github.com/shadowsocks/shadowsocks-windows/releases/download/4.4.1.0/Shadowsocks-4.4.1.0.zip'
  checksum       = '62b74a688d22bfdf20f673a351580029d7b9de67c6facc9a5613b22b3f798968'
  checksumType   = 'sha256'
  softwareName   = 'Shadowsocks'
  unzipLocation  = $unzipLocation
}
Install-ChocolateyZipPackage @packageArgs
