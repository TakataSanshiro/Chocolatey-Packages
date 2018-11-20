$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/1.5.0-2f0c701f/GitHubDesktopSetup.exe'
  checksum       = 'BBAB9098B4422288C6CE42E92FC12BE85E8C79757CE5C676856B6401A24DD5B3'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
