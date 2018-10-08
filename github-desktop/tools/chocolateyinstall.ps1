$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/1.4.2-e61693a1/GitHubDesktopSetup.exe'
  checksum       = '3BE2A7FA5E342D5677C6B55C7EDA2977302C8F13C54056D127B0AB660F47FBA3'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs