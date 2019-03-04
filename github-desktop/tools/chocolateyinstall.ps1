$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/1.6.2-f9fea0e6/GitHubDesktopSetup.exe'
  checksum       = '3FBD38B94EE2E4CD22E9DD866D7D8477B077E46941C7B616DC534A871A92B6C9'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
