$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.2.0-2beb5d52/GitHubDesktopSetup.exe'
  checksum       = '9907B6AFF6B2B72DCE83FD1B44FAA6F40E735222E65C7570BF6D609E395C84F5'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
