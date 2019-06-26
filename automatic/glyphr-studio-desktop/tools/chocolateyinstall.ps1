$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glyphr-studio-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.5.2/Glyphr.Studio.Setup.0.5.2.exe'
  checksum       = 'e322b84737e34d45aa4d9fef2f0fa570139919b050383bf54ddb6f867fd8f32b'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Glyphr-Studio-Desktop'
}
Install-ChocolateyPackage @packageArgs
