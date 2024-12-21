$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://www.enpass.io/download/windows/website/stable'
  silentArgs     = '/quiet /norestart'
  checksum       = '9BB7703F764BC5F412094595D2C2CD6C6D6B1D2FE7BCDDC7DDD81F0435D582B6'
  checksumType   = 'sha256'
  validExitCodes = @(0)
  softwareName   = 'enpass*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
