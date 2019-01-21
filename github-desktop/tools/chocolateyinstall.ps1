$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/1.6.0-a2c1bb8f/GitHubDesktopSetup.exe'
  checksum       = '4A530C6EFE2B4E25C79C8218FBAE9D90A4609B88DED91C9F5861099279153A29'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
