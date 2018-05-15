$ErrorActionPreference = 'Stop';

$packageName = 'tad'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/antonycourtney/tad/releases/download/v0.8.5/Tad.Setup.0.8.5.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  silentArgs  = "/S"
  softwareName  = '*tad*'
  checksum      = 'A853ACC1CAB5BFF3D79423A7B99F4C42C773E618FA7653594FFE71DD9370E1EA'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs