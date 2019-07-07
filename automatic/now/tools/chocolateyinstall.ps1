$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'now'
  installerType  = 'exe'
  url            = 'https://github.com/zeit/now-desktop/releases/download/5.0.0/now-desktop-Setup-5.0.0.exe'
  checksum       = 'befc095d17b285e66f3831f8187be663602bef70de63de3daf1387b66b3f4540'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Now'
}
Install-ChocolateyPackage @packageArgs
