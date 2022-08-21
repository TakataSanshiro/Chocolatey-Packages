$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://www.nirsoft.net/utils/produkey_setup.exe'
  checksum       = 'f46cd7bb5f4ddf320b8618e5d567e2242c5f4bb6db0f219b44113b288758420d'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'produkey*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
