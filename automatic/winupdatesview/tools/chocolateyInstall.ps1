$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/winupdatesview.zip'
  url64          = 'https://www.nirsoft.net/utils/winupdatesview-x64.zip'
  checksum       = 'd1f9aaf0469409d14ee7fe9ca831a1b2b9150689d24110debd8ac5ebf1d2bc8f'
  checksum64     = '69ff663ee603ac8c5ad50750297c54678a73cdbf08d9bf589da3be39a445d728'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'WinUpdatesView'
}
Install-ChocolateyZipPackage @packageArgs
