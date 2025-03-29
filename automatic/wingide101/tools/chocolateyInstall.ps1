$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingide101'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wing-101/10.0.9.0/wing-101-10.0.9.0.exe'
  checksum       = '07fd51ad521c116187bfe9705c479ae917e0bcdc6482fc18ef281751b38a9942'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDE101'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
