$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://dl.enpass.io/stable/windows/setup/6.9.3.1593/Enpass-setup.exe'
  silentArgs     = '/quiet /norestart'
  checksum       = 'd8155f14c94d301d8fb0706c71caf447381e698a2da106734254c10e9cac14dc'
  checksumType   = 'sha256'
  validExitCodes = @(0)
  softwareName   = 'enpass*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
