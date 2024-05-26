$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glyphr-studio-desktop'
  installerType  = 'exe'
  url            = 'https://github.com/glyphr-studio/Glyphr-Studio-Desktop/releases/download/v0.6.0/Glyphr.Studio.Setup.0.6.0-x64.exe'
  checksum       = '3ec72f200490963aec313dc769c972e46a7b383f9116f1b0baafd360ca70d2ea'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Glyphr-Studio-Desktop'
}
Install-ChocolateyPackage @packageArgs
