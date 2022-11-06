$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingide'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wingpro/9.0.0.6/wingpro-9.0.0.6.exe'
  checksum       = 'da23e6b2f025f86d3ed3b846c58fc2142795a9a67422f08a7d0818ce8835e9a7'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDE'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
