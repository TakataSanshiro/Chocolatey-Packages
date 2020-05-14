$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.5.0-736ef366/GitHubDesktopSetup.exe'
  checksum       = '07cdada1f5dc04bf9a0f62fb25f40398a5994cb0af2e074c1030c7b06e854eb4'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
