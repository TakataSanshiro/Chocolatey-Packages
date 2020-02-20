$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'monosnap'
  fileType       = 'msi'
  url            = 'https://static.monosnap.com/windows/Monosnap.4.1.1.msi?web'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'monosnap*'
  checksum       = 'FED271AFC6BFC583C1D350B1C07FE12FD3B218F5D0D2DC13FC62B1EA9A1550D6'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
