$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingide101'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wing-101/9.1.1.0/wing-101-9.1.1.0.exe'
  checksum       = 'a9f860cd9baf00cb855ac3c0a7ebf87c2c615d4e08f3f3fdb1701a64562e910b'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDE101'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
