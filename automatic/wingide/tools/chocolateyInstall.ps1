$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingide'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wingpro/8.0.4.0/wingpro-8.0.4.0.exe'
  checksum       = '8233782eb2ee20a374357b9a88396286f580404d982038c8d55007b17bff01c9'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDE'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
