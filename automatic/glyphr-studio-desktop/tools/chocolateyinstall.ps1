$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glyphr-studio-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.5.4/Glyphr.Studio.Setup.0.5.4.exe'
  checksum       = 'e76a9321b75767c7cf517809a59b58260483c8f917ab393600f2d37c41156726'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Glyphr-Studio-Desktop'
}
Install-ChocolateyPackage @packageArgs
