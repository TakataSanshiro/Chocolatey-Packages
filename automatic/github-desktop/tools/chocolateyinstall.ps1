$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.4.0-568b4113/GitHubDesktopSetup.exe'
  checksum       = '7f78732ac8e58eb8280e46cec2b8b1615043299992cd2daa1d92b7290f04ae62'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
