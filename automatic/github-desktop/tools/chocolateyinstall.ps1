$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.4.2-aee5caae/GitHubDesktopSetup.exe'
  checksum       = '2a8efe739ae89e299c2ba7af257b23cf7b3a300afc3c7d28aa5c8f2ff48b1630'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
