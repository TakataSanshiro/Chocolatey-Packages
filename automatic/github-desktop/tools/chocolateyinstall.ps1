$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.4.1-aae6e805/GitHubDesktopSetup.exe'
  checksum       = '823ff08b370858094f21f1b262ea5fce17a4ef55056490efd504bfd87c4bf7c9'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
