$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://www.enpass.io/download/windows/website/stable'
  silentArgs     = '/quiet /norestart'
  checksum       = '241CE7AF842C5D24FF255F9DF2C123DC42B5A6FB972F3120C4D86A40AD86F758'
  checksumType   = 'sha256'
  validExitCodes = @(0)
  softwareName   = 'enpass*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
