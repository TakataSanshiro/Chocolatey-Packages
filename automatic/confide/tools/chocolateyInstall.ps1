$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'confide'
  fileType       = 'exe'
  url            = 'https://getconfide.com/download/windows/dl'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Confide*'
  checksum       = '24927B668BA841A6C9863F69AE9B20178E77E20C28DBA63DA27FB7F1770B6151'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
