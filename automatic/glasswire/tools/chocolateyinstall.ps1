$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'glasswire'
  installerType  = 'exe'
  url            = 'https://download.glasswire.com/GlassWireSetup.exe'
  checksum       = '916cd2f3ed8b599f7ace7639dc6763b272fdb21805f33da5b72b446899aa1c22'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Glasswire*'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
