$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/esedatabaseview.zip'
  checksum       = '1bba1e19022a829dce107c41fdf3d88589b39b31abe9664cfd712c36bc803eeb'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'ESEDatabaseView'
}
Install-ChocolateyZipPackage @packageArgs
