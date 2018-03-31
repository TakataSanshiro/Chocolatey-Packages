$ErrorActionPreference = 'Stop';

$packageName = 'puredata'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://msp.ucsd.edu/Software/pd-0.48-1.windows-installer.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  silentArgs  = "/S"
  softwareName  = '*puredata*'
  checksum      = '394DB06AE1BD775773288090E3D81978D5A482AE735A01502A10820A3DA35DFE'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs