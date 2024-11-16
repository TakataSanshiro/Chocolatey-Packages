$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://www.enpass.io/download/windows/website/stable'
  silentArgs     = '/quiet /norestart'
  checksum       = '59A2C28EDF4CB327F12CF9C1763CAA901F871396B1BDBCEF03CB09DC829016A8'
  checksumType   = 'sha256'
  validExitCodes = @(0)
  softwareName   = 'enpass*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
