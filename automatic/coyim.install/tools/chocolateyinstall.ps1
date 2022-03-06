$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://github.com/coyim/coyim/releases/download/v0.4/CoyIM.Installer.exe'
  checksum       = '5710b4634e2ee4c857e0c4f28cd68f5435faa983af9ebe0d4afd2d5c29935669'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'CoyIM'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
