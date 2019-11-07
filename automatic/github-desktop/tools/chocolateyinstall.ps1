$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.2.3-3e4755f1/GitHubDesktopSetup.exe'
  checksum       = '18f7d64dc701ef21512228cad2f468928dbc63c5e13530ec7c8ca2f5e409719a'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
