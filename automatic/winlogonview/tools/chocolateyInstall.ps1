$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/winlogonview.zip'
  checksum       = 'e680236347a5c63b25a0ea6f745e0bcb5529fd9939753c3c099ccb9d5b549c8d'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'WinLogOnView'
}
Install-ChocolateyZipPackage @packageArgs
