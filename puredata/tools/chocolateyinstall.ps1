$ErrorActionPreference = 'Stop';

$packageName = 'puredata'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://msp.ucsd.edu/Software/pd-0.49-0.windows-installer.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  silentArgs  = "/S"
  softwareName  = '*puredata*'
  checksum      = 'EC3B60668826F4C2C3B092AA6C441A83A71FE3524B135F395D4015C6B8A1F5FC'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs