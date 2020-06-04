$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.5.2-41e70ee4/GitHubDesktopSetup.exe'
  checksum       = 'f147db69d318523c7ff3e311a0bd3e20af80aaee1776c984de40f0fc12ba7546'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
