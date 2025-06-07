$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingide'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wingpro/11.0.1.0/wingpro-11.0.1.0.exe'
  checksum       = '3f306566f65dc8ea7a6ff85084c3896b3be0aaa626f8937bbbe38fc6ad7845e4'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDE'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
