$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  url            = 'https://www.nirsoft.net/utils/appcrashview.zip'
  checksum       = '76eca5db923e938504d525b8b48a64ab4ad375ced896665dbc543960b07c6054'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  softwareName   = 'AppCrashView'
}
Install-ChocolateyZipPackage @packageArgs
