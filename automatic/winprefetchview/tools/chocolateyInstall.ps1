$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/winprefetchview.zip'
  url64          = 'https://www.nirsoft.net/utils/winprefetchview-x64.zip'
  checksum       = '7c7c7cfbf74026e8679d5c866717d7bfd2df9f875ed17c210068df1aa7380bc6'
  checksum64     = 'a266a6750ab1b3078168b9b306befa9ad5a3069340e87fe0de609f417f0f1f18'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'WinPrefetchView'
}
Install-ChocolateyZipPackage @packageArgs
