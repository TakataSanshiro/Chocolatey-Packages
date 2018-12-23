$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/1.5.1-b1e34b0f/GitHubDesktopSetup.exe'
  checksum       = '3A2312627E43F84200D01200B8FB128F774B2631509EBBDC96061E2313CB79A0'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
