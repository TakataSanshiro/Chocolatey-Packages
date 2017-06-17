$ErrorActionPreference = 'Stop';

$packageName = 'ida-free'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://out7.hex-rays.com/files/idafree50.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  silentArgs  = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  softwareName  = '*idafree*'
  checksum      = '8F83BA2B2173BBC3158300FA9E06AC3DC23165E6DB6B67F9F0ABA704C719EAF4'
  checksumType  = 'sha256'
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs