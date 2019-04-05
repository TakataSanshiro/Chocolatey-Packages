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
  checksum      = '4C96E3AE2B33D5D69F338E332B548410252A89092A0305335705BE650162C3CE'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs