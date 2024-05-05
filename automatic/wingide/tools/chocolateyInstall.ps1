$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingide'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wingpro/10.0.4.0/wingpro-10.0.4.0.exe'
  checksum       = '7fa5e57085e0173d90d89f8253cdcd5ff04d72b0d60d1d90232c7d89700a5449'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDE'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
