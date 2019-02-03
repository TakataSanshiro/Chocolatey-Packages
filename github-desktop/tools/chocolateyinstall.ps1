$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/1.6.1-2e2f9d3e/GitHubDesktopSetup.exe'
  checksum       = '79A21ABB83E73814FFB91D316062DD4884E9556F52FA2E2D8D90AC9A34ADC698'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
