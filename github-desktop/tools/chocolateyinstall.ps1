$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/2.2.1-6f192f11/GitHubDesktopSetup.exe'
  checksum       = 'A4569D31AE53B07074CFE86BB6B04E1EB1F04D43FACA67C46473CE8DD59E8AC5'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs
