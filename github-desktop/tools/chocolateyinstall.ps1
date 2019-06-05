$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.0.0-9b74197f/GitHubDesktopSetup.exe'
  checksum       = '5662EC5997A0CD03BABCC277BFD99D2EDB882CE0FD86863565FE2D98AD3ADD51'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
