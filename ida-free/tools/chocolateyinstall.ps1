$ErrorActionPreference = 'Stop';

$packageName = 'ida-free'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://out7.hex-rays.com/files/idafree70_windows.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  silentArgs  = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  softwareName  = '*idafree*'
  checksum      = '970AAF1F535F4285D73666DAD587C6CDD300E0E21A4E3C04FD1D2D663BD1C208'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs