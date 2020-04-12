$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wire'
  installerType  = 'exe'
  url            = 'https://github.com/wireapp/wire-desktop/releases/download/windows%2F3.16.3562/Wire-Setup.exe'
  checksum       = '97d558d5615d264bdce3ac537260ed3c64cadb64dceca7ac98473f96e0ab9bc1'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Wire'
}
Install-ChocolateyPackage @packageArgs
