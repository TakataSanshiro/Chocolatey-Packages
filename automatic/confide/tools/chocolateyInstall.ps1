$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'confide'
  fileType       = 'exe'
  url            = 'https://getconfide.com/download/windows/dl'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Confide*'
  checksum       = 'eafc6fa8fa1d1a03ef2fd317d67e318ba5a0e18b4b617ff2eba1606330e1d694'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
