$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.1.0-80e9992d/GitHubDesktopSetup.exe'
  checksum       = '21254975F1C1CE3317B72624CE56ADF50E1114AC23E65E6C0989120EA1036CC1'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
