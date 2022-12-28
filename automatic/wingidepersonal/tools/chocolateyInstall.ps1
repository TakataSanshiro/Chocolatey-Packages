$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingidepersonal'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wing-personal/9.0.2.1/wing-personal-9.0.2.1.exe'
  checksum       = '35f05a7f62eabb74b4d39f895f035e247a3b7ea53040672ab761fd1b40c5fe8c'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDEpersonal'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
