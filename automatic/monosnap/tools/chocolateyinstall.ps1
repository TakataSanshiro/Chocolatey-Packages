$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'monosnap'
  fileType       = 'msi'
  url            = 'https://static.monosnap.com/windows/Monosnap.4.1.0.msi?web'
  silentArgs     = '/quiet'
  validExitCodes = @(0)
  softwareName   = 'monosnap*'
  checksum       = 'ec66c11fb70a69823b56611dced480cd96e0ffa440bed2dfa49ccd6dd1305b94'
  checksumType   = 'sha256'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
