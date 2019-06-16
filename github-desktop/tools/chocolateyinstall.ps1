$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.0.4-e6bc8f89/GitHubDesktopSetup.exe'
  checksum       = 'B66763BB99BC775E5C6239EFA09E10655DC9FA5CFE358D595B7EA103FAE7935F'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
