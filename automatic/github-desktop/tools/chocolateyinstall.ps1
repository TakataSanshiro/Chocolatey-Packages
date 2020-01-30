$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.3.1-8a055015/GitHubDesktopSetup.exe'
  checksum       = '07c39fd21034175fef16c9382e8b01e4cc43b814ee69d5a91c58d4fd80f08af8'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
