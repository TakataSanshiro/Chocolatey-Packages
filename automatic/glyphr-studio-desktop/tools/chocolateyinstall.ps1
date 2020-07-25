$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glyphr-studio-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.5.6/Glyphr.Studio.Setup.0.5.6.exe'
  checksum       = 'ca75cd5def9bfe13eeadceeef39ae8892bd0d665f4e46ee95e112e1970e7cc9e'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Glyphr-Studio-Desktop'
}
Install-ChocolateyPackage @packageArgs
