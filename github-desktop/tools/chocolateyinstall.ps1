$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.2.2-5a1cfa2d/GitHubDesktopSetup.exe'
  checksum       = 'EBD6ED594F58FAA456706127335BD36238CC4A557AA4B3EA74B8381D929BF385'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
