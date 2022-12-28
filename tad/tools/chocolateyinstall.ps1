$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/antonycourtney/tad/releases/download/v0.11.0/Tad-Setup-0.11.0.exe'
  silentArgs     = "/S"
  checksum       = '5F8D00C4DB6E66E9D644ABB0A73F5331A6DEF86433F68324852F2D81661D3820'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'tad*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
