$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/tabby/releases/download/v1.0.152/tabby-1.0.152-setup.exe'
  checksum       = '50329237042bb1aa84c2ee446f0a7c2879c93a328f2b64c28df2821412d303da'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
