$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'freenet'
  fileType       = 'exe'
  url            = 'https://github.com/freenet/fred/releases/download/build01497/FreenetInstaller-1497.exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
  softwareName   = 'Freenet*'
  checksum       = 'd88d37d2e212bf87d9710bc10b1d07f508944e052e1825220ed50310d717261d'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
