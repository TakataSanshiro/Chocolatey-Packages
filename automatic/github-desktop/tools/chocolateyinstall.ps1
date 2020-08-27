$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.5.4-ebf46061/GitHubDesktopSetup.exe'
  checksum       = 'eef4052ac0230d4f3db097ed5509e59f82aeb6ade6614c7dac21957f724ff68c'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
