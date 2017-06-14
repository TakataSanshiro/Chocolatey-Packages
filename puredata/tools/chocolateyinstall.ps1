$ErrorActionPreference = 'Stop';

$packageName = 'puredata'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://msp.ucsd.edu/Software/pd-0.47-1.windows-installer.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  silentArgs  = "/S"
  softwareName  = '*puredata*'
  checksum      = 'CF9BA0D009ACFBB1914F9C50E4E24F9465327B85BB3445609C1478AB1C7A3BB6'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs