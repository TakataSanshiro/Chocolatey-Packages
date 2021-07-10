$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'terminus'
  installerType  = 'exe'
  url            = 'https://github.com/Eugeny/tabby/releases/download/v1.0.146/tabby-1.0.146-setup.exe'
  checksum       = '837e2ae015366235fdc49b9e196d47ec82e3ffe3afa9228822dfb5db611349a8'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Terminus*'
}
Install-ChocolateyPackage @packageArgs
