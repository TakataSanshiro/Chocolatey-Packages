$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://www.enpass.io/download/windows/website/stable'
  silentArgs     = '/quiet /norestart'
  checksum       = '082BB5373E12B6C6582C538EA3B1BC81770862482C52C4AB336CC2BBD0335DC9'
  checksumType   = 'sha256'
  validExitCodes = @(0)
  softwareName   = 'enpass*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
