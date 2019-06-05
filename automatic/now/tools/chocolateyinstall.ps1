$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'now'
  installerType  = 'exe'
  url            = 'https://github.com/zeit/now-desktop/releases/download/4.0.19/now-desktop-Setup-4.0.19.exe'
  checksum       = '8eb55a5af5e83ab24ea79408d112319bdb460ad4902d83db861aea02f754319c'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Now'
}
Install-ChocolateyPackage @packageArgs
