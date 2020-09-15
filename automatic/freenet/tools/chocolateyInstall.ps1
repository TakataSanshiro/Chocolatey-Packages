$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'freenet'
  fileType       = 'exe'
  url            = 'https://github.com/freenet/fred/releases/download/build01486/FreenetInstaller-1486.exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'Freenet*'
  checksum       = '2be9a334eb3b6d03106499745f41067bd4a31ee72a7be9917cd398deacaeabd0'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
