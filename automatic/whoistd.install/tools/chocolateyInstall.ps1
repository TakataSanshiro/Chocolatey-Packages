$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  installerType  = 'exe'
  url            = 'https://www.nirsoft.net/utils/whoistd_setup.exe'
  checksum       = '355caf9d250634c7f3d15d59ed3be676b61030568b21b2f29a5d1006c3028a9c'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'WhoisThisDomain*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
