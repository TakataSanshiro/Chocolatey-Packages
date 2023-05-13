$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingide'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wingpro/9.1.1.0/wingpro-9.1.1.0.exe'
  checksum       = 'cea3b42c74c8c94d3a4fef0f69fbb8df228756510d2a5116e6e08227b0b9a50a'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDE'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
