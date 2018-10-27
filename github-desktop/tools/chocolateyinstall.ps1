$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'github-desktop'
  installerType  = 'exe'
  url            = 'https://desktop.githubusercontent.com/releases/1.4.3-f0beb6ed/GitHubDesktopSetup.exe'
  checksum       = 'D52278949149C38ED64CDCD3651EE84BB4DA8FCBA4C39F8AD9BCF68F4228E95A'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'GitHub Desktop'
}
Install-ChocolateyPackage @packageArgs