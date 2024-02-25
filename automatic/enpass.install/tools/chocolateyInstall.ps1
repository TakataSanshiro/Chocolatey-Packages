$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://dl.enpass.io/stable/windows/setup/6.9.4.1629/Enpass-setup.exe'
  silentArgs     = '/quiet /norestart'
  checksum       = 'ad70286f3aa54714f525745167a11c7314d4d9c113e257398486552a635e6e49'
  checksumType   = 'sha256'
  validExitCodes = @(0)
  softwareName   = 'enpass*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
