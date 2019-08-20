$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'now'
  installerType  = 'exe'
  url            = 'https://github.com/zeit/now-desktop/releases/download/5.1.0/now-desktop-Setup-5.1.0.exe'
  checksum       = '29070b7d119814a842b5f6c34a5c8d9728bc091ea4b62a0da5f6f905e8071fa3'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Now'
}
Install-ChocolateyPackage @packageArgs
