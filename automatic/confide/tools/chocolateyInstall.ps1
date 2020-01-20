$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'confide'
  fileType       = 'exe'
  url            = 'https://getconfide.com/download/windows/dl'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Confide*'
  checksum       = '85cef39b3b02ff3dd45f7c811ea6467bef791e08e73d4c9af2d1b019bf9e6e3e'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
