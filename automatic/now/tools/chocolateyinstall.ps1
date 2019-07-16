$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'now'
  installerType  = 'exe'
  url            = 'https://github.com/zeit/now-desktop/releases/download/5.0.1/now-desktop-Setup-5.0.1.exe'
  checksum       = '60cedb7b7d45889174e7000d3fff35562ef765b23e34f52fbcc1eeb35b08f778'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Now'
}
Install-ChocolateyPackage @packageArgs
