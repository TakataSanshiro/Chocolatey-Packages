$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'postbox'
  installerType = 'exe'
  url           = 'https://d3nx85trn0lqsg.cloudfront.net/win/postbox-7.0.64-win32.exe'
  checksum      = '34313f560f6b8bd5f57f9a156504873466abc0447d947c53f279a2d76634299a'
  checksumType  = 'sha256'
  silentArgs    = '/S'
  toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  unzipLocation = $toolsDir
  softwareName  = 'Postbox*'
}

Install-ChocolateyPackage @packageArgs
