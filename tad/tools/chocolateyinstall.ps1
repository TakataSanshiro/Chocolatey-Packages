$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url            = 'https://github.com/antonycourtney/tad/releases/download/v0.10.1/Tad-Setup-0.10.1.exe'
  silentArgs     = "/S"
  checksum       = '08C4E3E979DD1DC98FB162D70CF504D966556704E0151C026F9056E7B41E73F8'
  checksumType   = 'sha256'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'tad*'
  toolsDir       = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
