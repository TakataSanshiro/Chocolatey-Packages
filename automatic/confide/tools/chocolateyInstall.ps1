$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'confide'
  fileType       = 'exe'
  url            = 'https://getconfide.com/download/windows/dl'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Confide*'
  checksum       = '09914c31e7bdb03698899ee4994cc5172167312a5c15b80de78bc3cda399736c'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
