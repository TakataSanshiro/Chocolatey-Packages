$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'whale'
  installerType  = 'exe'
  url            = 'https://github.com/1000ch/whale/releases/download/v2.4.0/Whale.Setup.2.4.0.exe'
  checksum       = 'a81e6cbdebda44da2f06de139456849bc86ffd8a4ad07b047de3db828136c39a'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Whale'
}
Install-ChocolateyPackage @packageArgs
