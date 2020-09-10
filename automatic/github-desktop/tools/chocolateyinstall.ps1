$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.5.5-f57dc10d/GitHubDesktopSetup.exe'
  checksum       = '15a76b61e238cfedf1525ed5552a5717b8e4755d423bc09b576c613694b67dcd'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
