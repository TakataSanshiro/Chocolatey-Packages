$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'whale'
  installerType  = 'exe'
  url            = 'https://github.com/1000ch/whale/releases/download/v2.1.0/Whale.Setup.2.1.0.exe'
  checksum       = '68621d064ccc853c29bef4a1d1e0c6f894cab3e127e1b83a1d899a5195944880'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Whale'
}
Install-ChocolateyPackage @packageArgs
