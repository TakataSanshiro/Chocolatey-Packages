$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'elements'
  installerType  = 'exe'
  url            = 'https://github.com/FlorianFe/Elements/releases/download/v1.2.1/Elements.exe'
  checksum       = '64ac745aa65b96491e70ca0d71e6ef16eb1a0f3708568f09d2be7d507d83540a'
  checksumType   = 'sha256'
  silentArgs     = '/S /nolaunch'
  validExitCodes = @(0)
  softwareName   = 'Elements'
}
Install-ChocolateyPackage @packageArgs
