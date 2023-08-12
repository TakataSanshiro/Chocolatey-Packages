$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://dl.enpass.io/stable/windows/setup/6.9.0.1465/Enpass-setup.exe'
  silentArgs     = '/quiet /norestart'
  checksum       = 'e81da116260d5bbf0154e5b1f5b5a0a9d1edc3c0dfd015a28847e40d1baa8800'
  checksumType   = 'sha256'
  validExitCodes = @(0)
  softwareName   = 'enpass*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
