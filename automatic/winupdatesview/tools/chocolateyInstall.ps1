$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/winupdatesview.zip'
  url64          = 'https://www.nirsoft.net/utils/winupdatesview-x64.zip'
  checksum       = '274095e2b7cc7893b43c87dbb06eb60d4699480a65b890c572afa743a5016634'
  checksum64     = '9091489cfc6bbd47c483e8e1ac1434133b7cae17c67f7093c788aae89eb97ee7'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'WinUpdatesView'
}
Install-ChocolateyZipPackage @packageArgs
