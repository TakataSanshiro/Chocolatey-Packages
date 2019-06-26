$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'zazu'
  installerType  = 'exe'
  url            = 'https://github.com/tinytacoteam/zazu/releases/download/v0.6.0/Zazu.Setup.0.6.0.exe'
  checksum       = '186c0d850b62f9c39e0f43e925d17d1582cbc02736407961c584a8bdf344c7ce'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Zazu'
}
Install-ChocolateyPackage @packageArgs
