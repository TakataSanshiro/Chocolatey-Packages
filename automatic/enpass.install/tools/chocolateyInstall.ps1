$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://dl.enpass.io/stable/windows/setup/6.9.2.1563/Enpass-setup.exe'
  silentArgs     = '/quiet /norestart'
  checksum       = 'd9f8462a8ce909e5fe0f407583a587d2c3ab82b9eb20a88825dc5b991664a5be'
  checksumType   = 'sha256'
  validExitCodes = @(0)
  softwareName   = 'enpass*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
