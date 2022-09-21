$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://github.com/coyim/coyim/releases/download/v0.4.1/CoyIM.Installer.exe'
  checksum       = 'b382e18f08d8b890bfa73f88adadd26c2f01f830ce1728dc1f97b380025c27bd'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'CoyIM'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
