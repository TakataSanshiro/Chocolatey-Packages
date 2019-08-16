$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.1.1-b60dc229/GitHubDesktopSetup.exe'
  checksum       = '6E85ABA5931128959DCDA5EE57EFB5C8DAAB4910F5D33F646C429A477EEB9E10'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
