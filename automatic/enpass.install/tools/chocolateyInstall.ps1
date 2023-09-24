$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://dl.enpass.io/stable/windows/setup/6.9.1.1515/Enpass-setup.exe'
  silentArgs     = '/quiet /norestart'
  checksum       = '0a2a30b02f0b81538794310cc234f2416d02b8e849747592ae3fbfdd23c039bb'
  checksumType   = 'sha256'
  validExitCodes = @(0)
  softwareName   = 'enpass*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
