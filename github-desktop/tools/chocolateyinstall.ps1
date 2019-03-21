$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/1.6.5-b8b05c40/GitHubDesktopSetup.exe'
  checksum       = '03B0987479338294909BBBF99E72A05003A23A1B47C645193C7BB0C4458F6025'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
