$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://www.enpass.io/download/windows/website/stable'
  silentArgs     = '/quiet /norestart'
  checksum       = 'DB92C6EB6315A414F31A9334F77F59340E8448DBA82A8E1DF4BB7235ABB2D0F1'
  checksumType   = 'sha256'
  validExitCodes = @(0)
  softwareName   = 'enpass*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
