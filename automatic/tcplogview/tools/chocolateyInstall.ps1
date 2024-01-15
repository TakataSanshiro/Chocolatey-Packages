$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/tcplogview.zip'
  url64          = 'https://www.nirsoft.net/utils/tcplogview-x64.zip'
  checksum       = '592982d82dfd16e3e714485836919ec3028a25ca72d5a764c9f2c2be3b4c1745'
  checksum64     = 'abc91007f3403a4053d84b269b6f8a82487488b7cfacdbaa575b257a4fc29897'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'TcpLogView'
}
Install-ChocolateyZipPackage @packageArgs
