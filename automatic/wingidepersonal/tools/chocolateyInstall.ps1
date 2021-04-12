$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingidepersonal'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wing-personal/7.2.9.0/wing-personal-7.2.9.0.exe'
  checksum       = '1e3d7a5636099bdd7f891e5f4ea730be616c8cc7ccf514194af94660245979c8'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDEpersonal'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
