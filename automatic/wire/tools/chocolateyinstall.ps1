$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wire'
  installerType  = 'exe'
  url            = 'https://github.com/wireapp/wire-desktop/releases/download/windows%2F3.28.4253/Wire-Setup.exe'
  checksum       = '6E6ECCE76EF1222F15DA93C87C0D9AE0CE1D3C082F933264498060CE48C03B26'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  softwareName   = 'Wire'
}
Install-ChocolateyPackage @packageArgs
