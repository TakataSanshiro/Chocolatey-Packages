$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'freenet'
  fileType       = 'exe'
  url            = 'https://github.com/freenet/fred/releases/download/build01492/FreenetInstaller-1492.exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'Freenet*'
  checksum       = '220f7505d9faf09cf7b008a00eba849abbd5831fc31c75dc5d212b492d7d6c5b'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
