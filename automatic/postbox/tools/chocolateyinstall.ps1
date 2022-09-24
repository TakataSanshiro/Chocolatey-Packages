$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'postbox'
  installerType = 'exe'
  url           = 'https://d3nx85trn0lqsg.cloudfront.net/win/postbox-7.0.58-win32.exe'
  checksum      = '88ad386c5d7b93e8fda8d179ce75ff9b649cdacdd46adbad77455358d00b7987'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  unzipLocation = $toolsDir
  softwareName  = 'Postbox*'
}

Install-ChocolateyPackage @packageArgs
