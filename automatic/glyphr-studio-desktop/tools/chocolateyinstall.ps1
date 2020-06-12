$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glyphr-studio-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.5.5/Glyphr.Studio.Setup.0.5.5.exe'
  checksum       = '914cf0bfa5e58dfb8dfef320ed85e1abb146db9c5151c6c6fa7156e9e3921855'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Glyphr-Studio-Desktop'
}
Install-ChocolateyPackage @packageArgs
