$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'whale'
  installerType  = 'exe'
  url            = 'https://github.com/1000ch/whale/releases/download/v1.3.0/Whale.Setup.1.3.0.exe'
  checksum       = 'facfae602e6d9df4317700c59a126b9fe5a6b44467cd18e6fdef173f78e5f8c0'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Whale'
}
Install-ChocolateyPackage @packageArgs
