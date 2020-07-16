$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'confide'
  fileType       = 'exe'
  url            = 'https://getconfide.com/download/windows/dl'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Confide*'
  checksum       = 'a70528904ab1241da133b619c4e89703c260587f97a11e1da20e22346bf87495'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
